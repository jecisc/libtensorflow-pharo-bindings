running
runOperation: aTF_Operation output: aTF_Output
	| operations  answer outputs |
	operations := TF_OperationPtrArray externalNew: 1.
	outputs := TF_OutputArray externalNew: 1.
	outputs first: aTF_Output.
	
	operations first: aTF_Operation.	
	answer := self runOperations: operations outputs: outputs size: 1.

	^ answer first