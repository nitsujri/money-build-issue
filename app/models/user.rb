class User < ApplicationRecord
  has_many :purchases

  def currency
    'RANDOM'
  end

  def self.run_example
    ENV['SHOW_BROKEN'] = 'false'
    u = User.create(name: 'Working')

    u.purchases.build(amount: '222').tap do |p|
      puts ">>>> Set during build: #{p.amount} expected 222.0"
      p.amount = '333'
      puts ">>>> Set after build: #{p.amount} expected 333.00"
    end

    ENV['SHOW_BROKEN'] = 'true'
    u_2 = User.create(name: 'Broken')

    u_2.purchases.build(amount: '222').tap do |p|
      puts ">>>> Set during build: #{p.amount} expected 222.0"
      p.amount = '333'
      puts ">>>> Set after build: #{p.amount} expected 333.00"
    end

    nil
  end
end
