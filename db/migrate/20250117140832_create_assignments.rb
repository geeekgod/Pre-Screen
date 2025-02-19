class CreateAssignments < ActiveRecord::Migration[7.2]
  def change
    create_table :assignments do |t|
      t.references :test, null: false, foreign_key: true
      t.references :invitee, null: false, foreign_key: true
      t.string :status
      t.decimal :score
      t.datetime :completed_at

      t.timestamps
    end
  end
end
