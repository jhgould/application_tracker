class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.string :company_name
      t.string :position_name
      t.integer :application_status
      t.date :date_applied
      t.date :interview_date
      t.time :interview_time
      t.string :recruiter_name
      t.text :interview_rounds
      t.string :job_posting_link
      t.string :tech_stack
      t.text :notes
      t.integer :min_salary
      t.integer :max_salary
      t.boolean :stock_options
      t.boolean :bonus

      t.timestamps
    end
  end
end
