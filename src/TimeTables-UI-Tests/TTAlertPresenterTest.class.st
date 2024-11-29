Class {
	#name : 'TTAlertPresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-UI-Tests',
	#package : 'TimeTables-UI-Tests'
}

{ #category : 'tests' }
TTAlertPresenterTest >> testResize [
	| ap |
	ap := TTAlertPresenter new.
	ap textMessage: 'Hello' buttonLabel: 'ok' action: [ Transcript show: 'done'; cr ].
	ap open.
	ap delete.
]
