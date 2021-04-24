"
I'm a News Feed Post.

I'm a news post with a text.
"
Class {
	#name : #NFPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'category',
		'date',
		'hidden',
		'author'
	],
	#category : #NewsFeed
}

{ #category : #'instance creation' }
NFPost class >> title: aTitleText text: aText [
	^ self new 
		title: aTitleText;
		text: aText;
		yourself
]

{ #category : #'instance creation' }
NFPost class >> title: aTitleText text: aText category: aCategoryText [
	^ self new 
		title: aTitleText;
		text: aText;
		category: aCategoryText;
		yourself
]

{ #category : #tag }
NFPost class >> uncategorizedTag [
	^ 'Uncategorized'
]

{ #category : #accessing }
NFPost >> author [
	^ author
]

{ #category : #accessing }
NFPost >> author: anObject [
	author := anObject
]

{ #category : #accessing }
NFPost >> category [
	^ category
]

{ #category : #accessing }
NFPost >> category: anObject [
	category := anObject
]

{ #category : #accessing }
NFPost >> date [
	^ date
]

{ #category : #accessing }
NFPost >> date: anObject [
	date := anObject
]

{ #category : #accessing }
NFPost >> hidden [
	^ hidden
]

{ #category : #accessing }
NFPost >> hidden: anObject [
	hidden := anObject
]

{ #category : #initialization }
NFPost >> initialize [
	self date: Date today.
	self makeNotVisible.
	self category: self class uncategorizedTag.
	
]

{ #category : #action }
NFPost >> isCategorize [
	^ category isNotNil
]

{ #category : #action }
NFPost >> isVisible [
	^ hidden not
]

{ #category : #action }
NFPost >> makeNotVisible [
	self hidden: true.
]

{ #category : #action }
NFPost >> makeVisible [
	self hidden: false.
]

{ #category : #accessing }
NFPost >> text [
	^ text
]

{ #category : #accessing }
NFPost >> text: anObject [
	text := anObject
]

{ #category : #accessing }
NFPost >> title [
	^ title
]

{ #category : #accessing }
NFPost >> title: anObject [
	title := anObject
]
