# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

andrew = User.create(name: "Andrew")
dicky = User.create(name: "Dicky")

arr = [{"Ticker":"ATVI","Name":"Activision Blizzard","Sector":" Inc\"","Industry":"Technology","Exchange":"Computer Software: Prepackaged Software"},{"Ticker":"DIS","Name":"Walt Disney Company (The)","Sector":"Consumer Services","Industry":"Television Services","Exchange":"NYSE"},{"Ticker":"AMZN","Name":"Amazon","Sector":" Inc.\"","Industry":"Consumer Services","Exchange":"Catalog/Specialty Distribution"},{"Ticker":"T","Name":"AT&T Inc.","Sector":"Public Utilities","Industry":"Telecommunications Equipment","Exchange":"NYSE"},{"Ticker":"NVDA","Name":"NVIDIA Corporation","Sector":"Technology","Industry":"Semiconductors","Exchange":"NASDAQ"},{"Ticker":"TWTR","Name":"Twitter","Sector":" Inc.\"","Industry":"Technology","Exchange":"\"Computer Software: Programming"},{"Ticker":"FB","Name":"Facebook","Sector":" Inc.\"","Industry":"Technology","Exchange":"\"Computer Software: Programming"},{"Ticker":"KHC","Name":"The Kraft Heinz Company","Sector":"Consumer Non-Durables","Industry":"Packaged Foods","Exchange":"NASDAQ"},{"Ticker":"NFLX","Name":"Netflix","Sector":" Inc.\"","Industry":"Consumer Services","Exchange":"Consumer Electronics/Video Chains"},{"Ticker":"LVS","Name":"Las Vegas Sands Corp.","Sector":"Consumer Services","Industry":"Hotels/Resorts","Exchange":"NYSE"},{"Ticker":"BX","Name":"The Blackstone Group L.P.","Sector":"Finance","Industry":"Investment Managers","Exchange":"NYSE"},{"Ticker":"CRM","Name":"Salesforce.com Inc","Sector":"Technology","Industry":"Computer Software: Prepackaged Software","Exchange":"NYSE"},{"Ticker":"WMT","Name":"Walmart Inc.","Sector":"Consumer Services","Industry":"Department/Specialty Retail Stores","Exchange":"NYSE"},{"Ticker":"AAPL","Name":"Apple Inc.","Sector":"Technology","Industry":"Computer Manufacturing","Exchange":"NASDAQ"},{"Ticker":"GPRO","Name":"GoPro","Sector":" Inc.\"","Industry":"Miscellaneous","Exchange":"Industrial Machinery/Components"},{"Ticker":"TSLA","Name":"Tesla","Sector":" Inc. \"","Industry":"Capital Goods","Exchange":"Auto Manufacturing"},{"Ticker":"MSFT","Name":"Microsoft Corporation","Sector":"Technology","Industry":"Computer Software: Prepackaged Software","Exchange":"NASDAQ"},{"Ticker":"SBUX","Name":"Starbucks Corporation","Sector":"Consumer Services","Industry":"Restaurants","Exchange":"NASDAQ"},{"Ticker":"F","Name":"Ford Motor Company","Sector":"Capital Goods","Industry":"Auto Manufacturing","Exchange":"NYSE"},{"Ticker":"BABA","Name":"Alibaba Group Holding Limited","Sector":"Miscellaneous","Industry":"Business Services","Exchange":"NYSE"},{"Ticker":"BAC","Name":"Bank of America Corporation","Sector":"Finance","Industry":"Major Banks","Exchange":"NYSE"},{"Ticker":"FIT","Name":"Fitbit","Sector":" Inc.\"","Industry":"Technology","Exchange":"Computer Manufacturing"},{"Ticker":"GE","Name":"General Electric Company","Sector":"Energy","Industry":"Consumer Electronics/Appliances","Exchange":"NYSE"},{"Ticker":"FOXA","Name":"Twenty-First Century Fox","Sector":" Inc.\"","Industry":"Consumer Services","Exchange":"Television Services"},{"Ticker":"CMCSA","Name":"Comcast Corporation","Sector":"Consumer Services","Industry":"Television Services","Exchange":"NASDAQ"},{"Ticker":"CVS","Name":"CVS Health Corporation","Sector":"Health Care","Industry":"Medical/Nursing Services","Exchange":"NYSE"},{"Ticker":"MMM","Name":"3M Company","Sector":"Health Care","Industry":"Medical/Dental Instruments","Exchange":"NYSE"},{"Ticker":"CBS","Name":"CBS Corporation","Sector":"Consumer Services","Industry":"Broadcasting","Exchange":"NYSE"}]

arr.each do |stock|
  Stock.create(name: stock[:Name], ticker: stock[:Ticker], industry: stock[:Industry])
end

firstPool = Pool.create(start_date: Date.today)

andrewEntry = Entry.create(alive: true, pool_id: firstPool.id, user_id: andrew.id)
dickyEntry = Entry.create(alive: true, pool_id: firstPool.id, user_id: dicky.id)

Pick.create(initial_price: 74.75, day: 1, entry_id: andrewEntry.id, stock_id: Stock.first.id)
Pick.create(initial_price: 57.02, day: 1, entry_id: dickyEntry.id, stock_id: Stock.last.id)
