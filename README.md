# Fcols

Fcols (Format COLumnS) is an utility for text processing, mainly aimed to process source code.
It fills incoming text by given separators using spaces to produce aligned version of the text.
E.g., incoming text:

	QTest::addColumn<QString>("cityName");
	QTest::addColumn<bool>("success");
	// function(argument);
	QTest::addColumn<QChar>("currentLetter");
	QTest::addColumn<int>("error");

Ran with arguments `'("' ')'` it will produce resulting text looking like this:

	QTest::addColumn<QString>("cityName"     );
	QTest::addColumn<bool>   ("success"      );
	// function(argument);
	QTest::addColumn<QChar>  ("currentLetter");
	QTest::addColumn<int>    ("error"        );

Notice that parenthesis inside comment line isn't touched because they're not meeting `("` condition.

## Usage

Usage:
	
	... | fcols <separator>... | ...

Remember to escape separators as some of them could be part of shell syntax.

It can be also used in editors that support external commands like ViM: select some text in selection mode and run command `:! fcols <args>`.

## Installation

No installation needed, just put `fcols` file somewhere in the $PATH.
