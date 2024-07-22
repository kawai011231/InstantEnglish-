namespace :line_notify do
  desc "Send 'test' message to LINE Notify"
  task send_test_message: :environment do
    phrases = Phrase.order('RANDOM()').limit(3).to_a
    messages = phrases.map { |phrase| "英語: #{phrase.english}\n日本語: #{phrase.japanese}" }
    notifier = LineNotifier.new(ENV['LINE_NOTIFY_TOKEN'])
    message = messages.join("\n\n")
    notifier.send_message(message)
  end
end
