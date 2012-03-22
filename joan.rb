# Usage: $ ruby joan.rb [num iterations]
require 'net/http'	

require 'Bot'

bots = %w{perl ruby }.map { |name| Bot.new(name) }

last_message = nil
(ARGV[0] || 10).to_i.times do
	bots.each { |bot| last_message = bot.respond(last_message) }
end
