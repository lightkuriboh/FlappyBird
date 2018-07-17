#pragma once
#include "cocos2d.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "Constant.h"

class Tube : public cocos2d::Node {
public:
	CREATE_FUNC(Tube);
	bool init() override;
	
	float getHeight(Side _side);
	float getWidth();
	void makeTube();
	float getRealHeight();
	float getRealWidth();
	const float dist = 200.0f;
	
protected:

	
	float scaleYTop, scaleYBot;
	float scaleX;
	cocos2d::Sprite* getTube(std::string topbot);	
};

