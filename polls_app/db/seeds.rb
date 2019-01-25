# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all

  joseph = User.create!(username: "jhspark17")
  gabriel = User.create!(username: "mullet")
  jesse = User.create!(username: "WorstCircleLeaderEver")
  elliot = User.create!(username: "BestCircleLeaderInTheWorld") 

  j1_poll = Poll.create!(author_id: 1, title: 'Why Did I Choose AppAcademy?')
  g_poll = Poll.create!(author_id: 2, title: 'Why Do Birds Suddenly Appear?')
  j2_poll = Poll.create!(author_id: 3, title: 'Why am I the BEST circle leader?')
  e_poll = Poll.create!(author_id: 4, title: 'Why is Jess the worst circle leader?')

  j1_q1 = Question.create!(body: 'What is your favorite color?', poll_id: 1)
    j1_q1_a1 = AnswerChoice.create!(question_id: 1, option: 'Blue', user_id: 1)
    j1_q1_a2 = AnswerChoice.create!(question_id: 1, option: 'Red', user_id: 1)
  j1_q2 = Question.create!(body: 'What is the meaning of life?', poll_id: 1)
    j1_q2_a3 = AnswerChoice.create!(question_id: 2, option: 'Money', user_id: 1)
    j1_q2_a4 = AnswerChoice.create!(question_id: 2, option: 'Freedom', user_id: 1)
  
  g_q1 = Question.create!(body: 'Why doesn\'t Joseph know movies?', poll_id: 2)
    g_q1_a1 = AnswerChoice.create!(question_id: 3, option: 'He\'s a cinema major.', user_id: 2)
    g_q1_a2 = AnswerChoice.create!(question_id: 3, option: 'He hates movies.', user_id: 2)
  g_q2 = Question.create!(body: 'What is a movie?', poll_id: 2)
    g_q2_a3 = AnswerChoice.create!(question_id: 4, option: 'Man! You tell me!', user_id: 2)
    g_q2_a4 = AnswerChoice.create!(question_id: 4, option: 'I really do not care.', user_id: 3)
  
  j2_q1 = Question.create!(body: 'Why am I better than Elliot?', poll_id: 3)
    j2_q1_a1 = AnswerChoice.create!(question_id: 5, option: 'I have a loud voice.', user_id: 3)
    j2_q1_a2 = AnswerChoice.create!(question_id: 5, option: 'Because of my circle.', user_id: 3)
  j2_q2 = Question.create!(body: 'Why do I love my circle soooooo much?!', poll_id: 3)
    j2_q2_a3 = AnswerChoice.create!(question_id: 6, option: 'Because Joseph is awesome!', user_id: 3)
    j2_q2_a4 = AnswerChoice.create!(question_id: 6, option: 'Because, why not?', user_id: 3)

  e_q1 = Question.create!(body: 'What do you like about me more?', poll_id: 4)
    e_q1_a1 = AnswerChoice.create!(question_id: 7, option: 'You can memorize names.', user_id: 4)
    e_q1_a2 = AnswerChoice.create!(question_id: 7, option: 'You cover for Jesse.', user_id: 4)
  e_q2 = Question.create!(body: 'Do you know that I know the meaning of life?', poll_id: 4)
    e_q2_a3 = AnswerChoice.create!(question_id: 8, option: 'Man! Don\'t lie!', user_id: 4)
    e_q2_a4 = AnswerChoice.create!(question_id: 8, option: 'Yea? Give me money!', user_id: 4)
  
  j1_r1 = Response.create!(user_id: 1, answer_choice_id: 13)
  j1_r2 = Response.create!(user_id: 1, answer_choice_id: 16)
  g_r1 = Response.create!(user_id: 2, answer_choice_id: 10)
  g_r2 = Response.create!(user_id: 2, answer_choice_id: 11)
  j2_r1 = Response.create!(user_id: 3, answer_choice_id: 6)
  j2_r2 = Response.create!(user_id: 3, answer_choice_id: 8)
  e_r1 = Response.create!(user_id: 4, answer_choice_id: 1)
  e_r2 = Response.create!(user_id: 4, answer_choice_id: 4)
end