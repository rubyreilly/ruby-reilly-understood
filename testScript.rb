require 'rest-client'
require 'json'


# list all animals
def listAllAnimals
  response = RestClient.get "http://localhost:3000/animals"
  list = JSON.parse(response)
  list.map do |animal|
    puts animal
    # puts animal.values_at('animal_type')
  end
end

# get one animal
def getOneAnimal(int)
  animal = RestClient.get "http://localhost:3000/animals/#{int}"
  puts animal
end

#post an animal
def postNewAnimal(new_animal)
  response = RestClient.post("http://localhost:3000/animals/" , {:animal=>{:animal_type=>new_animal}})
  puts response
end

#update existing animal
def updateAnimal(int)
  RestClient.put("http://localhost:3000/animals/#{int}" , {:animal=>{:animal_type=>'bug'}})
  result = RestClient.get "http://localhost:3000/animals/#{int}"
  puts result
end

#delete one animal
def deleteOneAnimal(int)
  # RestClient.get "http://localhost:3000/animals/#{int}"
  RestClient.delete "http://localhost:3000/animals/#{int}"
  # result = RestClient.get "http://localhost:3000/animals/#{int}"
  # puts result
end

# postNewAnimal('dog')
# postNewAnimal('lizard')
# postNewAnimal('bird')
# postNewAnimal('cat')
# postNewAnimal('frog')
# postNewAnimal('sheep')
# postNewAnimal('giraffe')
# postNewAnimal('monkey')
# postNewAnimal('lion')
# postNewAnimal('snake')
# postNewAnimal('bear')
# postNewAnimal('turtle')


#list all animals
listAllAnimals()

#get one specific record
getOneAnimal(1)
#update it
updateAnimal(1)
#delete it
deleteOneAnimal(1)


#create new record
postNewAnimal('zebra')
