Fabricator(:invitation) do
  email { sequence(:email) { |i| "robin#{i}@thebatcave.com" } }
  privilege :captain
  precinct { Fabricate(:precinct) }
end
