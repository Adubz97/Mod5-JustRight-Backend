require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Offer.destroy_all
Job.destroy_all
JobPost.destroy_all
Experience.destroy_all
Appointment.destroy_all

user_caregiver = User.all.find_all {|user| user.client == false }
user_client = User.all.find_all {|user| user.client == true }

User.create([
{
            first_name: "Abdullah",
            last_name: "Albasha",
            username: "Abdullah1",
            password: "Abdullah123",
            address: "14909 health center dr",
            phone: "3012622626",
            gender: "Male",
            age: "23",
            email: "Abdullah.A.Albasha@gmail.com",
            image: "",
            client: true
},
{
            first_name: "Penn",
            last_name: "Diba",
            username: "Penn1",
            password: "Penn123",
            address: "4669 34th st N, Arlington, VA",
            phone: "3015955959",
            gender: "Male",
            age: "22",
            email: "Penn@gmail.com",
            image: "",
            client: false
},
{
            first_name: "Kristian",
            last_name: "Portillo",
            username: "Kristian1",
            password: "Kristian",
            address: "Bethesda, MD",
            phone: "3015858585",
            gender: "Male",
            age: "20",
            email: "Portillok@gmail.com",
            image: "",
            client: false
},
{
            first_name: "Steven",
            last_name: "Lee",
            username: "Steven1",
            password: "LeeSteven134",
            address: "VA",
            phone: "3015255252",
            gender: "Male",
            age: "25",
            email: "StevenLee@gmail.com",
            image: "",
            client: false
},

])

user_caregiver = User.all.find_all {|user| user.client == false }
user_client = User.all.find_all {|user| user.client == true }

Job.create([
  {
    subject: "Math"
  },
  {
    subject: "Chemistry"
  },
  {
    subject: "Biology"
  },
  {
    subject: "History"
  },
  {
    subject: "English"
  },
  {
    subject: "physics"
  },
  {
    subject: "Grammer & Writing"
  },
  {
    subject: "Spanish"
  }

])

JobPost.create([
  {
    user_id: User.all.sample.id,
    job_id: Job.all.sample.id,
    title: "Looking for a Math tutor !",
    description: "I am looking for a math tutor to help my kid ,with algebra, he is struggling and has an upcoming exam.",
    payrate: "$17/hr"
  },
  {
    user_id: User.all.sample.id,
    job_id: Job.all.sample.id,
    title: "Need a babySitter for tonight !",
    description: "whatever, I am lazy",
    payrate: "$20/hr"
  }
])
# byebug
Offer.create([
  {
    caregiver_id: user_caregiver.sample.id,
    job_post_id: JobPost.all.sample.id,
    description: "whatever, I am lazy"
  },
  {
    caregiver_id: user_caregiver.sample.id,
    job_post_id: JobPost.all.sample.id,
    description: "okay"
  },
  {
    caregiver_id: user_caregiver.sample.id,
    job_post_id: JobPost.all.sample.id,
    description: "I am interested"
  },

])

Experience.create([
  {
    caregiver_id: user_caregiver.sample.id,
    job_id: Job.all.sample.id,
    years_of_experience: 2
  },
  {
    caregiver_id: user_caregiver.sample.id,
    job_id: Job.all.sample.id,
    years_of_experience: 3
  },
  {
    caregiver_id: user_caregiver.sample.id,
    job_id: Job.all.sample.id,
    years_of_experience: 4
  },
  {
    caregiver_id: user_caregiver.sample.id,
    job_id: Job.all.sample.id,
    years_of_experience: 5
  }
])

Appointment.create([

  {
    job_post_id: JobPost.all.sample.id,
    offer_id: Offer.all.sample.id,
    start_time: "2:00 pm",
    end_time: "3:00 pm",
    location: "somwhere"
  },
  {
    job_post_id: JobPost.all.sample.id,
    offer_id: Offer.all.sample.id,
    start_time: "2:00 pm",
    end_time: "3:00 pm",
    location: "somwhere"
  },
  {
    job_post_id: JobPost.all.sample.id,
    offer_id: Offer.all.sample.id,
    start_time: "2:00 pm",
    end_time: "3:00 pm",
    location: "somwhere"
  },
  {
    job_post_id: JobPost.all.sample.id,
    offer_id: Offer.all.sample.id,
    start_time: "2:00 pm",
    end_time: "3:00 pm",
    location: "somwhere"
  },
  {
    job_post_id: JobPost.all.sample.id,
    offer_id: Offer.all.sample.id,
    start_time: "2:00 pm",
    end_time: "3:00 pm",
    location: "somwhere"
  }
])



