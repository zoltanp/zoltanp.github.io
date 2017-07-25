---
layout: post
title:  "KTechLab is coming back"
date:   2017-06-17 08:00:00
categories: ktechlab kde
---

KTechLab, the IDE for microcontrollers and electronics has joined KDE.
Below I'm summarizing its current status and plans.

Status of KTechLab
---

The very good news is that KTechLab builds and runs on recent Linux distribution.
Circuit simulation works well.

![Circuit simulation]({{ site.url }}/assets/2017-06-17-ktechlab-1-circuit-sim.png)

Currently KTechLab depends on Qt4 and KDE4, 
but it should be migrated to Qt5/KF5 (KDE Frameworks 5) as soon as possible.

![KDE4 and Qt4 are dependencies]({{ site.url }}/assets/2017-06-17-ktechlab-2-about-kde.png)

Flowcode, the graphical editor of programs, also works. 
It can convert the edited flowchart to assembly source for hex program for PIC microcontroller,
or to the simple language for micorcontroller programming called Microbe.

![Flowcode works]({{ site.url }}/assets/2017-06-17-ktechlab-3-flowcode.png)

Currently loading programs on simulated microcontrollers needs to be fixed.

![PIC microcontroller simulation needs work]({{ site.url }}/assets/2017-06-17-ktechlab-4-pic.png)

Loading and debugging C code on simulated PIC microcontroller also needs more work.

![Code debugging on microcontroller needs work]({{ site.url }}/assets/2017-06-17-ktechlab-5-c-code.png)


Plans
---

1. Firstly I'd like to have KTechLab running with all features in usable state and have a release.
Qt4 and KDE4 is still mostly around, but I'm aware that it is getting deprecated.

2. After the release is done, port KTechLab to Qt5 and KF5, and have another release.

3. Keep KTechLab running on latest Qt and KDE libraries, and if requested, add new features.


Resources
---

KTechLab has a mailing list at KDE called `ktechlab-devel`:
[https://mail.kde.org/mailman/listinfo/ktechlab-devel](https://mail.kde.org/mailman/listinfo/ktechlab-devel)

On IRC, developers are mostly reachable on `freenode.net`, on `#ktechlab` channel.

The source code of KTechLab is available in KDE Git, at 
[https://cgit.kde.org/ktechlab.git/](https://cgit.kde.org/ktechlab.git/)
 (note: I'm aware that this link is not a "stable" one, but for now I couldn't figure out the "stable" link).
 
Instructions for building and running KTechLab are available in the README file from the source code; online version of that file is available at 
[https://cgit.kde.org/ktechlab.git/tree/README](https://cgit.kde.org/ktechlab.git/tree/README)
 ; The very short instructions are: run `sh simple-setup.sh` and then `sh simple-launch.sh`.

The notes from joining KDE: 
[https://community.kde.org/Incubator/Projects/KTechLab](https://community.kde.org/Incubator/Projects/KTechLab)

KTechLab bugs at KDE bugtracker: 
[https://bugs.kde.org/buglist.cgi?quicksearch=ktechlab](https://bugs.kde.org/buglist.cgi?quicksearch=ktechlab)

Old website of KTechLab, to be migrated to KDE infrastruture:
[https://github.com/ktechlab/ktechlab/wiki](https://github.com/ktechlab/ktechlab/wiki)

Source code of the old website, in KDE Git:
[https://cgit.kde.org/scratch/padrah/ktechlab.wiki.git/](https://cgit.kde.org/scratch/padrah/ktechlab.wiki.git/)


Contributions are welcome
---

There are several areas where contributions could greatly help the project:

* Making all features of KTechLab work in Qt4 port;

* Making the codebase of KTechLab ready for Qt5. 
  Before having the first, Qt4 release, please only add fixes which do not break the Qt4 version. 

* Website is needed, on KDE infrastructure. 
  Maybe it would make sense splitting the old website into a wiki and a separate website.
  
* Example circuits/projects created with KTechLab. These in turn could be also useful as test cases.

* Anything else you can think of :-)

Contact
---
I recommand using the mailing list `ktechlab-devel` at KDE; alternatively try IRC, `#ktechlab` on freenode.net.


Update 1: replaced KDE5 with KDE Frameworks 5 (KF5).

