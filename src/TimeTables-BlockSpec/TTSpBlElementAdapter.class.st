Class {
	#name : 'TTSpBlElementAdapter',
	#superclass : 'SpToploWidgetAdapter',
	#traits : 'SpToploTWithContextMenu',
	#classTraits : 'SpToploTWithContextMenu classTrait',
	#category : 'TimeTables-BlockSpec-Adapters',
	#package : 'TimeTables-BlockSpec',
	#tag : 'Adapters'
}

{ #category : 'factory' }
TTSpBlElementAdapter >> buildWidget [

	^ ToElement new
]

{ #category : 'accessing' }
TTSpBlElementAdapter >> element [
	^ widget children at: 1 ifAbsent: [ nil ]
]

{ #category : 'factory' }
TTSpBlElementAdapter >> updateAll [

	super updateAll.
	self updateElement
]

{ #category : 'factory' }
TTSpBlElementAdapter >> updateElement [
	widget removeChildren.
	model element ifNotNil: [ widget addChild: model element ]
]
