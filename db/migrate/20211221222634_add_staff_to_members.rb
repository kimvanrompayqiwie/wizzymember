class AddStaffToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :staff, :boolean
  end
end
