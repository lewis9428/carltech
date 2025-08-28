### ➡️ `lock`

This command lets you set **locks** on specific words or phrases in a group chat to automatically delete messages containing them.

* **Example**:
    ```
    lock
    badword,anotherbadword
    ```
    This will delete any message containing "badword" or "anotherbadword."

---

#### ➡️ `unlock`

This command removes a specific lock from a group. You can use either the lock's ID number or the phrase itself.

* **Usage**: Type `unlock` followed by the ID number or phrase you want to remove.
* **Example**: `unlock 2`
* **Example**: `unlock badword`

---

#### ➡️ `listlock`

This command shows you all the locks currently active in a specific group. Each lock is listed with its unique ID.

* **Usage**: Simply type `listlock`.
* **Example**: `listlock`

---

#### ➡️ `unlockall`

This command deletes **all** the locks that have been set for a group.

* **Usage**: Just type `unlockall`.
* **Example**: `unlockall`






