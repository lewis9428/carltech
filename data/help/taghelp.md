### How to Use the Tag Bot Commands

This bot module allows admins to create custom emoji-based commands within groups. When a specific emoji is used in a message, the bot can respond by mentioning all group members, listing their names, or sending a custom text message.

***

---

#### ➡️ `cmd` (Main Command)

All tag-related actions are accessed through the `cmd` command, followed by a sub-command.

##### `cmd help`

Displays the usage instructions for all `cmd` sub-commands and mapping examples.

* **Usage**: `cmd help`
    * **Example**: `cmd help`

---

##### `cmd add <emoji> <mapping>`

Creates a new emoji tag or updates an existing one for your default group. The `mapping` defines how the bot responds when the emoji is triggered.

* **`<emoji>`**: The emoji that will trigger the bot's response.
* **`<mapping>`**: The content and type of response. There are three types:
    * `@ <text>`: **Mention everyone**. The bot will mention all participants in the group with the specified `<text>`. If no text is provided (just `@`), it sends a default wave emoji (`👋`).
        * **Example**: `cmd add 🚀 @ Launching soon!` (When someone types `🚀`, the bot mentions everyone with "Launching soon!")
        * **Example**: `cmd add 👋 @` (When someone types `👋`, the bot mentions everyone with a `👋` emoji.)
    * `@@ <text>`: **List names and mention everyone**. The bot will list the display names of all participants, followed by the specified `<text>`, and then mention everyone.
        * **Example**: `cmd add 📝 @@ Please check this document.` (Lists everyone's names, then "Please check this document." and mentions all.)
    * `<raw text>`: **Send raw text**. The bot will simply send the specified text to the group. No mentions will occur.
        * **Example**: `cmd add 📢 Important announcement!` (When someone types `📢`, the bot sends "Important announcement!")

---

##### `cmd list`

Shows all currently configured emoji tags (emoji and their mappings) for your default group, along with their assigned index numbers.

* **Usage**: `cmd list`
    * **Example**: `cmd list`

---

##### `cmd delete <emoji>`

Deletes a specific emoji tag by its emoji.

* **Usage**: `cmd delete <emoji>`
    * **Example**: `cmd delete 🚀`

---

##### `cmd delete index <n>`

Deletes a specific emoji tag by its index number, as shown in the `cmd list` output.

* **Usage**: `cmd delete index <number>`
    * **Example**: `cmd delete index 2` (Deletes the second mapping in the list.)

---

##### `cmd delete all`

Deletes all emoji tags configured for your default group.

* **Usage**: `cmd delete all`
    * **Example**: `cmd delete all`

---

#### ➡️ **Emoji Triggers (Non-Command Usage)**

Once an emoji tag is added using `cmd add`, simply sending a message that *starts with* or *exactly matches* that emoji (optionally followed by extra text) will trigger the associated mapping.

* **Example**: If you added `cmd add 🚀 @ Launching soon!`, then typing `🚀` or `🚀 Everyone get ready!` in the group will trigger the bot to mention everyone with the message "Launching soon!" (and any extra text you provided).
