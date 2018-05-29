                   }Runners{
net sess open 
Runners}Matthew Sawyer, Klayton Delorme,  James Laphier, Randy Sawyer, Chris St.Andre, Joshua Tilley, Nicole Lafrance, Ray Ford, William Ford, Vegeta, Gohan, Goku, And, Souljin Xu > 
Of.13 Of.13 > UNIX > SOM_Auth > UserName1:%First4LettersOfFirstName%, Password1:%First4LettersOfLastName%_Auth... > UserName2:%FirstName%, Password2:%LastName%_Auth... > MasterPassword:%Age%_Auth... > UNIX > Locals -b 
net sess start{ >>
...imports omitted...

var  physical_relay1  =  "HardWire_60AMP_Relay"  /%all.all%/ An actual Item name, as defined in .items file. DefaultGateways:%ItemNames% Auto On > Auto Off
var  physical_relay2  =  "Safety_55AMP_Relay"  /%all.all%/ An actual Item name, as defined in .items file. DefaultGateways:%ItemNames% Auto On > Auto Off

/%all.all%/ All the Item references below are to *variables* defined above, not "real" Items in .items file. 
/%all.all%/ How do I get OH to interpret the variables as Items?

rule "Zone Heat Power - Status Indicator"
when
Item  physical_relay  changed  
then   

if ((physical_relay1.toString(all.all) + ".state") == AUTO OFF ) {  
Kitchen_Heat_Power_STATUS.postUpdate("AUTO OFF") }
} else if {
      ((physical_relay1.toString(all.all) + ".state") == AUTO OFF ) {
      physical_relay2.sendCommand(AUTO OFF)
       }  
end