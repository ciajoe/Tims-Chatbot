###
# Log handler
# 
# This handler spits out every message it receives via `debug`.
# 
# Chatbot for Tim's Chat 3
# Copyright (C) 2011 - 2014 Tim Düsterhus
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
###

debug = (require 'debug')('Chatbot:handlers:log')

handleMessage = (message, callback) ->
	debug "[#{message.username}] #{message.message}"
	callback?()

module.exports =
	handleMessage: handleMessage
	handleUser: (user, callback) -> callback?()
	unload: (callback) -> callback?()
