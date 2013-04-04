MailCatcher Cookbook
====================
Allows for installation of MailCatcher on Debian boxes.

Requirements
------------

#### packages
- `php` - MailCatcher runs using PHP.
- `apache2` - MailCatcher uses apache2 to display the front-end.

Attributes
----------
#### mailcatcher::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### mailcatcher::default
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
