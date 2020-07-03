as yet unclassified
install: aClassMethod
	| log |
	log := MetaLink new 
	metaObject: Transcript;
	selector: #show:;
	arguments: { RFLiteralVariableNode value: (((aClassMethod) ast allComments)  do: [ :comments | 	LogComments show: (comments ) ]) }.
		
	aClassMethod ast link: log.