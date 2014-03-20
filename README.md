MailCatcher Cookbook
====================
Allows for installation of MailCatcher on Debian (/Ubuntu) boxes.

Recipes
----------
<table>
  <tr>
    <th>Name</th>
    <th>Explanation</th>
  </tr>
  <tr>
    <td><tt>mailcatcher</tt></td>
    <td>Basic installation of MailCatcher</td>
  </tr>
  <tr>
    <td><tt>mailcatcher::php</tt></td>
    <td>Sets the php <tt>sendmail_path</tt> to use MailCatcher</td>
  </tr>
</table>

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
    <td><tt>['mailcatcher']['smtp-ip']</tt></td>
    <td>String</td>
    <td>The ip address of the smtp server</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['smtp-port']</tt></td>
    <td>Integer</td>
    <td>The port of the smtp server</td>
    <td><tt>1025</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['http-ip']</tt></td>
    <td>String</td>
    <td>The ip address of the http server</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['http-port']</tt></td>
    <td>Integer</td>
    <td>The port of the http server</td>
    <td><tt>1080</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['multiple']</tt></td>
    <td>Boolean</td>
    <td>Manage multiple instances</td>
    <td><tt>false</tt></td>
  </tr>
</table>

License and Authors
-------------------
Copyright 2013, Bryan te Beek

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the License.

**Authors**: Bryan te Beek
