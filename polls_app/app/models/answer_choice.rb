# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer          not null
#  option      :string           not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord 
  validates :option, presence: true, uniqueness: true
   
  belongs_to :question,
    class_name: :Question,
    foreign_key: :question_id,
    primary_key: :id

  has_many :responses,
    class_name: :Response,
    foreign_key: :answer_choice_id,
    primary_key: :id
end 
