import re
import os

with open(r"c:\Users\Andy\Downloads\v_15-main\v_15-main\_exported\ero_NightOBJ\scripts\frame_23\DoAction_3.as", "r", encoding="utf-8") as f:
    lines = f.readlines()

items = {}
current_item = None
strAU = "The attack power goes up when you use it at the fighting. "
strDU = "The defense power is up when wearing it. "
strIR = "the item for the realization. \nIt buy with a high price in a shop. "
strEF = "An enemy appears, and a fight starts immediately. "

for line in lines:
    line = line.strip()
    m = re.match(r'item\[(\d+)\]\s*=\s*new\s*Object\(\);', line)
    if m:
        current_item = int(m.group(1))
        items[current_item] = {"id": current_item, "name": "Unknown", "comment": "", "atk": 0, "def": 0, "buy": 0, "sell": 0}
        continue
    
    if current_item is not None:
        m_name = re.match(r'item\[\d+\]\.iName\s*=\s*"(.*?)";', line)
        if m_name:
            items[current_item]["name"] = m_name.group(1)
            continue
            
        m_comment = re.match(r'item\[\d+\]\.comment\s*=\s*"(.*?)";', line)
        if m_comment:
            items[current_item]["comment"] += m_comment.group(1).replace("\\n", " ") + " "
            continue
            
        m_comment_concat = re.match(r'item\[\d+\]\.comment\s*=\s*"(.*?)"\s*\+\s*str(AU|DU|IR|EF);', line)
        if m_comment_concat:
            base_comment = m_comment_concat.group(1).replace("\\n", " ")
            str_type = m_comment_concat.group(2)
            if str_type == "AU": base_comment += " " + strAU
            elif str_type == "DU": base_comment += " " + strDU
            elif str_type == "IR": base_comment += " " + strIR
            elif str_type == "EF": base_comment += " " + strEF
            items[current_item]["comment"] += base_comment + " "
            continue
            
        m_atk = re.match(r'item\[\d+\]\.atk\s*=\s*(-?\d+);', line)
        if m_atk:
            items[current_item]["atk"] = int(m_atk.group(1))
            continue
            
        m_def = re.match(r'item\[\d+\]\.def\s*=\s*(-?\d+);', line)
        if m_def:
            items[current_item]["def"] = int(m_def.group(1))
            continue

        m_buy = re.match(r'item\[\d+\]\.buy\s*=\s*(\d+);', line)
        if m_buy:
            items[current_item]["buy"] = int(m_buy.group(1))
            continue

img_dir = r"c:/Users/Andy/Downloads/v_15-main/v_15-main/_exported/item_sprite/DefineSprite_848_item1"

with open(r"C:\Users\Andy\.gemini\antigravity\brain\3545a45b-811b-4040-84db-925051d2396d\items_guide.md", "w", encoding="utf-8") as f:
    f.write("# Items Guide\n\n")
    f.write("This document contains a list of all game items extracted from the game's ActionScript logic, including their descriptions, statuses, and values. The item icons have been successfully matched to their respective items from the main item Sprite (ID: 848).\n\n")
    f.write("## Item Database\n\n")
    f.write("| ID | Image | Name | Description | Attack | Defense | Buy Price |\n")
    f.write("|---|---|---|---|---|---|---|\n")
    for k in sorted(items.keys()):
        item = items[k]
        if not item["name"] or item["name"] == "Unknown" or item["name"] == "Nothing": continue
        comment = item["comment"].strip().replace("\n", " ").replace("  ", " ")
        
        img_path = f"{img_dir}/{item['id']}.png"
        img_md = f"![Icon](file:///{img_path})" if os.path.exists(f"c:\\Users\\Andy\\Downloads\\v_15-main\\v_15-main\\_exported\\item_sprite\\DefineSprite_848_item1\\{item['id']}.png") else ""
        
        f.write(f"| {item['id']} | {img_md} | **{item['name']}** | {comment} | {item['atk']} | {item['def']} | {item['buy']} |\n")
