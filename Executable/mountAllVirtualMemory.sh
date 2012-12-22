#!/bin/bash
# 		宣告執行 script 程式用的殼程式(shell)
################## Header block ##################
# Script 程式名稱 | Script Name
# 		mountAllVirtualMemory
# 著作權宣告 | Copyright Declaration
# 		Ｖ字龍(Vdragon) <pika1021@gmail.com> (c) 2012
# 授權條款宣告 | License Declaration
# 		GNU Lesser General Public License version 3.0 or later
# 			http://www.gnu.org/licenses/lgpl.html
# 傳回值定義 | Return Value Definition
# 		0
# 			正常結束
# 已知問題 | Known Issues
# 		Known issues is now on GitHub
# 	
# 修訂紀錄 | Changelog
# 		Changelog is now on GitHub
# 	
############## Header block ended ##############

######## Included files ########

######## Included files ended ########

######## File scope variable definitions ########

######## File scope variable definitions ended ########

######## Program ########
echo "Start mounting all available virtual memory(swap space) partitions..."
# list all virtual_memory_partition's device file and turn into bash list format 
for virtual_memory_partition in $(blkid -t 'TYPE=swap' -o device | tr '\n' ' ')
do
	echo "Auto-mounting ${virtual_memory_partition} virtual memory(swap space) partition..."
	swapon --discard ${virtual_memory_partition}
done

## 正常結束 script 程式
exit 0
######## Program ended ########
