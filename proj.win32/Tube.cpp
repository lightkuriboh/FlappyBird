#include "Tube.h"
#include <stdlib.h>
#include <time.h>

using namespace cocos2d;

bool Tube::init() {
	if (!Node::init()) {
		return false;
	}

	return true;
}

cocos2d::Sprite* Tube::getTube(std::string topbot) {
	return this->getChildByName<Sprite*>(topbot);
}

float Tube::getRealHeight() {
	return this->getTube("top")->getContentSize().height;
}

float Tube::getRealWidth() {
	return this->getTube("top")->getContentSize().width;
}

float Tube::getHeight(Side _side) {
	float scaleY = this->scaleYBot;
	if (_side == Side::Top)
		scaleY = this->scaleYTop;
	return this->getRealHeight() * scaleY;
}

float Tube::getWidth() {
	float _scaleX = this->scaleX;
	return this->getRealWidth() * scaleX;
}

void Tube::makeTube() {	

	Sprite* topTube = this->getTube("top");
	Sprite* botTube = this->getTube("bot");

	this->setContentSize(Size(52, 840));

	float _scaleYTop = 0.25f + float(rand() % 75) / 100.0f;	
	float _scaleYBot = 2.0f - _scaleYTop;

	if (rand() % 2 == 0) {
		std::swap(_scaleYTop, _scaleYBot);
	}	
	
	this->scaleYTop = _scaleYTop;
	this->scaleYBot = _scaleYBot;
	this->scaleX = 1.0f;

	topTube->setScaleY(_scaleYTop);
	botTube->setScaleY(_scaleYBot);
}

