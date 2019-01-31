class AddIndexDogStrolls < ActiveRecord::Migration[5.2]
  def change
  	create_table :dogs_strolls, id: false do |t|
    t.belongs_to :dog, index:true
    t.belongs_to :stroll, index:true
    end
  end
end
