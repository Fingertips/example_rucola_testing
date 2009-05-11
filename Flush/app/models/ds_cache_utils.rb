class DSCacheUtils < OSX::NSObject
  def self.flush
    Rucola::Log.instance.debug("[!] Flushing cache")
    system('dscacheutil -flushcache')
  end
end