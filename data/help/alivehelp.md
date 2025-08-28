### How to Use the Alive Bot Commands

This bot module provides features for managing "alive" messages and a rotating list of quotes for groups.

***

**Important Notes:**
* All commands are **GROUP-ONLY** and can only be used by **ADMINS** of the group.

***

#### ➡️ `alive`

Displays the current "alive" message for a group, including the module's uptime and a random quote from the group's quote list (if available).

* **Usage 1 (in current group)**: `alive`
    * **Example**: `alive`
* **Usage 2 (for a specific group using 'gp' keyword)**: `alive gp <group_jid_or_key>`
    * **Example**: `alive gp 120300123456789012@g.us`
* **Usage 3 (for a specific group directly by JID)**: `alive <group_jid>`
    * **Example**: `alive 120300123456789012@g.us`

---

#### ➡️ `setalive`

Sets or updates the "alive" message for a specified group. This message can be multi-line.

* **Usage**:
    `setalive`
    `<your multi-line alive message here>`
    `[gp <group_jid_or_key>]`
* **Example 1 (in current group)**:
    `setalive`
    `Hello everyone!`
    `I am currently active and watching.`
* **Example 2 (for a specific group)**:
    `setalive`
    `This is the alive message for the other group.`
    `It will be displayed when someone types 'alive'.`
    `gp 120300123456789012@g.us`

---

#### ➡️ `delalive`

Deletes the "alive" message for a specified group.

* **Usage 1 (in current group)**: `delalive`
    * **Example**: `delalive`
* **Usage 2 (for a specific group using 'gp' keyword)**: `delalive gp <group_jid_or_key>`
    * **Example**: `delalive gp 120300123456789012@g.us`
* **Usage 3 (for a specific group directly by JID)**: `delalive <group_jid>`
    * **Example**: `delalive 120300123456789012@g.us`

---

#### ➡️ `setquote`

Replaces all existing quotes for a group with a new list of quotes. Each new quote must start with an exclamation mark (`!`).

* **Usage**:
    `setquote`
    `!First quote text`
    `!Second quote text`
    `[gp <group_jid_or_key>]`
* **Example 1 (in current group)**:
    `setquote`
    `!The only way to do great work is to love what you do.`
    `!Innovation distinguishes between a leader and a follower.`
* **Example 2 (for a specific group)**:
    `setquote`
    `!Life is what happens when you're busy making other plans.`
    `gp 120300123456789012@g.us`

---

#### ➡️ `addquote`

Adds new quotes to the existing list for a group. Each new quote must start with an exclamation mark (`!`).

* **Usage**:
    `addquote`
    `!New quote to add`
    `!Another quote to append`
    `[gp <group_jid_or_key>]`
* **Example 1 (in current group)**:
    `addquote`
    `!The future belongs to those who believe in the beauty of their dreams.`
* **Example 2 (for a specific group)**:
    `addquote`
    `!Do not go where the path may lead, go instead where there is no path and leave a trail.`
    `gp 120300123456789012@g.us`

---

#### ➡️ `listquote`

Lists all quotes currently saved for a specified group, including their unique ID.

* **Usage 1 (in current group)**: `listquote`
    * **Example**: `listquote`
* **Usage 2 (for a specific group using 'gp' keyword)**: `listquote gp <group_jid_or_key>`
    * **Example**: `listquote gp 120300123456789012@g.us`
* **Usage 3 (for a specific group directly by JID)**: `listquote <group_jid>`
    * **Example**: `listquote 120300123456789012@g.us`

---

#### ➡️ `delquote`

Deletes one or more quotes from a group's list. You can specify quotes by their ID, a list of IDs, a range of IDs, or delete all of them.

* **Usage 1 (single ID)**: `delquote <index>`
    * **Example**: `delquote 3` (deletes the quote with ID 3)
* **Usage 2 (list of IDs)**: `delquote <index1,index2,index3>`
    * **Example**: `delquote 1,3,5` (deletes quotes with IDs 1, 3, and 5)
* **Usage 3 (range of IDs)**: `delquote <start_index-end_index>`
    * **Example**: `delquote 2-4` (deletes quotes with IDs 2, 3, and 4)
* **Usage 4 (all quotes)**: `delquote all`
    * **Example**: `delquote all`
* **All above usages can optionally include `gp <group_jid_or_key>` or `<group_jid>` at the end to target a specific group.**
    * **Example**: `delquote 3 gp 120300123456789012@g.us`
