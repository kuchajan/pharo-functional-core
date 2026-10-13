"
Optional container. Instances of this class are either <None> or <Some> when value is present.
"
Class {
	#name : 'Option',
	#superclass : 'Object',
	#category : 'Functional-Core-OptionTag',
	#package : 'Functional-Core',
	#tag : 'OptionTag'
}

{ #category : 'instance' }
Option class >> none [
	^ None new.

]

{ #category : 'instance' }
Option class >> some: aValue [
	"^ Some new instVarNamed: 'val' put: aValue."
	^ Some new: aValue.

]

{ #category : 'comparing' }
Option >> contains: aValue [
	"Returns true if <Some> contains aValue, false in all other cases".
	self subclassResponsibility.
]

{ #category : 'testing' }
Option >> exists: aBlock [
"Returns true in <Some> contains value which satisfies aBlock. Returns false in all other cases."
	self subclassResponsibility.
]

{ #category : 'accessing' }
Option >> filter: aBlock [
	"Returns <Optional> with value of this <Optional> IFF this <Optional> is <Some> and satisfies <aPredicate>. In all other cases <None> is returned."

	self subclassResponsibility.
]

{ #category : 'accessing' }
Option >> filterNot: aBlock [
	"Returns <Optional> with value of this <Optional> IFF this <Optional> is <Some> and does not satisfy <aBlock>. In all other cases <None> is returned."

	self subclassResponsibility.
]

{ #category : 'converting' }
Option >> flat [
	self subclassResponsibility.
]

{ #category : 'converting' }
Option >> flatMap: aBlock [
	self subclassResponsibility.
]

{ #category : 'converting' }
Option >> fold: aBlock ifEmpty: anEmpty [

	self subclassResponsibility.
]

{ #category : 'accessing' }
Option >> getOrDefault: aDefault [
	self subclassResponsibility.
]

{ #category : 'testing' }
Option >> isDefined [

	self subclassResponsibility.
]

{ #category : 'testing' }
Option >> isEmpty [

	self subclassResponsibility.
]

{ #category : 'converting' }
Option >> map: aBlock [
	self subclassResponsibility.
]

{ #category : 'matching' }
Option >> matchSome: someblock none: noneBlock [
	self subclassResponsibility.
]
