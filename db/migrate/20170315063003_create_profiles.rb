class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string  :name,            null: false
      t.text  :current_job,        null: false
      t.text  :past_job,           null: false
      t.text  :business_skill,     null: false
      t.text  :private_skill,     null: false
      t.text  :business_connection,  null: false
      t.text  :private_connection,   null: false
      t.text  :qualification,      null: false

      t.timestamps null: false
    end
  end
end
