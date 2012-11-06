namespace :db do
  desc "Seed users"
  task pop_users: :environment do
    User.create!(name: "Jas",
                email: "jman1211@yahoo.com",
                phone: "9192158521",
                chore_done: false,
                ref_id: 1)
    User.create!(name: "Harsh",
                email: "",#harshjshah@gmail.com",
                phone: "1",
                chore_done: false,
                ref_id: 2)
    User.create!(name: "John",
                email: "",#howardjw@gmail.com",
                phone: "1",
                chore_done: false,
                ref_id: 3)
    User.create!(name: "EMart",
                email: "",#eric.long.martin@gmail.com",
                phone: "1",
                chore_done: false,
                ref_id: 4)
    User.create!(name: "Will",
                email: "",#wgpatrick@gmail.com",
                phone: "1",
                chore_done: false,
                ref_id: 5)
    User.create!(name: "Eric",
                email: "",#ricehornet@gmail.com",
                phone: "1",
                chore_done: false,
                ref_id: 6)
  end

  desc "Fill database with chores"
  task pop_chores: :environment do
    Chore.create!(name:"Kitchen",
                  user_id: 1)
    Chore.create!(name:"Library + Entrance",
                  user_id: 2)
    Chore.create!(name:"Hallway",
                  user_id: 3)
    Chore.create!(name:"Kitchen",
                  user_id: 4)
    Chore.create!(name:"Living Room",
                  user_id: 5)
    Chore.create!(name:"Mud room",
                  user_id: 6)
  end

  end