"
Either container. Instances of this class are either <EitherLeft>, which typically contains a desired value, or <EitherRight>, which typically contains an error value. This implementation tries to be orientation agnostic.
"
Class {
	#name : 'Either',
	#superclass : 'Object',
	#instVars : [
		'val'
	],
	#category : 'Functional-Core-EitherTag',
	#package : 'Functional-Core',
	#tag : 'EitherTag'
}

{ #category : 'instance' }
Either class >> left: aVal [
	EitherLeft new val: aVal.
]

{ #category : 'instance' }
Either class >> right: aVal [
	EitherRight new val: aVal.
]

{ #category : 'converting' }
Either >> flatMapLeft: aBlock [
	"Maps the value via the block if this is instance of <EitherLeft> and returns the result, otherwise returns itself with no changes."
	^ self subclassResponsibility.
]

{ #category : 'converting' }
Either >> flatMapRight: aBlock [
	"Maps the value via the block if this is instance of <EitherRight> and returns the result, otherwise returns itself with no changes."
	^ self subclassResponsibility.
]

{ #category : 'testing' }
Either >> isLeft [
	"Returns true if <Either> is a <EitherLeft>, false otherwise"
	^ self subclassResponsibility.
]

{ #category : 'testing' }
Either >> isRight [
	"Returns true if <Either> is a <EitherRight>, false otherwise"
	^ self subclassResponsibility.
]

{ #category : 'converting' }
Either >> mapLeft: aBlock [
	"Maps the value via the block if this is instance of <EitherLeft> and returns a new instance of <EitherLeft>, otherwise returns itself with no changes."
	^ self subclassResponsibility.
]

{ #category : 'converting' }
Either >> mapRight: aBlock [
	"Maps the value via the block if this is instance of <EitherRight> and returns a new instance of <EitherRight> with result value, otherwise returns itself with no changes."
	^ self subclassResponsibility.
]

{ #category : 'accessing' }
Either >> val: anObject [

	val := anObject
]
