package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;

public class AxisCubeCamera extends EditorCamera {

    public static final float f71510a9 = 0.3f;

    public AxisCubeCamera() {
        super.setRenderDistance(5.0f);
        super.setMinimalDistance(1.0f);
        super.setFov(50.0f);
        super.setOrthoDiameter(2.0f);
        super.setLayer(1001);
        super.setBackgroundType(Camera.F.Alpha);
        super.setRectPosX(0.7f);
        super.setRectWidth(0.3f);
        super.setRectHeight(0.3f);
        super.setRenderPercentage(50.0f);
    }

    @Override
    public boolean allowPostProcessing() {
        return false;
    }

    @Override
    public boolean renderFog() {
        return false;
    }

    @Override
    public boolean renderGizmos() {
        return true;
    }
}
