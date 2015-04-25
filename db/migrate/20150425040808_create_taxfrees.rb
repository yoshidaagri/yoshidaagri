class CreateTaxfrees < ActiveRecord::Migration
  def change
    create_table :taxfrees do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :nationality_id
      t.string :nationality_name
      t.string :name
      t.string :passport
      t.date :birthday
      t.integer :sex_id
      t.integer :visastatus_id
      t.date :landingdate
      t.integer :taxfreeflg_id
      t.string :taxpaymentplace
      t.string :taxpaymentoffice
      t.text :note

      t.timestamps null: false
    end
  end
end
