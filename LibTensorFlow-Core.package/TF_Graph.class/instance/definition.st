accessing
definition
	| buffer status |
	status := TF_Status create.
	buffer := TF_Buffer new.
	self library graph: self toGraphDef: buffer status: status.
	status check.
	^ buffer dataBytes asString