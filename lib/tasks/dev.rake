namespace :dev do
  task :fetch_realtime => :environment do
    puts "Fetch realtime data..."
    response = RestClient.get "http://touchstone.api.juhe.cn/ajax/data/realtime", :params => { :key => JUHE_CONFIG["api_key"] }
    data = JSON.parse(response.body)

    data["result"]["result"].each do |r|
        Realtime.create!( :_id => r["_id"], :shortName => r["shortName"], :ZRSP => r["ZRSP"],
                          :company => r["company"], :operName => r["operName"], :upDate => r["upDate"])
    end

    puts "Total: #{Realtime.count} realtimes"
  end
end
