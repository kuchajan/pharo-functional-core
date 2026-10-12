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
	^ Some new value: aValue.

]

{ #category : 'converting' }
Option >> flatMap: aBlock [
	self subclassResponsibility.
]

{ #category : 'as yet unclassified' }
Option >> getOrDefault: aDefault [
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
