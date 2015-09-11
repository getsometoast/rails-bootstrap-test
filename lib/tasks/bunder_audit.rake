namespace :bundler_audit do

  desc 'Run bundler audit'
  task run: :environment do
    `bundle-audit update && bundle-audit check`
  end

end
