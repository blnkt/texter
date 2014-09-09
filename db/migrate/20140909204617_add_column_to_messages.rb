class AddColumnToMessages < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.string :media_url
    end
  end
end
