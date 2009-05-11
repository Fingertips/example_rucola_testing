require File.expand_path('../../test_helper', __FILE__)

describe 'DSCacheUtils' do
  it "should flush the DNS cache using the command line utility" do
    DSCacheUtils.expects(:system).with('dscacheutil -flushcache')
    DSCacheUtils.flush
  end
  
  it "should return true when a flush succeeds" do
    DSCacheUtils.expects(:system).returns(true)
    DSCacheUtils.flush.should == true
  end
  
  it "should return false when a flush fails" do
    DSCacheUtils.expects(:system).returns(false)
    DSCacheUtils.flush.should == false
  end
end