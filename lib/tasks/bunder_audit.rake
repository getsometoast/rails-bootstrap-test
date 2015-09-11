namespace :bundler_audit do

  desc 'Run bundler audit'
  task run: :environment do
    output = `bundle-audit update && bundle-audit check`
    puts output
    fail unless $?.success?
  end

end
