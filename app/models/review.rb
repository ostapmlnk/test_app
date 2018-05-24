class Review < ActiveRecord::Base
  belongs_to :reviewable, :polymorphic => true
  belongs_to :user
  validate :user_id1
  def user_id1
    if reviewable.is_a?(Item)
     errors.add(:reviewable, 'Must be booking') unless
         Booking.exists?(user_id: user_id, item_id: reviewable_id)
    elsif reviewable.is_a?(User)
      errors.add(:reviewable, 'Must be trading') unless User.joins(bookings: :item)
                                                  .exists?(users: { id: user_id},
                                                           items: { user_id: reviewable_id})
    end
  end
end