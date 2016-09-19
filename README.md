# Forigate-backup

The Forigate backup system. (For Lunix)

The guy overhere (http://www.jfinley.com/) was the one with the orgianl code. 

This is a perl script that will log into a ForiGate Firewall and then do magical backup things. I mean the last thing anyone wants now is the backup to vanish. 


---
#Settings 

1 – Enable SSH on the Interface you’ll connect to.
⋅⋅*#config system interface
⋅⋅*#edit 
⋅⋅*#set allowaccess ping https ssh
⋅⋅*#end

2 – Enable SCP on the Fortigate
⋅⋅*#config system global
⋅⋅*#set admin-scp enable
⋅⋅*#end

3 – Create a READ-ONLY Admin user
⋅⋅*#config system admin
⋅⋅*#edit BACKUP_USER
⋅⋅*#set password XXXXXXX
⋅⋅*#set accprofile Read-Only
⋅⋅*#set trusthost IP_ADDRESS_OF_THE_BOX_SCP#

---

**Note:** _It’s suggested to set the other trusted to be 255.255.255.255/255.255.255.255_
**TIP:** _If you change your Fortigate SSH port, adjust the PERL script “port=>22” to the appropriate port as needed._

