require_relative 'Linked_List'
require_relative 'Node'

LL = Linked_List.new('Dad')
LL.append('Chris')
LL.to_s
LL.prepend('Mom')
LL.append('Andrea')
LL.append('Chelsea')
LL.append('Elise')
LL.append('Eva')
LL.append('Hannah')
LL.remove_at(8) # remove Hannah
LL.insert_at(8, 'Julianna') # add JJ
puts "The size of the family is #{LL.size}"
puts "The head of the family is #{LL.head}"
puts "The youngest family member is #{LL.tail}"
puts 'Who is the 4th person in the family order?'\
"/nIt should be Andi, after Mom, Dad, and Chris. #{LL.at(4)}"
puts "JJ moved to Duluth, so we'll remove her."
LL.pop
puts "Is JJ in the family still? #{LL.contains?('Julianna')}"
puts "Is Eva in the family? She should be. #{LL.contains?('Eva')}"
puts "What order in the family is Elise? puts #{find?('Elise')}"
puts 'Ok, JJ is back in the family.'
LL.insert_at(8, 'Julianna')
puts "And this is the whole family now:\n"
LL.to_s
