### How to Use the Filter Bot Commands

This bot module has three main commands for managing filters in your WhatsApp groups.

#### ⟶ `filter`

This command is used to add new filters or update existing ones. It works with a multiline format.

* **Usage**: 
    1.  Type `filter <trigger1,trigger2>` on the first line. You can list multiple triggers separated by a comma.
    2.  On the next line, type `!response1`.
    3.  On subsequent lines, add more responses, each starting with `!`.

* **Example**:
    ```
    filter hello
    !Hello there!
    ```

#### ⟶ `listfilter`

This command lists all the triggers that are currently active in a specific group.

* **Usage**: 
    1.  Type `listfilter`.

* **Example**:
    ```
    listfilter
    ```

#### ⟶ `delfilter`

This command is used to delete filters.

* **Usage**: 
    1.  Type `delfilter <trigger1,trigger2>`.
    2.  You can list multiple triggers to delete, separated by a comma.

* **Example**:
    ```
    delfilter badword, spam
    ```
