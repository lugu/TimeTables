Class {
	#name : 'TTBlElementAdapter',
	#superclass : 'SpToploWidgetAdapter',
	#traits : 'SpToploTWithContextMenu',
	#classTraits : 'SpToploTWithContextMenu classTrait',
	#category : 'TimeTables-BlocSpec-Adapters',
	#package : 'TimeTables-BlocSpec',
	#tag : 'Adapters'
}

{ #category : 'factory' }
TTBlElementAdapter >> buildWidget [
	self presenter whenElementChangedDo: [ self updateAll ].
	^ ToElement new
]

{ #category : 'factory' }
TTBlElementAdapter >> element [
	^ widget children at: 1 ifAbsent: [ nil ]
]

{ #category : 'factory' }
TTBlElementAdapter >> updateAll [

	super updateAll.
	self updateElement
]

{ #category : 'factory' }
TTBlElementAdapter >> updateElement [
	widget removeChildren.
	model element ifNotNil: [ widget addChild: model element ]
]
