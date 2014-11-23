# 記憶體分頁交換空間磁碟分割區自動掛載程式<br />Swap space partition automounter #
 * For portable Linux system users to automatically mount swap partition(s) to prevent hangs caused by main memory deficiency.
 * Original idea comes from [\[SOLVED\] Automatic swap detection and mount - FedoraForum.org](http://forums.fedoraforum.org/showthread.php?t=264801).
      * Thanks to stevea@forums.fedoraforum.org (not an email address!) for the original idea based on fdisk, I re-implement this using blkid tool instead.

## 授權條款宣告<br />License Declaration ##
  GNU Lesser General Public License version 3.0 or later  
  <http://www.gnu.org/licenses/lgpl.html>

## Continuous Integration 狀態
[![Build Status](https://travis-ci.org/Vdragon/Swap_space_automounter.svg)](https://travis-ci.org/Vdragon/Swap_space_automounter)