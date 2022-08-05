require_relative 'linkedList'
require_relative 'Node'

puts 'Let\'s make a family: add the family members and count them'
LL = Linked_List.new('Mom')
LL.append('Chris')
LL.to_s
puts "#{LL.size}"

puts "\nOops, forgot dad! He goes first."
LL.prepend('Dad')
LL.to_s
puts "#{LL.size}"

LL.append('Andrea')
LL.to_s
puts "#{LL.size}"

LL.append('Chelsea')
LL.to_s
puts "#{LL.size}"

LL.append('Elise')
LL.to_s
puts "#{LL.size}"

LL.append('Eva')
LL.to_s
puts "#{LL.size}"

LL.append('Hannah')
LL.to_s
puts "\nOops, Hannah isn't a family member! Let's remove her!"
LL.remove_at(8)
LL.to_s

puts "\nLet's remove a family member from the middle. Like Elise!"
LL.remove_at(6)
LL.to_s

puts "\nNow let's see if we can add Elise back to the middle."
LL.insert_at(6, 'Elise')
LL.to_s

puts "\nNow let\s put JJ at the very end, since she\'s the youngest"
LL.insert_at(8, 'Julianna')
LL.to_s

puts "\n\nThe size of the family is #{LL.size}"
puts "The head of the family is #{LL.head}"
puts "The youngest family member is #{LL.tail}"

puts "\nWho is the 4th person in the family order?"\
"\nIt should be Andi, after Mom, Dad, and Chris. #{LL.at(4)}"

puts "\nJJ moved to Duluth, so we'll remove her."
LL.pop
LL.to_s

puts "\nIs JJ in the family still? #{LL.contains?('Julianna')}"
puts "Is Eva in the family? She should be. #{LL.contains?('Eva')}"
puts "What order in the family is Elise? #{LL.find('Elise')}"

puts "\nOk, JJ is back in the family."
LL.insert_at(8, 'Julianna')
puts "\nAnd this is the whole family now:\n"
LL.to_s

puts "\nGoodbye!"
