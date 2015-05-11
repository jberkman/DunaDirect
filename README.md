DunaDirect 0.3
==============

Inspiration
-----------

DunaDirect is a mod for Kerbal Space Program inspired by the Mars Direct plan. One of the main components of the plan is to utilize the [Sabatier Process](http://en.wikipedia.org/wiki/Sabatier_reaction) to produce methane and oxygen using the carbon dioxide already present in the Martian atmosphere. This affords a significant weight saving (one unit of hydrogen produces about 18 units of methane and liquid oxygen), requiring much less fuel to reach Mars, and fewer parachutes to land on its surface.

For more information, I highly recommend watching [this 1990 presentation](http://www.youtube.com/watch?v=vD3U0QcEYXs).

I really wanted to do a similar mission in KSP, but was unhappy with my options. Kethane mining was a little too science-fictiony, and the ISRU was removed from the 0.24 port of InterStellar. After a bit of deliberating, I decided to bite the bullet and try to write a mod of my own. Fortunately, it wasn't that difficult, and with KSP 1.0 it works with the stock ISRU.

Dependencies
------------

Tested with KSP 1.0.2.

Includes files from [Community Resource Pack](https://github.com/BobPalmer/CommunityResourcePack/releases); you can use an existing copy or the files included in GameData.

Requires [ModuleManager](https://github.com/sarbian/ModuleManager/releases); a version is included in GameData.

Installation
------------

Copy the DunaDirect folder into your GameData folder, just like other mods. Copy CommunityResourcePack and ModuleManager if not already installed.

If you are upgrading from version 0.1, and have existing craft with parts from 0.1, rename your old DunaDirect folder something like DunaDirect-0.1.

Parts
-----

The stock Atmospheric Fluid Spectro-Variometer has been extended with an ISRU Sabatier reactor. This will convert liquid hydrogen and carbon dioxide into liquid fuel and oxidixer.

The [FL-T100](http://wiki.kerbalspaceprogram.com/wiki/FL-T100_Fuel_Tank) and [X200-8](http://wiki.kerbalspaceprogram.com/wiki/Rockomax_X200-8_Fuel_Tank) can now store liquid hydrogen; you're on the honour system for disabling liquid fuel and oxidizer when using these tanks for hydrogen! The tanks include enough Hydrogen to fill a [FL-T800](http://wiki.kerbalspaceprogram.com/wiki/FL-T800_Fuel_Tank)/[X200-8](http://wiki.kerbalspaceprogram.com/wiki/Rockomax_X200-8_Fuel_Tank) and [Jumbo-64](http://wiki.kerbalspaceprogram.com/wiki/Rockomax_Jumbo-64_Fuel_Tank) respectively.

Carbon dioxide can be obtained by using any of the stock intakes on bodies containing carbon dioxide (Eve, Kerbin, Duna, and Laythe), or from a waste storage container when using TAC Life Support.

Source Code
-----------

Source code is available on [GitHub](https://github.com/jberkman/DunaDirect). It is released under the MIT license.

Copyright (c) 2014-2015, jacob berkman

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Thanks!
