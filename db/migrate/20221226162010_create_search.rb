class CreateSearch < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
t.string :body
      t.timestamps
    end
  end
end
