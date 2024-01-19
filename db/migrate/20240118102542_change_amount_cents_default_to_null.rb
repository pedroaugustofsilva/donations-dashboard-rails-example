class ChangeAmountCentsDefaultToNull < ActiveRecord::Migration[7.2]
  def change
    change_column_default :donations, :amount_cents, from: 0, to: nil
  end
end
