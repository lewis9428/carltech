### How to Use the DB Backup Bot Commands

This bot module provides functionality to download and restore database files and configuration files.

***



---

#### ➡️ `getdb [filename]`

This command allows you to download the bot's database file. You can specify a filename, or it will download the default database file (`bot.db`).

* **Usage 1 (default DB)**: `getdb`
    * **Example**: `getdb`
* **Usage 2 (specific DB file)**: `getdb <filename.db>`
    * **Example**: `getdb my_custom_db.db`

---

#### ➡️ `setdb`

This command allows you to upload and replace the bot's database file. You must attach a `.db` file to the message when using this command.

* **Usage**: Attach a `.db` file to your message and send the caption: `setdb`
    * **Example**: (Attach `new_bot.db` and send the message `setdb`)

---

#### ➡️ `getconfig`

This command allows you to download the bot's configuration file. It will first try to find `config.yml`, `config.yaml`, or `config.json` in the project root. If none are found, it will send the current runtime configuration as a JSON file.

* **Usage**: `getconfig`
    * **Example**: `getconfig`

---

#### ➡️ `setconfig`

This command allows you to upload and replace the bot's configuration file. You must attach a `config.yml`, `config.yaml`, or `config.json` file to the message when using this command.

* **Usage**: Attach a configuration file (e.g., `config.yml`) to your message and send the caption: `setconfig`
    * **Example**: (Attach `config.yaml` and send the message `setconfig`)
