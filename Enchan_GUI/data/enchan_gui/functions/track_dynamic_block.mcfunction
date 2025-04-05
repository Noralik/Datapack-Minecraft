# Check if the player is holding an item (Проверяем, что в руке есть предмет)
execute unless data entity @s SelectedItem.id run title @s actionbar {"text":"No block in hand","color":"red"}

# Get the ID of the item in hand and store it in storage (Получаем ID предмета в руке и сохраняем его в storage)
execute store result storage enchan_gui:temp block_count int 1 run clear @s @s[nbt={SelectedItem:{}}] 0

# Get the ID of the item (Получаем ID предмета)
data modify storage enchan_gui:temp block_id set from entity @s SelectedItem.id

# Display in the actionbar (Выводим в actionbar)
execute if data storage enchan_gui:temp block_id run tellraw @s [
  {"text":"Block: ","color":"gray"},
  {"nbt":"block_id","storage":"enchan_gui:temp","color":"white"},
  {"text":" | Amount: ","color":"gray"},
  {"nbt":"block_count","storage":"enchan_gui:temp","color":"white"}
]
