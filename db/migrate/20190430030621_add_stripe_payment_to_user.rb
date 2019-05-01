class AddStripePaymentToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :stripe_payment, :boolean
  end
end
