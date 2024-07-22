# every 1.day, at: '3:30 am' do # UTC時間で指定（日本時間の12時30分）
#   rake "line_notify:send_test_message"
# end
# every 1.minutes do
#   rake "line_notify:send_test_message"
# end 
every 1.minute do
  command "/bin/bash -l -c 'cd /app && bundle exec rails line_notify:send_test_message >> log/cron.log 2>&1'"
end

