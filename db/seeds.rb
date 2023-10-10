# frozen_string_literal: true

puts "\n== Seeding the database with fixtures ==" # rubocop:disable Rails/Output
system('bin/rails db:fixtures:load')
