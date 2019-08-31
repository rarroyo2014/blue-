#We are going to create a model for quotes
class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
# Customize model to display quote and author
      t.string :saying
      t.string :author
      t.timestamps
    end
  end
end
