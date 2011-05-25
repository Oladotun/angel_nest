class TargetFollower < ActiveRecord::Base
  belongs_to :user,     :foreign_key => :follower_id
  belongs_to :follower, :polymorphic => true, :counter_cache => :followers_count
  belongs_to :target,   :polymorphic => true, :counter_cache => :followings_count
end
