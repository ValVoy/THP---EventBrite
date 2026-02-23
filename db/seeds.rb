Attendance.destroy_all
Event.destroy_all
User.destroy_all

puts "Création des utilisateurs..."
user1 = User.create!(email: "jean.test@yopmail.com", encrypted_password: "password", first_name: "Jean", last_name: "Test", description: "Je suis un testeur.")
user2 = User.create!(email: "marie.test@yopmail.com", encrypted_password: "password", first_name: "Marie", last_name: "Test", description: "Moi aussi.")

puts "Création d'un événement..."
event1 = Event.create!(
  start_date: Time.now + 2.days,
  duration: 60,
  title: "Super Soirée Code",
  description: "On va coder toute la nuit avec du bon café, venez nombreux c'est super cool.",
  price: 10,
  location: "Paris",
  admin: user1
)

puts "Création d'une participation..."
Attendance.create!(stripe_customer_id: "cus_123456789", user: user2, event: event1)

puts "Base de données remplie avec succès !"