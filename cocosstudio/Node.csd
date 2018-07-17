<GameFile>
  <PropertyGroup Name="Node" Type="Node" ID="0c16de13-ccfc-4448-9ec1-1142cc958668" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="90" Speed="1.0000" ActivedAnimationName="moveBase">
        <Timeline ActionTag="252393338" Property="Position">
          <PointFrame FrameIndex="1" X="-50.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="90" X="-354.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="252393338" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="True" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="moveBase" StartIndex="1" EndIndex="60">
          <RenderColor A="150" R="173" G="216" B="230" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Node" Tag="30" ctype="GameNodeObjectData">
        <Size X="0.0000" Y="0.0000" />
        <Children>
          <AbstractNodeData Name="base" ActionTag="252393338" Tag="31" IconVisible="False" LeftMargin="-251.5281" RightMargin="-84.4719" TopMargin="-112.0000" ctype="SpriteObjectData">
            <Size X="336.0000" Y="112.0000" />
            <AnchorPoint />
            <Position X="-251.5281" />
            <Scale ScaleX="3.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="base.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>