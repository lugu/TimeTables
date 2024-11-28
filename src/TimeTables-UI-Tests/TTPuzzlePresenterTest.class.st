Class {
	#name : 'TTPuzzlePresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-UI-Tests',
	#package : 'TimeTables-UI-Tests'
}

{ #category : 'tests' }
TTPuzzlePresenterTest >> testOpenClose [
	TTPuzzlePresenter new
		open;
		delete.
]
