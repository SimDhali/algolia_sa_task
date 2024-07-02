require 'algolia'
require 'json'

client = Algolia::Search::Client.create('R6J5N5AZ2G', 'c026eb4f258882a0395bd54e3801c78d')

index = client.init_index('test_index')

file_path = 'data/products.json' 

unless File.exist?(file_path)
  puts "File not found: #{file_path}"
  exit
end

file = File.read(file_path)
records = JSON.parse(file)

transformed_records = records.map do |record|
  if record['categories'].include?('Cameras & Camcorders')
    record['price'] = (record['price'] * 0.8).floor
  end
  record
end

index.save_objects(transformed_records, { auto_generate_object_id_if_not_exist: true }).wait()

results = index.search('camera')
puts results[:hits]
