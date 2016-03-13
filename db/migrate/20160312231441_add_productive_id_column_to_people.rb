class AddProductiveIdColumnToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :productive, index: true, foreign_key: true
  end
end
