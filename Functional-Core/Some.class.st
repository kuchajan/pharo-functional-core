"
Some instance of <Optional>. Contains value.
"
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

{ #category : 'instance creation' }
Some class >> new [
	

	^ (thisContext sender receiver = Some) ifTrue: [ super new ] ifFalse: [ self error: 'Instantiation of <Some> is protected. Use <Option some: aValue>'] .
]

{ #category : 'instance creation' }
Some class >> new: aValue [
	
	^ self new val: aValue.
]

{ #category : 'comparing' }
Some >> contains: aValue [
	^ val = aValue.
]

{ #category : 'testing' }
Some >> exists: aBlock [

	^ aBlock value: val.
]

{ #category : 'accessing' }
Some >> filter: aBlock [

	^ (aBlock value: val) ifTrue: [ self ] ifFalse: [ Option none ].
]

{ #category : 'accessing' }
Some >> filterNot: aBlock [

	^ (aBlock value: val) ifTrue: [ Option none ] ifFalse: [ self	]. 
]

{ #category : 'converting' }
Some >> flat [
	^ (val class = Some) ifTrue: [ val ] ifFalse: [ Option none ].
]

{ #category : 'converting' }
Some >> flatMap: aBlock [
	^ aBlock value: val.
]

{ #category : 'converting' }
Some >> fold: aBlock ifEmpty: anEmpty [
	^ aBlock value: val.
]

{ #category : 'accessing' }
Some >> getOrDefault: aDefault [
	^val.
]

{ #category : 'testing' }
Some >> isDefined [

	^ true.
]

{ #category : 'testing' }
Some >> isEmpty [

	^ false.
]

{ #category : 'converting' }
Some >> map: aBlock [
	^ Option some: (aBlock value: val).
]

{ #category : 'matching' }
Some >> matchSome: someblock none: noneBlock [
	^ someblock value: val.
]

{ #category : 'accessing' }
Some >> val: aValue [
<private>
	val := aValue.

]
