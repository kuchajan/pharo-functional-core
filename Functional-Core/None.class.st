"
None instance of <Optional>. Contains no value.
"
Class {
	#name : 'None',
	#superclass : 'Option',
	#category : 'Functional-Core-OptionTag',
	#package : 'Functional-Core',
	#tag : 'OptionTag'
}

{ #category : 'comparing' }
None >> contains: aValue [
	"Returns true if <Some> contains aValue, false in all other cases".
	^ false.
]

{ #category : 'testing' }
None >> exists: aBlock [
	^ false.
]

{ #category : 'accessing' }
None >> filter: aBlock [

	^ self
]

{ #category : 'accessing' }
None >> filterNot: aBlock [

	^ self.
]

{ #category : 'converting' }
None >> flat [
	^ self.
]

{ #category : 'converting' }
None >> flatMap: aBlock [
	^self.
]

{ #category : 'converting' }
None >> fold: aBlock ifEmpty: anEmpty [
	^ anEmpty.
]

{ #category : 'accessing' }
None >> getOrDefault: aDefault [
	^aDefault.
]

{ #category : 'testing' }
None >> isDefined [

	^ false.
]

{ #category : 'testing' }
None >> isEmpty [

	^ true.
]

{ #category : 'converting' }
None >> map: aBlock [
	^self.
]

{ #category : 'matching' }
None >> matchSome: someblock none: noneBlock [
	^ noneBlock value.
]
