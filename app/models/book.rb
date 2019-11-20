class Book < ActiveRecord::Base
  validates:Title, presence: true
  validates:ISBN, presence: true
  validates:AuthorID, presence: true
end
