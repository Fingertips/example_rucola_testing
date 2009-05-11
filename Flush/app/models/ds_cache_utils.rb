class DSCacheUtils < OSX::NSObject
  def self.flush
    system('dscacheutil -flushcache')
  end
end