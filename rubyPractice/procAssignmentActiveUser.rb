# Creating a list of users
users = [
  {
    name: "Kshitij",
    status: "active",
    last_login_days_ago: 2
  },
  {
    name: "Arjun",
    status: "active",
    last_login_days_ago: 15
  },
  {
    name: "Prince",
    status: "suspended",
    last_login_days_ago: 3
  },
  {
    name: "Aryan",
    status: "suspended",
    last_login_days_ago: 3
  },
  {
    name: "Priyanka",
    status: "active",
    last_login_days_ago: 5
  }
]

# Defining an active user
active_user = ->(user) do
  user[:status] == "active" &&
    user[:last_login_days_ago] <= 7
end

# Finding all active users
active_users = users.select(&active_user)

# Displaying active users
puts "Active users:"

active_users.each do |user|
  puts user[:name]
end