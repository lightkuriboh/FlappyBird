#include "Bird.h"
#include "math.h"

using namespace cocos2d;

bool Bird::Init() {
	if (!Node::init()) {
		return false;
	}
	
	this->birdTimeline = CSLoader::createTimeline("Bird.csb");
	//birdTimeline->retain();
	return true;
}

void Bird::flyUp() {
	this->setRotation(0.0f);
	//cocos2d::RotateTo* rotate = cocos2d::RotateTo::create(0.2f, std::max(-45.0f, this->getRotation() - 45.0f));
	cocos2d::RotateTo* rotate = cocos2d::RotateTo::create(0.3f, -35.0f);
	cocos2d::MoveBy* moveUp = cocos2d::MoveBy::create(0.3f, Vec2(0, 280));
	cocos2d::Spawn* spawn = cocos2d::Spawn::create(rotate, moveUp, nullptr);
	this->runAction(spawn);
}

void Bird::flyDown() {
	cocos2d::RotateTo* rotate = cocos2d::RotateTo::create(0.3f, std::min(this->getRotation() + 25.0f, 40.0f));
	cocos2d::MoveBy* moveDown = cocos2d::MoveBy::create(0.3f, Vec2(0, -180));	
	cocos2d::Spawn* spawn = cocos2d::Spawn::create(moveDown, rotate, nullptr);
	auto repeat = cocos2d::RepeatForever::create(spawn);
	this->runAction(repeat);
}

void Bird::flap() {
	this->stopAllActions();
	this->runAction(this->birdTimeline);
	this->birdTimeline->play("bird", true);
}

float Bird::getRadius() {
	return this->getChildByName<cocos2d::Sprite*>("bird")->getContentSize().width / 2.0f;
}
