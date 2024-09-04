# db/seeds.rb

# Create Users
user1 = User.create(name: 'Alice Smith', email: 'alice.smith@example.com')
user2 = User.create(name: 'Bob Johnson', email: 'bob.johnson@example.com')

# Create Orders for User 1
Order.create(user: user1, amount: 100.0, status: 'pending')
Order.create(user: user1, amount: 150.0, status: 'completed')

# Create Orders for User 2
Order.create(user: user2, amount: 200.0, status: 'shipped')
Order.create(user: user2, amount: 250.0, status: 'pending')

puts "Seed data created!"
