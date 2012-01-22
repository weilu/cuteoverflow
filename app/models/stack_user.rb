class StackUser < ActiveRecord::Base

  set_primary_key :remote_id
  validates :remote_id, presence: true
  attr_accessible :remote_id, :display_name, :reputation

  def self.from_remote_user_id(remote_id)
    remote_user = User.find(remote_id.to_i).attributes[:users][0]

    user = StackUser.find_or_create_by_remote_id(remote_id: remote_id)
    if user.display_name.blank?
      user.update_attributes(display_name: remote_user.display_name,
                             reputation: remote_user.reputation)
    end

    user
  end

end