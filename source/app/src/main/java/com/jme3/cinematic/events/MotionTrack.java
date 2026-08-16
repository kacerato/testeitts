package com.jme3.cinematic.events;

import com.jme3.animation.LoopMode;
import com.jme3.cinematic.MotionPath;
import com.jme3.scene.Spatial;

@Deprecated
public class MotionTrack extends MotionEvent {
    public MotionTrack() {
    }

    public MotionTrack(Spatial spatial, MotionPath motionPath) {
        super(spatial, motionPath);
    }

    public MotionTrack(Spatial spatial, MotionPath motionPath, float f10) {
        super(spatial, motionPath, f10);
    }

    public MotionTrack(Spatial spatial, MotionPath motionPath, LoopMode loopMode) {
        super(spatial, motionPath, loopMode);
    }

    public MotionTrack(Spatial spatial, MotionPath motionPath, float f10, LoopMode loopMode) {
        super(spatial, motionPath, f10, loopMode);
    }
}
