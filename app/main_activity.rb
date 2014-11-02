class MainActivity < Android::App::Activity
  def initDatabase
    begin
      @manager = new Com::Couchbase::Lite::Manager.new(Com::Couchbase::Lite::Android::AndroidContext(getApplicationContext()), Com::Couchbase::Lite::Manager.DEFAULT_OPTIONS);
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    else
      # other exception
    end

  end

  def onCreate(savedInstanceState)
    super
    initDatabase
  end
end
