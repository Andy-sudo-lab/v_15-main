import re
import os

with open(r'c:\Users\Andy\Downloads\v_15-main\v_15-main\_exported\ero_NightOBJ\scripts\frame_23\DoAction_3.as', 'r', encoding='utf-8') as f:
    item_lines = f.readlines()

item_dict = {}
for line in item_lines:
    m = re.search(r'item\[(\d+)\]\.iName\s*=\s*\"(.*?)\"', line)
    if m:
        item_dict[m.group(1)] = m.group(2)

def get_item_name(item_id):
    if ',' in item_id:
        pts = item_id.split(',')
        if pts[0] == '3':
            return pts[1] + ' ero (gold)'
    return item_dict.get(item_id, 'Unknown (' + item_id + ')')

files = [
    (r'c:\Users\Andy\Downloads\v_15-main\v_15-main\_exported\ero_NightOBJ\scripts\frame_26\DoAction.as', 'Sub-Maps'),
    (r'c:\Users\Andy\Downloads\v_15-main\v_15-main\_exported\ero_NightOBJ\scripts\frame_27\DoAction.as', 'World Map (0)')
]

results = []
for fpath, map_name in files:
    with open(fpath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    blocks = re.split(r'TEflg\[', content)
    for block in blocks[1:]:
        m_teflg = re.match(r'^(\d+)\]', block)
        if m_teflg:
            teflg_id = int(m_teflg.group(1))
            
            # Find mapX, mapY
            coords_m1 = re.search(r'mapX\s*==\s*(-?\d+).*?mapY\s*==\s*(-?\d+)', block[:250])
            # Find _loc2_, _loc4_
            coords_m2 = re.search(r'_loc2_\s*==\s*(-?\d+).*?_loc4_\s*==\s*(-?\d+)', block[:250])
            
            x, y = '?', '?'
            if coords_m1:
                x, y = coords_m1.group(1), coords_m1.group(2)
            elif coords_m2:
                x, y = coords_m2.group(1), coords_m2.group(2)
                
            item_match = re.search(r'beltCheck\(true,\s*([\d,\s]+)\)', block[:350])
            if item_match:
                item_id = item_match.group(1).replace(' ', '')
                item_name = get_item_name(item_id)
                results.append((teflg_id, x, y, item_id, item_name, map_name))

results.sort(key=lambda i: i[0])

out = []
out.append('| TEflg | Map | Location (X, Y) | Item ID | Item Name |')
out.append('|-------|-----|----------------|---------|-----------|')
for r in results:
    out.append(f'| {r[0]} | {r[5]} | ({r[1]}, {r[2]}) | {r[3]} | {r[4]} |')

with open(r'c:\Users\Andy\Downloads\v_15-main\v_15-main\docs\all_hidden_items.md', 'w', encoding='utf-8') as f:
    f.write('\n'.join(out))
print(f'Parsed {len(results)} items successfully.')
