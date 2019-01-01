class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.name :string
      t.uid :integer
      t.password :string
      t.timestamps null: false
    end
  end
end
