class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :company_name
      t.string :company_url

      t.timestamps
    end
  end
end
