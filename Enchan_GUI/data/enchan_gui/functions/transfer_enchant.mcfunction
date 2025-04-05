# Check if the player has a book in their offhand and a weapon with Sharpness in the main hand (Проверяем, есть ли у игрока книга в левой руке и оружие с остротой в правой руке)
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:book"},{Slot:0b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}}]}] run say Обнаружено сочетание!

# Here will be the logic for cloning enchantments (Здесь будет логика клонирования чар)
