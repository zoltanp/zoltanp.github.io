---
layout: post
title:  "KTechLab and PIC program simulation: .cod creation?"
date:   2017-02-26 22:30:00
categories: ktechlab
---
KTechLab (
[Github wiki](https://github.com/ktechlab/ktechlab/wiki) ;
[KDE Git repository](https://cgit.kde.org/ktechlab.git/)
)
in its current state is able to simulate circuits,
but it fails to simulate PICs with uploaded .c or .asm program,
because it is not able to properly generate .cod file from the
source code.

For simulating a PIC program, KTechLab needs to load
a .cod file into [gpsim](http://gpsim.sourceforge.net/).

Help is welcome in:

* documenting proper sdcc/gplink/gpasm usage for .cod file creation
   (no C++ coding is required for this ;-) );
* creating a few sample programs/projects for PICs, to be used for
   quick testing and included as a sample with KTechLab;

At the time of writing there is a junior C++ task, too:

* fixing KTechLab to actually compile the GPSim support, when it finds
   GPSim. Currently this is broken, because the `NO_GPSIM` macro
   ends up defined always. This macro should be converted to the
   `GPSim_FOUND` macro (and the negative logic removed).

If you feel like contributing to KTechLab,
please contact the project on the mailing list or on IRC.

Have fun with KTechLab!
