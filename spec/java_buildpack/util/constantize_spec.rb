# frozen_string_literal: true

# Cloud Foundry Java Buildpack
# Copyright 2013-2019 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'
require 'java_buildpack/util/constantize'

describe 'constantize' do # rubocop:disable RSpec/DescribeClass

  it 'constantizes string' do
    expect('Test::StubClass'.constantize).to eq(Test::StubClass)
  end

  it 'raises error if constant does not exist' do
    expect { 'Test::StubClass2'.constantize }.to raise_error(NameError)
  end

end

module Test
  class StubClass
  end
end
