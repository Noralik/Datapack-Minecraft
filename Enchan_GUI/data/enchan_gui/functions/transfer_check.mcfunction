# Get the item in the main hand (Получаем предмет в основной руке)
data modify storage enchan_gui:temp item set from entity @s SelectedItem

# Check if there are any enchantments (Проверяем, есть ли чары)
execute if data storage enchan_gui:temp item.tag.Enchantments run function enchan_gui:transfer_apply
