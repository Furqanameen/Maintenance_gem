namespace :weekly do
  desc 'Clear the Log'
  task clear_log: :environment do
    puts "=================  Before log Deletion =============================="
    system 'rake log:clear'
    # Rails.logger.flush
    puts "=================  After log Deletion =============================="
  end
end