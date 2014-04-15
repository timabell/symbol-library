Symbol library
==============

A website for managing the symbol libraries used by https://launchpad.net/communication

Where?
======

* Code: <https://github.com/timabell/symbol-library>
* Live site: <http://symbol-library.timwise.co.uk/>

Plan of action
==============

* See [plan](plan.md)

Production configuration
========================

This app is designed for hosting on <http://heroku.com> and as such tries to be a <http://12factor.net/> app.

Environment variables that must be set:

* DEVISE_SECRET_KEY
* SECRET_TOKEN
* MONGO_URL

Secret keys can be set with:

	heroku config:set SECRET_TOKEN=`rake secret`
	heroku config:set DEVISE_SECRET_KEY=`rake secret`

The mongo url can be obtained from <http://mongohq.com>

Due to the use of Devise <https://github.com/plataformatec/devise> for authenticating uses, the DEVISE_SECRET_TOKEN environment variable has to be available at build-time; this is not a default in heroku as it violates one of the 12 factor rules.

Enable user-env-compile <https://devcenter.heroku.com/articles/labs-user-env-compile>

	heroku labs:enable user-env-compile   # Run this from app directory

The `heroku` command is provided by the heroku toolbelt <https://toolbelt.heroku.com/>

Local development
=================

* install mongo

License - Affero GPL v3
=======================

Copyright (C) 2013 Tim Abell <tim@timwise.co.uk> and other contributors

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
