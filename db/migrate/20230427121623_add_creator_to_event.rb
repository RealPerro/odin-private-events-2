class AddCreatorToEvent < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :user, null: false
  end
end
