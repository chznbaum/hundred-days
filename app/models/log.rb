class Log < ApplicationRecord
  enum status: { "Draft" => 0, "Published" => 1 }
  enum motivation: {
    "😫" => 0,
    "😖" => 1,
    "😞" => 2,
    "😕" => 3,
    "🙄" => 4,
    "😐" => 5,
    "🤔" => 6,
    "🙂" => 7,
    "😉" => 8,
    "😆" => 9
  }

  validates_presence_of :round, :day, :content, :status, :motivation, :created_at
  has_many :comments, as: :commentable

  def self.by_recent
    order("created_at DESC")
  end
end
