#!/usr/bin/env lua5.3
--- Command line utility to update projects hosted on GitHub

local lsh = require 'lsh'
local inspect = require 'inspect'
unpack = table.unpack
require 'strong'

local old_commit = lsh 'git rev-parse HEAD'

print 'Checking for updates...'
if not select(2, lsh 'git pull origin master') then
	print 'Can not pull upgrades.'
	return
end

local new_commit = lsh 'git rev-parse HEAD'
print(old_commit:sub(1, 7), "->", new_commit:sub(1, 7))

if old_commit == new_commit then
	print 'It is already up-to-date.'
	return
end

local new_commits = lsh('git log --oneline %s...%s' % {old_commit, new_commit}) / '\n'
local changes = {}

for i, commit in ipairs(new_commits) do
	local name, category = table.unpack(commit / '@')

	category = category or "other"
	if changes[category] == nil then
		changes[category] = {}
	end

	table.insert(changes[category], name)
end

for category, collection in pairs(changes) do
	print('[%s]' % category)
	for _, change in pairs(collection) do
		print("- " .. change)
	end
	print()
end
