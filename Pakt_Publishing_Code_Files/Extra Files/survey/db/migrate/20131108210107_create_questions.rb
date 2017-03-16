class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :score
      t.text :comment

      t.timestamps
    end
  end
end
