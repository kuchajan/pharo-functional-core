"
Right instance of <Either>. Typically contains an error value, but the implementation tries to be orientation agnostic.
"
Class {
	#name : 'EitherRight',
	#superclass : 'Either',
	#category : 'Functional-Core-EitherTag',
	#package : 'Functional-Core',
	#tag : 'EitherTag'
}

{ #category : 'converting' }
EitherRight >> flatMapLeft: aBlock [
	"Maps the value via the block if this is instance of <EitherLeft> and returns the result, otherwise returns itself with no changes."
	^ self.
]

{ #category : 'converting' }
EitherRight >> flatMapRight: aBlock [
	"Maps the value via the block if this is instance of <EitherRight> and returns the result, otherwise returns itself with no changes."
	^ aBlock value: val.
]

{ #category : 'testing' }
EitherRight >> isLeft [
	"Returns true if <Either> is a <EitherLeft>, false otherwise"
	^ false.
]

{ #category : 'testing' }
EitherRight >> isRight [
	"Returns true if <Either> is a <EitherRight>, false otherwise"
	^ true.
]

{ #category : 'converting' }
EitherRight >> mapLeft: aBlock [
	"Maps the value via the block if this is instance of <EitherLeft> and returns a new instance of <EitherLeft>, otherwise returns itself with no changes."
	^ self.
]

{ #category : 'converting' }
EitherRight >> mapRight: aBlock [
	"Maps the value via the block if this is instance of <EitherRight> and returns a new instance of <EitherRight> with result value, otherwise returns itself with no changes."
	^ Either right: (aBlock value: val).
]
