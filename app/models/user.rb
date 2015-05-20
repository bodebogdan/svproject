class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    belongs_to :role
  def cart_count
    $redis.scard "cart#{id}"
  end

  before_save :set_role

  def set_role
  	role=Role.find_by(name:"Regular") unless role.nil?
  end
end
