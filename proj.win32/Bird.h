#pragma once
#include "cocos2d.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "Constant.h"

class Bird : public cocos2d::Sprite {
public:
	CREATE_FUNC(Bird);
	bool Init();
	void flyUp();
	void flyDown();
	void flap();
	float getRadius();

protected:

	float xPosition, yPosition;

	cocostudio::timeline::ActionTimeline* birdTimeline;

	
};

