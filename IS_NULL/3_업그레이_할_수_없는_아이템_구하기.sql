select ITEM_ID, ITEM_NAME, RARITY
from item_info
where item_id not in (
    select distinct i.item_id
    from item_info as i
    join item_tree as t
    on t.parent_item_id = i.item_id
)
order by item_id desc;

