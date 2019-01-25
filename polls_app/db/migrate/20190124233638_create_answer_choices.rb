class CreateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.string :option, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :answer_choices, :option, unique: true
  end
end
