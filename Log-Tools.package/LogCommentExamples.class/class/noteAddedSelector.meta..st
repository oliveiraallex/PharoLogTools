accessing method dictionary
noteAddedSelector: aSelector meta: isMeta
	| class ast |
	class := isMeta ifTrue: [ self class  ] ifFalse: [ self ].
	ast := (class>>aSelector) ast.
	
	LogComments install: ast. 