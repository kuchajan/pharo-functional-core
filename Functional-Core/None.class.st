Class {
	#name : 'None',
	#superclass : 'Option',
	#category : 'Functional-Core-OptionTag',
	#package : 'Functional-Core',
	#tag : 'OptionTag'
}

{ #category : 'converting' }
None >> flatMap: aBlock [
	^self.
]

{ #category : 'as yet unclassified' }
None >> getOrDefault: aDefault [
	^aDefault.
]

{ #category : 'converting' }
None >> map: aBlock [
	^self.
]

{ #category : 'matching' }
None >> matchSome: someblock none: noneBlock [
	^ noneBlock value.
]
