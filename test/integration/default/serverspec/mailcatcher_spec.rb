#
# Cookbook Name:: MailCatcher
# serverspec test for MailCatcher 
#
# Copyright 2014, Klaus Weidenbach
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe "MailCatcher " do

  it "has a running process of mailcatcher" do
    expect(process("mailcatcher")).to be_running
  end

  it "is listening on SMTP port 1025" do
    expect(port(1025)).to be_listening
  end

  it "is listening on HTTP port 1080" do
    expect(port(1080)).to be_listening
  end

end

