require 'rubygems'
require 'watir'

browser = Watir::Browser.new

browser.goto 'https://docs.google.com/forms/d/e/1FAIpQLScibDlJbtkFcjSXUBLmfupPkqKslmHIpjHGHdNberFVSNP6Pw/viewform?c=0&w=1'

browser.text_field(:name => 'entry.565481634').set 'Miguel Alberto Del Moral González'
browser.text_field(:name => 'entry.1599836428').set "A01015019"

browser.textarea(:name => 'entry.1943388466').set "Load testing es el proceso de poner la demanda en un sistema de software o dispositivo y medir su respuesta en situaciones normales o de carga maxima."
browser.textarea(:name => 'entry.2061122182').set "cada expresion se evalua como verdadero y falso if(true) { do something} else { do something }"
browser.textarea(:name => 'entry.980720621').set "Evalúa que todas las posibles combinaciones de una condición ocurran if(a && b && (c || d)) { do something }, probar para todos los casos"
browser.textarea(:name => 'entry.1285916526').set "La prueba de estrés es una forma exhaustiva de prueba usada para determinar la estabilidad de un sistema. Implica pruebas sobre la capacidad operacional generalmente hasta un punto de ruptura"


browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div[1]/div/label/div/div[1]').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[3]/div[2]/div[3]/div/label/div/div[1]/div[2]').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[6]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[7]/div[2]/div/content/div/label[4]/div/div[1]/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[8]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[2]/content/label[5]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[3]/content/label[2]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[4]/content/label[6]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[5]/content/label[5]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[6]/content/label[1]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[7]/content/label[3]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[8]/content/label[6]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[9]/content/label[2]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[10]/content/label[9]/div/div[3]/div').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[9]/div[2]/div[1]/div/div[11]/content/label[5]/div/div[3]/div').click

browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[11]/div[2]/div[1]/div[2]').click
browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[2]/div[11]/div[2]/div[2]/div[3]').click

checkboxes = browser.elements(:xpath => "//*[contains(@data-item-id,'712386312')]/div[2]")

puts "Hay #{checkboxes.to_a.at(0).text.lines.count} checkboxes"

browser.element(:xpath => '//*[@id="mG61Hd"]/div/div[2]/div[3]/div[1]/div/div').click

sleep(100)
browser.close
