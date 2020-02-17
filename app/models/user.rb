class User < ApplicationRecord
  has_many :tareas
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_attached_file :image
   validates_attachment_content_type :image, content_type: /\Aimage/
   validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
   do_not_validate_attachment_file_type :image
end
