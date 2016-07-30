def profile block_description, &block
  on_off_switch = true
  if on_off_switch
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
  else
  block.call
  end
end
