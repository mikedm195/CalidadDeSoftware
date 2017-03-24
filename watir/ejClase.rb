require 'rubygems'
require 'watir'

browser = Watir::Browser.new

browser.goto 'http://bit.ly/watir-example'

browser.text_field(:name => 'entry.1000000').set 'hola'
browser.textarea(:name => 'entry.1000001').set "hola \nLorem ipsum dolor sit amet"
browser.textarea(:css => 'textarea[name="entry.1000001"]').clear
browser.textarea(:xpath => '//textarea[@name="entry.1000001"]').set "bla\nbla\nbla"

browser.radio(:value => 'Watir').set

puts "El select tiene #{browser.select_list(:name => "entry.1000004").options.size} opciones"
browser.select_list(:name => "entry.1000004").select "Chrome"
#
ariel = browser.checkboxes(:id => /group_1000003/)
#puts ariel

ariel.map do |p|
    if p.value.include? 'y'
        p.click
    end
end

browser.radio(:id => "group_1000005_3").click
browser.radio(:id => "group_1000006_2").click
browser.radio(:id => "group_1000007_4").click

browser.button(:id => 'ss-submit').click

sleep(3)
browser.close
