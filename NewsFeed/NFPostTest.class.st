Class {
	#name : #NFPostTest,
	#superclass : #TestCase,
	#category : #NewsFeed
}

{ #category : #tests }
NFPostTest >> testWithoutCategoryIsUncategorized [
	| post |
	post:= NFPost title: 'Is this a test post?? Click to find out' text: 'Yes, this is a test post with some text, look at me hey'.
	self assert: post category equals: NFPost uncategorizedTag.
	self deny: post isVisible.
]
