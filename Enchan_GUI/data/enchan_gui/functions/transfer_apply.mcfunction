# Copy the list of enchantments to the book (Копируем список чар в книгу)
data modify storage enchan_gui:temp book set value {id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[]}}
data modify storage enchan_gui:temp book.tag.StoredEnchantments set from storage enchan_gui:temp item.tag.Enchantments

# Remove both items (the main item and the book) (Удаляем оба предмета: основной и книга)
clear @s minecraft:book 1
clear @s 1 1

# Give the enchanted book (Даем зачарованную книгу)
give @s storage enchan_gui:temp book
