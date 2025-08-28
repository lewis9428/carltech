### How to Use the Additions Bot Commands

This bot module is designed to notify you when new participants are added to a group. It has several commands to configure its behavior.

***

#### ➡️ `additiongroup <group_jid> [...]`

This command tells the bot to **start monitoring** one or more groups for new additions. You can add multiple groups at once by separating their JIDs with a space or by providing them on separate lines.

* **Usage 1 (single line)**: Type `additiongroup` followed by the full JIDs of the groups you want to monitor.
* **Example**: `additiongroup 120300123456789012@g.us 120300987654321012@g.us`
* **Usage 2 (multi-line)**: Type `additiongroup` on the first line, then enter the JIDs on subsequent lines.
* **Example**:
  `additiongroup`
  `120300123456789012@g.us`
  `120300987654321012@g.us`

---

#### ➡️ `deladditiongroup <group_jid|index[,...]>` / `removeadditiongroup <group_jid|index[,...]>`

This command tells the bot to **stop monitoring** one or more groups. You can remove them by providing their full JID, their index number from the `listadditiongroups` command, or a mix of both.

* **Usage**: Type `deladditiongroup` or `removeadditiongroup` followed by the JID(s) or index number(s) to remove.
* **Example (by JID)**: `deladditiongroup 120300123456789012@g.us`
* **Example (by index)**: `deladditiongroup 2,4`
* **Example (mixed)**: `deladditiongroup 1 120300987654321012@g.us`

---

#### ➡️ `listadditiongroups` / `additiongroups`

This command shows you all the groups the bot is currently monitoring.

* **Usage**: Simply type `listadditiongroups` or `additiongroups`.
* **Example**: `listadditiongroups`

---

#### ➡️ `additions on|off`

This command is a global toggle to **enable or disable** the entire additions notification system.

* **Usage**: Type `additions on` to turn it on or `additions off` to turn it off.
* **Example**: `additions off`

---

#### ➡️ `additiontarget <target_jid|clear>`

This command sets a specific chat or group where all additions notifications will be sent. By default, notifications are sent to the group where the addition happened.

* **Usage**: Type `additiontarget` followed by the JID of the target chat. Use `clear` to revert to the default behavior.
* **Example**: `additiontarget 120300987654321012@g.us`
* **Example to clear**: `additiontarget clear`

---

#### ➡️ `additionstatus`

This command provides a summary of the current settings, including whether the system is enabled, the notification target, and how many groups are being monitored.

* **Usage**: Just type `additionstatus`.
* **Example**: `additionstatus`
