# Check if the item in hand has durability (Проверяем, есть ли в руке предмет с прочностью)
execute unless data entity @s SelectedItem.tag.Durability run title @s actionbar {"text":"No item with durability","color":"red"}

# Get the remaining durability (Получаем оставшуюся прочность)
execute store result storage enchan_gui:temp durability int 1 run data get entity @s SelectedItem.tag.Durability

# Check if the durability is 0, then the item breaks (Проверяем, если прочность равна 0, предмет ломается)
execute if score @s durability matches 0.. run title @s actionbar [{"text":"Item is broken!","color":"red"}]

# Show the remaining durability (Показываем оставшуюся прочность)
execute if score @s durability matches 1.. run title @s actionbar [
  {"text":"Durability: ","color":"gray"},
  {"score":{"name":"@s","objective":"durability"},"color":"white"}
]
