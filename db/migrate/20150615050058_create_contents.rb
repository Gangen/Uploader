class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :filename
      t.binary :file

      t.timestamps
    end
  end
end
