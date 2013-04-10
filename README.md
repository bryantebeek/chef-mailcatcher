MailCatcher Cookbook
====================
Allows for installation of MailCatcher on Debian (/Ubuntu) boxes.

Requirements
------------

#### packages
- `php` - MailCatcher runs using PHP.

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['bin']</tt></td>
    <td>String</td>
    <td>The location of the MailCatcher binary file</td>
    <td><tt>/usr/bin/env catchmail</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['port']</tt></td>
    <td>Integer</td>
    <td>The smtp incoming port number for MailCatcher to use</td>
    <td><tt>1025</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['eth']</tt></td>
    <td>String</td>
    <td>The ethernet interface to use for MailCatcher</td>
    <td><tt>eth1</tt></td>
  </tr>
</table>

Usage
-----
Just include `mailcatcher` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[mailcatcher]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Bryan te Beek
