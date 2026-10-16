"
Left instance of <Either>. Typically contains a desired value, but the implementation tries to be orientation agnostic.
"
Class {
	#name : 'EitherLeft',
	#superclass : 'Either',
	#category : 'Functional-Core-EitherTag',
	#package : 'Functional-Core',
	#tag : 'EitherTag'
}

{ #category : 'converting' }
EitherLeft >> flatMapLeft: aBlock [
	"Maps the value via the block if this is instance of <EitherLeft> and returns the result, otherwise returns itself with no changes."
	^ aBlock value: val.
]

{ #category : 'converting' }
EitherLeft >> flatMapRight: aBlock [
	"Maps the value via the block if this is instance of <EitherRight> and returns the result, otherwise returns itself with no changes."
	^ self.
]

{ #category : 'testing' }
EitherLeft >> isLeft [
	"Returns true if <Either> is a <EitherLeft>, false otherwise"
	^ true.
]

{ #category : 'testing' }
EitherLeft >> isRight [
	"Returns true if <Either> is a <EitherRight>, false otherwise"
	^ false.
]

{ #category : 'converting' }
EitherLeft >> mapLeft: aBlock [
	"Maps the value via the block if this is instance of <EitherLeft> and returns a new instance of <EitherLeft>, otherwise returns itself with no changes."
	^ Either left: (aBlock value: val).
]

{ #category : 'converting' }
EitherLeft >> mapRight: aBlock [
	"Maps the value via the block if this is instance of <EitherRight> and returns a new instance of <EitherRight> with result value, otherwise returns itself with no changes."
	^ self.
]
