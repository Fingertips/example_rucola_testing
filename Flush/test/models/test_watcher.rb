require File.expand_path('../../test_helper', __FILE__)

describe "Watcher" do
  it "should empty its examine queue during initialization" do
    watcher = Watcher.alloc
    watcher.stubs(:super_init).returns(watcher)
    watcher.init
    watcher.queue.should.be.empty?
  end
end