### How to Use the JID Bot Command

This bot module provides a simple way to retrieve JID (Jabber ID) information for chats. Depending on where the command is used and the sender's permissions, it will provide different JID details.


---

#### ➡️ `jid`

This command fetches and displays JID information.

* **Usage 1 (In a Group Chat - by Admin)**: `jid`
    * If an admin sends `jid` in a group, the bot will reply directly in that group with its **Group JID**.
    * **Example**: Sending `jid` in a group chat might return `120300123456789012@g.us`
* **Usage 2 (In a Private Chat, or by Non-Admin in a Group)**: `jid`
    * If used in a private chat with the bot, or if a non-admin uses it in a group, the bot will attempt to send a private message to its own JID (if known). This private message will contain:
        * The **Origin Chat JID** (where the command was sent).
        * The **Sender's JID** (`lid`).
        * The **Bot's own JID**.
    * This behavior is often used for debugging or information retrieval when direct group replies aren't possible or desired.
