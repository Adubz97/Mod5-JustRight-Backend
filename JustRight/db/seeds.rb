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
# Job.destroy_all
JobPost.destroy_all
# Experience.destroy_all
Appointment.destroy_all

# user_caregiver = User.all.find_all {|user| user.client == false }

# user_client = User.all.find_all {|user| user.client == true }

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
            image: "../../assets/Profile Picture.png",
            client: true,
            tutor: false,
            babysitter: false,
            years_of_experience: 1
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
            image: "../../assets/Penn.jpeg",
            client: false,
            tutor: false,
            babysitter: true,
            years_of_experience: 5
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
            image: "../../assets/Steven.png",
            client: false,
            tutor: true,
            babysitter: true,
            years_of_experience: 12
},
{
            first_name: "Christina",
            last_name: "Sohn",
            username: "Christina1",
            password: "Sohn",
            address: "Virginia",
            phone: "3015255252",
            gender: "female",
            age: "30",
            email: "chsohn@gmail.com",
            image: "../../assets/Christina.png",
            client: false,
            tutor: true,
            babysitter: true,
            years_of_experience: 8
},
{
            first_name: "Catrina",
            last_name: "Friday",
            username: "Catrina",
            password: "Friday123",
            address: "DC",
            phone: "3015255252",
            gender: "female",
            age: "34",
            email: "FridayCatrina@gmail.com",
            image: "../../assets/Catrina.png",
            client: false,
            tutor: false,
            babysitter: true,
            years_of_experience: 12
},
{
            first_name: "Sanam",
            last_name: "Malik",
            username: "Sanam1",
            password: "Malik",
            address: "Virginia",
            phone: "3015255252",
            gender: "Male",
            age: "27",
            email: "SanamMalik@gmail.com",
            image: "../../assets/Sanam.png",
            client: false,
            tutor: true,
            babysitter: true,
            years_of_experience: 5
},
{
            first_name: "Solomon",
            last_name: "Yismaw",
            username: "solomn1",
            password: "Yismaw",
            address: "Virginia",
            phone: "3015255252",
            gender: "Male",
            age: "34",
            email: "SolomonYismaw@gmail.com",
            image: "../../assets/Solomon.png",
            client: false,
            tutor: false,
            babysitter: true,
            years_of_experience: 3
},
{
            first_name: "Roan",
            last_name: "Bascoe",
            username: "Roan1",
            password: "Bascoe",
            address: "Washington, DC",
            phone: "3015255252",
            gender: "Male",
            age: "29",
            email: "RoanBascoe@gmail.com",
            image: "../../assets/Roan.png",
            client: false,
            tutor: true,
            babysitter: false,
            years_of_experience: 4
},
{
            first_name: "Kosi",
            last_name: "Akporgi",
            username: "Kosi1",
            password: "Akporgi",
            address: "Washington, DC",
            phone: "3015255252",
            gender: "Male",
            age: "29",
            email: "KosiAkporgi@gmail.com",
            image: "../../assets/kosi.png",
            client: false,
            tutor: true,
            babysitter: true,
            years_of_experience: 4
},
{
            first_name: "Claudia",
            last_name: "Borghini",
            username: "Claudia1",
            password: "Borghini",
            address: "Washington, DC",
            phone: "3015255252",
            gender: "Male",
            age: "29",
            email: "ClaudiaBorghini@gmail.com",
            image: "../../assets/Claudia.png",
            client: false,
            tutor: true,
            babysitter: true,
            years_of_experience: 6
}

])

user_caregiver = User.all.find_all {|user| user.client == false }
user_client = User.all.find_all {|user| user.client == true }

# Job.create([
#   {
#     type: "Math"
#   },
#   {
#     type: "Chemistry"
#   },
#   {
#     type: "Biology"
#   },
#   {
#     type: "History"
#   },
#   {
#     type: "English"
#   },
#   {
#     type: "physics"
#   },
#   {
#     type: "Grammer & Writing"
#   },
#   {
#     type: "Spanish"
#   },
#   {
#     type: "babysitter"
#   }

# ])

jobs_type = ["Math", "Chemistry", "Biology", "History", "English","physics", "Grammer & Writing", "Spanish", "babysitter"]
# byebug

JobPost.create(

    client_id: user_client.sample.id,
    job_type: jobs_type.sample,
    title: "Need a Math tutor !",
    description: "I am looking for a math tutor to help my kid ,with algebra, he is struggling and has an upcoming exam.",
    payrate: "$17/hr"
)

JobPost.create(
    client_id: user_client.sample.id,
    job_type: jobs_type.sample,
    title: "Need a babySitter for tonight !",
    description: "I would like a babysitter that is willing to take care of my child for 6 hours Thursday night ",
    payrate: "$20/hr"
)
# byebug
Offer.create([
  {
    caregiver_id: user_caregiver.sample.id,
    job_post_id: JobPost.all.sample.id,
    description: "I am more than happy to help ",
    payrate: "$20"
  },
  {
    caregiver_id: user_caregiver.sample.id,
    job_post_id: JobPost.all.sample.id,
    description: "I can do that ",
    payrate: "$20"
  },
  {
    caregiver_id: user_caregiver.sample.id,
    job_post_id: JobPost.all.sample.id,
    description: "I am interested !",
    payrate: "$20"
  },

])

# Experience.create([
#   {
#     caregiver_id: user_caregiver.sample.id,
#     job_id: Job.all.sample.id,
#     years_of_experience: 2
#   },
#   {
#     caregiver_id: user_caregiver.sample.id,
#     job_id: Job.all.sample.id,
#     years_of_experience: 3
#   },
#   {
#     caregiver_id: user_caregiver.sample.id,
#     job_id: Job.all.sample.id,
#     years_of_experience: 4
#   },
#   {
#     caregiver_id: user_caregiver.sample.id,
#     job_id: Job.all.sample.id,
#     years_of_experience: 5
#   }
# ])

Appointment.create([
  {
    job_post_id: JobPost.all.sample.id,
    offer_id: Offer.all.sample.id,
    start_time: "2:00 pm",
    end_time: "3:00 pm",
    location: "somewhere"
  }
])



