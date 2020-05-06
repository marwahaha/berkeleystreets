# Streets of Berkeley CA

## Getting the street names

### 1. Query for data
I went to [this site](https://www.melissa.com/v2/lookups/addresssearch/?number=&street=&city=Berkeley&state=CA&zip=&fmt=json&id=) and copied the results to `data.json`.

### 2. Parse out street names
```
jq '.[].StreetName' data.json  > streets.txt
```

### 3. Separate streets by area of Berkeley
```
cp streets.txt streets-modified.txt
```

Then, I manually grouped all streets into different areas of Berkeley.

      3 m - marina
      7 u - unknown
     15 d - downtown
     64 w - west berkeley
     69 s - south of campus
     77 c - campus
     89 e - elmwood and south hills
    110 n - north berkeley
    117 h - north hills


## Other ideas

According to that site, there are 12 zip codes in berkeley:
947(01-11) and 94720

I tried querying by zip code, but after 94705, I ran out of "credits"... :-(

This is in `zipcodedata/`.
