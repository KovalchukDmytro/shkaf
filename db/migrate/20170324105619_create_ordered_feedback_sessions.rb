class CreateOrderedFeedbackSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :ordered_feedback_sessions do |t|
      t.string :username
      t.string :phone_numder
      t.string :description
      t.timestamps :time_of_order
    end
  end
end
