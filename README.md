DunaDirect 0.1
==============

Inspiration
-----------

DunaDirect is a mod for Kerbal Space Program inspired by the Mars Direct plan. One of the main components of the plan is to utilize the [Sabatier Process](http://en.wikipedia.org/wiki/Sabatier_reaction) to produce methane and oxygen using the carbon dioxide already present in the Martian atmosphere. This affords a significant weight saving (one unit of hydrogen produces about 18 units of methane and liquid oxygen), requiring much less fuel to reach Mars, and fewer parachutes to land on its surface.

For more information, I highly recommend watching [this 1990 presentation](http://www.youtube.com/watch?v=vD3U0QcEYXs).

I really wanted to do a similar mission in KSP, but was unhappy with my options. Kethane mining was a little too science-fictiony, and the ISRU was removed from the 0.24 port of InterStellar. After a bit of deliberating, I decided to bite the bullet and try to write a mod of my own. Fortunately, it wasn't that difficult. The parts should be functional, but as this was my first time using 3D graphics tools, they look terrible.

Dependencies
------------

Tested with KSP 0.24.2.

Requires [Community Resource Pack](https://github.com/BobPalmer/CommunityResourcePack/releases).

Installation
------------

Copy the DunaDirect folder into your GameData folder, just like other mods.

Parts
-----

The main part is the Sabatier Reactor.  It produces liquid fuel and oxidizer while consuming liquid hydrogen and carbon dioxide. It includes a build-in carbon dioxide intake, but could utilize liquid carbon dioxide with the help of some sort of converter.

Ther other part is a small liquid hydrogen tank. It's about the size of an [FL-T100](http://wiki.kerbalspaceprogram.com/wiki/FL-T100_Fuel_Tank), yet contains enough hydrogen to fill an [FL-T800](http://wiki.kerbalspaceprogram.com/wiki/FL-T800_Fuel_Tank) or [X200-8](http://wiki.kerbalspaceprogram.com/wiki/Rockomax_X200-8_Fuel_Tank). Of course, you can use multiple tanks if you need to produce more fuel.

Both parts are located in the Utility category, and are unlocked with the Fuel Systems tech.

Source Code
-----------

Source code is available on [GitHub](https://github.com/jberkman/DunaDirect). It is released under the MIT license.

Copyright (c) 2014, jacob berkman

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.