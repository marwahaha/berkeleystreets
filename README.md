Step 1: Get data from
https://www.melissa.com/v2/lookups/addresssearch/?number=&street=&city=Berkeley&state=CA&zip=&fmt=json&id=

2. 
```
jq '.[].StreetName' data.json  > streets.txt
```


Too many!

---

According to that site, there are 12 zip codes in berkeley:
947(01-11) and 94720

after 94705, I ran out of "credits"... :-(