---
layout: post
title:  "Fixing GTK3 themes for scrollable areas"
date:   2017-06-12 22:00:00
categories: ktechlab
---

With GTK3 in Ubuntu 16.04 on XFCE desktop environment, some 
applications have started to show grey rectangles in vertically scrollable 
regions. These grey rectangles covered the useful contents of the scrollable 
regions.
The end result is that scrollable regions appear as if they have 
graphical corruption in them.

Apparently these grey rectangles are called scrolling indicators and 
they appear as grey because the used GTK theme does not set any styling 
on them. See this stackoverflow question:

https://unix.stackexchange.com/questions/250880/how-to-disable-or-fix-gt
k-scrolling-indicators

and this Ubuntu bug:

https://bugs.launchpad.net/ubuntu/+source/ubuntu-themes/+bug/1449515

I'm copying the fix from Stackoverflow:


	To fix issue on fedora with light-gtk3-theme v14.04 i added this CSS to 
	/usr/share/themes/Ambiance/gtk-3.0/gtk-widgets.css:

	/*************
	 * overshoot *
	 *************/
	.overshoot.top {
		background: -gtk-gradient(radial, center top, 0, center top, 0.7, 
	from(shade(@bg_color, 0.92)), to(alpha(@bg_color, 0.0)));
	}

	.overshoot.right {
		background: -gtk-gradient(radial, right center, 0, right center, 
	0.7, from(shade(@bg_color, 0.92)), to(alpha(@bg_color, 0.0)));
	}

	.overshoot.bottom {
		background: -gtk-gradient(radial, center bottom, 0, center bottom, 
	0.7, from(shade(@bg_color, 0.92)), to(alpha(@bg_color, 0.0)));
	}

	.overshoot.left {
		background: -gtk-gradient(radial, left center, 0, left center, 0.7, 
	from(shade(@bg_color, 0.92)), to(alpha(@bg_color, 0.0)));
	}

	/**************
	 * undershoot *
	 **************/
	.undershoot {
		background: none;
	}

Instead of `/usr/share/themes/Ambiance/gtk-3.0/gtk-widgets.css`, one can edit the
`gtk-widgets.css` file corresponding of the GTK theme in use.
