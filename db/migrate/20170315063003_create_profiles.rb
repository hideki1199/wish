class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string  :name,            null: false
      t.text  :current_job,        null: false
      t.text  :past_job,           null: false
      t.text  :youcan_job,         null: false
      t.text  :youcan_notjoc,      null: false
      t.text  :connection_notjob,  null: false
      t.text  :connection_notjob,  null: false
      t.text  :qualification,      null: false
    # ここに全カラム書いて、rake db:migrationをターミナルでうつと、テータベースが作成される。

      t.timestamps null: false
    end
  end
end
