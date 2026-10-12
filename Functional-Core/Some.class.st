Class {
	#name : 'Some',
	#superclass : 'Option',
	#instVars : [
		'val'
	],
	#category : 'Functional-Core-OptionTag',
	#package : 'Functional-Core',
	#tag : 'OptionTag'
}

{ #category : 'converting' }
Some >> flatMap: aBlock [
	^ aBlock value: val.
]

{ #category : 'as yet unclassified' }
Some >> getOrDefault: aDefault [
	^val.
]

{ #category : 'converting' }
Some >> map: aBlock [
	^ Option some: (aBlock value: val).
]

{ #category : 'matching' }
Some >> matchSome: someblock none: noneBlock [
	^ someblock value: val.
]
