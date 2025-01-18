class UpdateAssignmentStatusInAssignmentsToInteger < ActiveRecord::Migration[7.2]
  def change
    remove_column :assignments, :assignment_status
    add_column :assignments, :assignment_status, :integer, default: 0, null: false
  end
end
