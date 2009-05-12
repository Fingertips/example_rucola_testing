require File.expand_path('../../test_helper', __FILE__)

require 'obj_c_compiler'
ObjCCompiler.require('app/controllers/AboutController')

describe 'AboutController' do
  tests OSX::AboutController
  
  it "should initialize" do
    controller.should.be.an.instance_of OSX::AboutController
  end
end