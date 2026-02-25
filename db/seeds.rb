puts "Cleaning database..."

User.destroy_all
Message.destroy_all
Event.destroy_all

puts "Database cleaned"

test_user = User.create({
  email: "test@gmail.com",
  password: "123456"
})

puts "#{test_user.email} Created"

Message.create!([
  { title: "Tournament Director", subject: "US Open Assignment Confirmation", read: false, created_at: 2.hours.ago },
  { title: "WSO Admin", subject: "New Rules Update Available", read: false, created_at: 5.hours.ago },
  { title: "Regional Coordinator", subject: "Training Session Scheduled", read: true, created_at: 22.hours.ago }
])

puts "Messages Created"

Event.create!([
  { name: "US Open Championships", start_date: "2026-06-15", end_date: "2026-06-19", level: :international, location: "Philadelphia, USA", role: "Assistant Referee" },
  { name: "British Open", start_date: "2026-03-08", end_date: "2026-03-12", level: :international, location: "Birmingham, UK", role: "Assistant Referee" },
  { name: "Regional Championships", start_date: "2026-05-05", end_date: "2026-05-07", level: :regional, location: "Derby, UK", role: "Lead Referee" },
  { name: "Summer Series", start_date: "2026-07-15", end_date: "2026-07-17", level: :national, location: "Leeds, UK", role: "Lead Referee" }
])

puts "Events Created"
