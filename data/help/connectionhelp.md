### How to Use the Connection Bot Commands

This bot module is used to manage and reference WhatsApp connections by name, providing a way to handle multi-account or multi-group configurations.

***

---

#### ➡️ `connection <name> <group_jid>`

This command saves a named connection, allowing you to easily reference a group without typing its full JID every time.

* **Usage**: `connection <name> <group_jid>`
* **Example**: `connection myGroup 120300123456789012@g.us`
* **Example**: `connection financeChat 120300987654321012@g.us`

---

#### ➡️ `delconnection <name>`

This command removes a saved connection by its name.

* **Usage**: `delconnection <name>`
* **Example**: `delconnection myGroup`

---

#### ➡️ `listconnection`

This command displays all the connections that have been saved.

* **Usage**: `listconnection`

---

#### ➡️ `setdefault [name]`

This command sets a default connection for the current group. This means that if you use other commands from different modules (like `alive` or `additions`) that require a target group, you don't need to specify it if you have a default set.

* **Usage**:
    * **Set a default**: `setdefault <name>`
    * **Clear the default**: `setdefault` (without a name)
* **Example**: `setdefault myGroup`

---

#### ➡️ `getdefault`

This command shows you which connection is currently set as the default for the current group.

* **Usage**: `getdefault`
