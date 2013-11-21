The plan
========

I did start writing [cucumber](http://cukes.info) tests for this project but so far it seems overkill, so here's a plain text plain english dump of my plans for this project.

Mission
=======

See [README.md]

Site usage policies
===================

* Real names - discourages bad behaviour of 'anonymous' users
* Real validated email addresses - communications between and to users
* All uploads must be under a 'copyleft' license - to allow modification & re-sharing
* All users must have permission to upload the files either by being the original authors of the library and all images therein, or through licenses allowing them to redistribute the works

The site should encourage this behaviour with prompts, warnings etc. c.f. wikipedia, stackoverflow and ahow they run their communities.

Planned features
================

This is a bit of a daydreaming exercise so take it with a pinch of salt:

* Ability to add named torrent files
	* Admin notification of all uploads
	* Ownership of uploaded files
* Sign-on
	* Email validation
* Sign-in
* Anti-spam measures
	* Anything postable
* Anti-virus measures
	* Scan files remotely and notify server
	* Separate service
	* API with admin-esque auth for taking taking down files
	* UI for taken down files
	* Admin & user notification
* Preview / try-out features
	* We viewer for libraries? Would need hosting, bandwidth considerations.
* APIs for mobile apps to list & download library(s)
* Guidance for users on license
* Feedback mechanism, to encourage users to let me know what is good and bad about the service, and suggest changes
	* Email address
	* Feedback API for apps to use
* Ratings / feedback for individual libraries
	* Notifications to authors
* Front page with links to app(s), raison d'etre, etc.
* Report a file button (for admin action)
* Admin user(s)
	* Delete (hide) reported files
	* Kick off / block users
* Backup of data
* Preview environment
	* Clone of live data on demand
* Automated regression testing
	* BDD
	* Integration
	* Service
	* Unit


About this doc
==============

~ Tim Abell <tim@timwise.co.uk>, Nov 2013
