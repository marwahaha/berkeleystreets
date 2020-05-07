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

```
> m=marina
> u=unknown
> nw=northwest berkeley
> sw=southwest berkeley
> d=downtown
> w=west berkeley
> so=south berkeley
> c=campus
> e=elmwood and south hills
> no=north berkeley
> h=north hills
```

```
cat streets-modified.txt | cut -d '-' -f1 | grep -v '"' | sort | uniq -c  | sort -n
      3 m
      7 u
     10 nw
     15 d
     27 sw
     43 w
     51 so
     77 c
     91 e
    109 no
    118 h
```

```
cat streets-modified.txt | sort > streets-sorted.txt
```

## Other ideas

According to that site, there are 12 zip codes in berkeley:
947(01-11) and 94720

I tried querying by zip code, but after 94705, I ran out of "credits"... :-(

This is in `zipcodedata/`.
