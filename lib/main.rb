LL = Linked_List('Dad')

LL.append('Chris')
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

at(index)
puts "JJ moved to Duluth, so we'll remove her."
LL.pop
puts "Is JJ in the family still? #{LL.contains?('Julianna')}
find?(value)
LL.to_s
