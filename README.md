# Streets of Berkeley CA

## 1. Query for data
I went to [this site](https://www.melissa.com/v2/lookups/addresssearch/?number=&street=&city=Berkeley&state=CA&zip=&fmt=json&id=) and copied the results to `data.json`.

## 2. Parse out street names
```
jq '.[].StreetName' data.json  > streets.txt
```

## 3. Separate streets by area of Berkeley
```
cp streets.txt streets-modified.txt
```

Then, I manually grouped all streets into different areas of Berkeley.

```
> u=unknown
> ca=campus
> d=downtown
> m=marina
> sw=southwest berkeley
> so=south berkeley
> p=panoramic hill
> e=elmwood
> ch=claremont hills
> w=west and central berkeley
> nw=northwest berkeley
> m=monterey market
> cr=cragmont and thousand oaks
> no=north berkeley
> t=tilden park
```

```
cat streets-modified.txt | cut -d '-' -f1 | grep -v '"' | sort | uniq -c  | sort -n
      1 Chancellor
      6 u
     12 p
     14 nw
     15 d
     27 sw
     34 ch
     37 m
     42 w
     47 e
     51 so
     53 cr
     57 no
     77 ca
     78 t
```

```
cat streets-modified.txt | sort > streets-sorted.txt
```

## 4. Go through each section


### Unknown
```
cat streets-sorted.txt | grep "^u-" > sorted/unknown.txt
```

These were places I didn't recognize. I think they do not refer to streets. "Station" might refer to the Amtrak or BART stations. South Anx could be a building on campus. Oakland is a reference to Oakland, CA.

### Campus
```
cat streets-sorted.txt | grep "^ca-" > sorted/campus.txt
```

Many places are building names on campus. As a college student, I visited most of this list.

A few names were new to me (like A E Bldg). I didn't know about the Animal Facility on campus (and [I'm not alone](https://talk.collegeconfidential.com/university-california-berkeley/1623981-northwest-animal-facility-the-most-secretive-building-at-cal.html)! The Richmond Field Station addresses are actually in Richmond, but UC Berkeley owns the property.

### Downtown
```
cat streets-sorted.txt | grep "^d-" > sorted/downtown.txt
```

These streets make up the busiest sections of town. I lived here in 2018-19.

I didn't know that [MLK Jr Way used to be called Grove St](https://localwiki.org/oakland/Martin_Luther_King_Jr._Way). Harold Way is a tiny road near the Berkeley Public Library.

### Marina
```
cat streets-sorted.txt | grep "^m-" > sorted/marina.txt
```

These are the roads to [Adventure Playground](https://www.cityofberkeley.info/adventureplayground/), [César Chávez Park](https://www.cityofberkeley.info/ContentDisplay.aspx?id=56000), and the Berkeley Marina. When I was a child, my family took me to Adventure Playground on our trips to the Bay Area. As an adult, I have biked here many times. It makes you feel like you're on the edge of the world.


### Southwest Berkeley
```
cat streets-sorted.txt | grep "^sw-" > sorted/southwest.txt
```

I think of my favorite park, the wide and grassy [San Pablo Park](https://www.cityofberkeley.info/Parks_Rec_Waterfront/Trees_Parks/Parks__San_Pablo_Park.aspx). I have shopped at Berkeley Bowl West several times, sometimes just for a handful of chocolate chips. [Missouri Lounge](https://www.missouriloungebar.com/) is a cool place to hang out: half biergarten and half dive bar. The [Tssui Fish House](https://www.berkeleyside.com/2015/11/30/how-quirky-is-berkeley-eugene-tssuis-fish-house-part-1) is nearby, and [Urban Ore](https://www.urbanore.com/) is a quirky warehouse full of secondhand items.

### South Berkeley
```
cat streets-sorted.txt | grep "^so-" > sorted/south.txt
```

This is the home of the old Lorin district. I lived here in 2019-20. 

I like [Sweet Adeline Bakeshop](http://sweetadelinebakeshop.com/). Sports Basement has an upright piano you can just go and play. I frequent a local [Thai temple's outdoor Sunday brunch](https://en.wikipedia.org/wiki/Wat_Mongkolratanaram). There's a [tool lending library](https://www.berkeleypubliclibrary.org/locations/tool-lending-library) and open basketball & tennis courts in the neighborhood. Ashby BART has a bazaar-style [flea market every weekend](http://www.berkeleyfleamarket.com/).

### Panoramic Hill
```
cat streets-sorted.txt | grep "^p-" > sorted/panoramic.txt
```

I lived in the nearby Clark Kerr dorm in 2013-14. My friends and I climbed this hill once to watch the sunrise. When I worked at the [Space Sciences Lab](https://vcresearch.berkeley.edu/research-unit/space-sciences-laboratory) in 2019, I often walked down the steep, beautiful fire trails on my way home.

### Elmwood
```
cat streets-sorted.txt | grep "^e-" > sorted/elmwood.txt
```

There are a lot of pretty roads in this area, like the tree-lined Alcatraz west of College Avenue. My favorite restaurant in Elmwood is [Nabolom Pizza and Bakery](https://www.nabolombakery.com/). The hills on the east side are challenging and rewarding.

### Claremont Hills
```
cat streets-sorted.txt | grep "^ch-" > sorted/claremonthills.txt
```

These roads are mostly residential, due east of the Claremont Hotel. The neighborhood is just below Grizzly Peak and the surrounding ridge, some of the highest points in Berkeley. 

Riding through here is difficult, but if you can make it up here, you can go to [Redwood Regional Park](https://www.ebparks.org/parks/redwood/) in Oakland. Some bikers bike to Grizzly Peak from the north side of Berkeley, and zoom through this neighborhood on their way down.

### West and Central Berkeley
```
cat streets-sorted.txt | grep "^w-" > sorted/west.txt
```
These are the streets surrounding University Avenue. There are wonderful bike lanes and parks, like California St, the [Ohlone Greenway](https://www.cityofberkeley.info/Parks_Rec_Waterfront/Trees_Parks/PARKS__OHLONE_PARK(1).aspx) and the Aquatic Park.

[Vik's Chaat](http://vikschaat.com/) is a longtime (since childhood) favorite restaurant. I also like Milan for Indian groceries.

Fosters Freeze is a guilty pleasure of mine.

My friend worked at Mi Tierra Foods (grocery and prepared foods) in 2020; I'd visit him often. He'd buy burritos with an employee discount and we'd walk to Strawberry Creek Park or James Kenney Park to eat them.

I love the quiet and calm beauty of the small streets east of Sacramento St (Spaulding, Jefferson, Roosevelt, McKinley). 

### Northwest Berkeley
```
cat streets-sorted.txt | grep "^nw-" > sorted/northwest.txt
```

This area is close to Albany. Notable mentions in Albany: Happy Donuts on San Pablo and Ocean View Park.

I've been meaning to see a show at [924 Gilman](https://en.wikipedia.org/wiki/924_Gilman_Street) or [Ashkenaz](https://www.ashkenaz.com/).

### Monterey Market
```
cat streets-sorted.txt | grep "^m-" > sorted/montereymarket.txt
```

This is a cute and quiet area of town. There are rolling hills on the north side. I lived here in 2018. 

I like Cedar Rose Park. King Middle School's garden, track, and basketball courts are open to the public outside of school hours.

Of course, Monterey Market is a special Berkeley experience, preferably in the sunshine.

### Cragmont and Thousand Oaks
```
cat streets-sorted.txt | grep "^cr-" > sorted/cragmont.txt
```

This is the northernmost part of Berkeley, close to Kensington. The Solano Avenue shopping area is nearby. Rumor has it [Billie Joe Armstrong](https://en.wikipedia.org/wiki/Billie_Joe_Armstrong) from Green Day lives here.

Indian Rock Park is a local favorite for watching the view on top of a giant boulder and rock climbing. The serene Great Stone Face Park is more isolated but much less crowded.

If you're biking to Grizzly Peak (or [taking the bus!](https://sfbaytransit.org/actransit/route/67/map)), you'll take Spruce St through this neighborhood. It's steep, but less so than most other roads around here.

Because of the elevation, the views are spectacular from almost anywhere in this neighborhood.

### North Berkeley
```
cat streets-sorted.txt | grep "^n-" > sorted/north.txt
```

I think of north of campus, student co-ops, codornices park and live oak park, cheeseboard, the rose garden, the circle. I lived here in 2012-13 and again from 2014-16.

### Tilden Park
```
cat streets-sorted.txt | grep "^t-" > sorted/tilden.txt
```

Where the main entrance is, and the winding roads near it. Some of the highest points in Berkeley. The regional park is incredible -- once you enter, it feels like another world. There's a farm at the top. The train area is cool to watch. This borders the LBNL area.

## Other ideas

According to that site, there are 12 zip codes in berkeley:
947(01-11) and 94720

https://www.zip-codes.com/city/ca-berkeley.asp
 - looks like 94701 and 94712 are PO boxes.

I tried querying by zip code, but after 94705, I ran out of "credits"... :-(

I tried a second time, and got to 94709...

This is in `zipcodedata/`.

---

Should probably split elmwood from claremont hills!

NW berkeley, North berkeley, Hills?
I probably need another grouping around Monterey Market?

Should probablymake a Kensington-area one