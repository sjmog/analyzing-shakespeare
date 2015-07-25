module PlayFetcher
  def self.fetch(opts={})
    Net::HTTP.start(opts[:source]) { | http |
      resp = http.get(opts[:path] + opts[:file])
      resp.body
    }
  end
end