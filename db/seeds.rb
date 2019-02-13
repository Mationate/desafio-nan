Proyect.destroy_all
Person.destroy_all

10.times do |i|
 Proyect.create(
   name: "Proyect #{i+1}",
   description: 'asdf',
   budget: rand(100000..100000000)
 )
end

20.times do |i|
 Person.create(
   name: "Person #{i+1}",
   email: "person#{i+1}@hotmail.com",
   ocupation: "Job #{i+1}"
 )
end