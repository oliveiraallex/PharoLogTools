private
recordLink: aLink
	links ifNil: [links := OrderedCollection new ].
	links add: aLink