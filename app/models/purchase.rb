class Purchase < ApplicationRecord
  belongs_to :user

  monetize :amount_cents, with_model_currency: :currency

  def currency
    if ENV['SHOW_BROKEN'] == 'true'
      user.currency
      'IDR'
    else
      'IDR'
    end
  end
end
