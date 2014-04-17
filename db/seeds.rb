# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  name            :string(255)
#  title           :string(255)
#  experience      :string(255)
#  active          :boolean          default(TRUE)
#  doc_code        :string(255)
#  password_digest :string(255)
#  age             :string(255)
#  tag_line        :string(255)

doctors = [
    {
        name: 'Bodruddoza Ahmed',
        title: 'Professor Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd101',
        age: '59',
        tag_line: 'Cardiology specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Chayon Ahmed',
        title: 'Professor Dr',
        experience: '10 years',
        active: 'true',
        doc_code: 'd102',
        age: '49',
        tag_line: 'Dermatology (Skin) specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Rifat Islam',
        title: 'Professor Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd103',
        age: '59',
        tag_line: 'Cardiology specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Linkon Shahriar',
        title: 'Professor Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd104',
        age: '59',
        tag_line: 'Cardiology specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Tanvir Ahmed',
        title: 'Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd105',
        age: '59',
        tag_line: 'Cardiology specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Ahmed Moin',
        title: 'Professor Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd106',
        age: '59',
        tag_line: 'General Surgery specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Shehzad Islam',
        title: 'Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd107',
        age: '59',
        tag_line: 'Neurology (Brain & Spine) specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Purobi Ahmed',
        title: 'Professor Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd108',
        age: '59',
        tag_line: 'Cardiothoracic Surgery (Heart & Lung) specialist',
        password: '1234',
        password_confirmation: '1234'
    },
 {
        name: 'Robi Ahmed',
        title: 'Professor Dr',
        experience: '30 years',
        active: 'true',
        doc_code: 'd109',
        age: '59',
        tag_line: 'Oncology(Cancer) specialist',
        password: '1234',
        password_confirmation: '1234'
    }
]

Doctor.create! doctors
