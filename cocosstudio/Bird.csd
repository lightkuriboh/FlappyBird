<GameFile>
  <PropertyGroup Name="Bird" Type="Node" ID="24d818ee-1d81-490c-8b98-ad8ed13acce7" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="113" Speed="1.0000" ActivedAnimationName="up">
        <Timeline ActionTag="-1473781119" Property="Position">
          <PointFrame FrameIndex="1" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="21" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="22" X="68.0000" Y="47.9989">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="67" X="0.0000" Y="100.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="68" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="113" X="0.0000" Y="-100.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-1473781119" Property="RotationSkew">
          <ScaleFrame FrameIndex="1" X="0.0000" Y="0.0009">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="21" X="0.0000" Y="-0.0002">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="22" X="0.0000" Y="0.0009">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="67" X="-57.7039" Y="-57.7022">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="68" X="0.0000" Y="0.0009">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="113" X="84.3940" Y="84.3936">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-1473781119" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="True" />
          <BoolFrame FrameIndex="1" Tween="False" Value="True" />
          <BoolFrame FrameIndex="22" Tween="False" Value="True" />
          <BoolFrame FrameIndex="68" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="-1473781119" Property="FileData">
          <TextureFrame FrameIndex="1" Tween="False">
            <TextureFile Type="Normal" Path="redbird-upflap.png" Plist="" />
          </TextureFrame>
          <TextureFrame FrameIndex="6" Tween="False">
            <TextureFile Type="Normal" Path="redbird-midflap.png" Plist="" />
          </TextureFrame>
          <TextureFrame FrameIndex="11" Tween="False">
            <TextureFile Type="Normal" Path="redbird-downflap.png" Plist="" />
          </TextureFrame>
          <TextureFrame FrameIndex="16" Tween="False">
            <TextureFile Type="Normal" Path="redbird-midflap.png" Plist="" />
          </TextureFrame>
          <TextureFrame FrameIndex="21" Tween="False">
            <TextureFile Type="Normal" Path="redbird-upflap.png" Plist="" />
          </TextureFrame>
          <TextureFrame FrameIndex="22" Tween="False">
            <TextureFile Type="Normal" Path="redbird-upflap.png" Plist="" />
          </TextureFrame>
          <TextureFrame FrameIndex="68" Tween="False">
            <TextureFile Type="Normal" Path="redbird-upflap.png" Plist="" />
          </TextureFrame>
        </Timeline>
        <Timeline ActionTag="-1473781119" Property="BlendFunc">
          <BlendFuncFrame FrameIndex="1" Tween="False" Src="1" Dst="771" />
          <BlendFuncFrame FrameIndex="6" Tween="False" Src="1" Dst="771" />
          <BlendFuncFrame FrameIndex="11" Tween="False" Src="1" Dst="771" />
          <BlendFuncFrame FrameIndex="16" Tween="False" Src="1" Dst="771" />
          <BlendFuncFrame FrameIndex="21" Tween="False" Src="1" Dst="771" />
          <BlendFuncFrame FrameIndex="22" Tween="False" Src="1" Dst="771" />
          <BlendFuncFrame FrameIndex="68" Tween="False" Src="1" Dst="771" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="bird" StartIndex="1" EndIndex="21">
          <RenderColor A="255" R="0" G="139" B="139" />
        </AnimationInfo>
        <AnimationInfo Name="up" StartIndex="22" EndIndex="67">
          <RenderColor A="255" R="248" G="248" B="255" />
        </AnimationInfo>
        <AnimationInfo Name="down" StartIndex="68" EndIndex="113">
          <RenderColor A="255" R="210" G="180" B="140" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Node" Tag="43" ctype="GameNodeObjectData">
        <Size X="0.0000" Y="0.0000" />
        <Children>
          <AbstractNodeData Name="bird" ActionTag="-1473781119" Tag="47" RotationSkewY="0.0009" IconVisible="False" RightMargin="-34.0000" TopMargin="-24.0000" ctype="SpriteObjectData">
            <Size X="34.0000" Y="24.0000" />
            <AnchorPoint />
            <Position />
            <Scale ScaleX="2.1180" ScaleY="3.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="redbird-upflap.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>