require File.expand_path('../../test_helper', __FILE__)

describe "Watcher" do
  it "should empty its queue during initialization" do
    watcher = Watcher.alloc
    watcher.stubs(:super_init).returns(watcher)
    
    watcher.queue.should.be.nil
    watcher.init
    watcher.queue.should.be.empty
  end
end

describe "A Watcher" do
  before do
    @watcher = Watcher.alloc.init
  end
  
  it "should empty its queue" do
    @watcher.queue = %w(/ /Users /Volumes)
    @watcher.emptyQueue
    @watcher.queue.should.be.empty
  end
end