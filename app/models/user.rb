require 'carrierwave/orm/activerecord'
class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :remember_me, :avatar, :avatar_cache, :remove_avatar

  #validates_presence_of   :avatar
  #validates_integrity_of  :avatar
  #validates_processing_of :avatar


end
