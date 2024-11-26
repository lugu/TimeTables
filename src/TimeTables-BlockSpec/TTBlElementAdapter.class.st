Class {
	#name : 'TTBlElementAdapter',
	#superclass : 'SpToploWidgetAdapter',
	#traits : 'SpToploTWithContextMenu',
	#classTraits : 'SpToploTWithContextMenu classTrait',
	#category : 'TimeTables-BlockSpec-Adapters',
	#package : 'TimeTables-BlockSpec',
	#tag : 'Adapters'
}

{ #category : 'factory' }
TTBlElementAdapter >> buildWidget [
	self presenter whenElementChangedDo: [ self updateAll ].
	^ ToElement new
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
