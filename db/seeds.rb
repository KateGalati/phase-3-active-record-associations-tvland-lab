puts 'Clearing the Database'

Actor.destroy_all
Show.destroy_all
Character.destroy_all
Network.destroy_all

puts 'Database cleared'

puts 'Creating Networks'

n1 = Network.create(call_letters: 'ABC', channel: 1)
n2 = Network.create(call_letters: 'NBC', channel: 2)
n3 = Network.create(call_letters: 'HBO', channel: 3)

puts 'Networks Created'

puts 'Creating Actors'

a1 = Actor.create(first_name: 'Lou', last_name: 'Galatz')
a2 = Actor.create(first_name: 'Mike', last_name: 'Lups')
a3 = Actor.create(first_name: 'Emily', last_name: 'Kharaz')
a4 = Actor.create(first_name: 'Julia', last_name: 'Covatts')

puts 'Actors Created'

puts 'Creating Shows'

s1 = Show.create(name: 'Bluey', day: 'Weekdays', season: 'three', genre: 'children', network: n1)
s2 = Show.create(name: 'Office', day: 'Thursdays', season: 'five', genre: 'comedy', network: n2)
s3 = Show.create(name: 'Gilmore Girls', day: 'Tuesdays', season: 'seven', genre: 'drama', network: n3)

puts 'Shows Created'

puts 'Creating Characters'

c1 = Character.create(name: 'Bluey', actor: a1, show: s1, catchphrase: 'Ohh mannnn')
c1 = Character.create(name: 'Bingo', actor: a2, show: s1, catchphrase: 'Trifficult')
c1 = Character.create(name: 'Angela', actor: a3, show: s2, catchphrase: 'I love cats')
c1 = Character.create(name: 'Lorelai', actor: a4, show: s3, catchphrase: 'Coffee Coffee Coffee')

puts 'Characters Created'