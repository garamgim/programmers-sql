select i.ITEM_ID, i.ITEM_NAME
from item_info as i
join item_tree as t
on i.item_id = t.item_id
where t.parent_item_id is null
order by t.item_id;