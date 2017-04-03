class CreateContactForFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_for_feedbacks do |t|
      t.string :name
      t.string :value
    end
  end
end
