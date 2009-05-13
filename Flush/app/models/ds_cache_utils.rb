class DSCacheUtils < OSX::NSObject
  def self.flush
    log.debug("[!] Flushing cache")
    system('dscacheutil -flushcache')
  end
end