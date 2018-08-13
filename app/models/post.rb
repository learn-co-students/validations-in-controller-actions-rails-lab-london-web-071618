class Post < ActiveRecord::Base
    validates :title, presence: true,  uniqueness: true
    validates :content, length: {minimum: 100}
    validates_inclusion_of :category, :in => ['Fiction', 'Non-Fiction']

end
