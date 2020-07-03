install/remove
install: ast
	| commentsToLog link commentString  nodeToInstall|
	
	commentsToLog := ast allComments select: [ :each | each contents beginsWith: '!' ].
	
	commentsToLog do: [ :comment | 	
		commentString := comment contents.
		nodeToInstall := comment parent.
		"nodeToInstall isBlock ifTrue: [nodeToInstall := nodeToInstall body ]."
		
		link := MetaLink new 
			metaObject: self;
			selector: #show:;
			control: (nodeToInstall isMethod ifTrue: [ #before ] ifFalse: [#after]);
			arguments: { RFLiteralVariableNode value: commentString }.
		self recordLink: link.
		comment parent link: link.
		
	]