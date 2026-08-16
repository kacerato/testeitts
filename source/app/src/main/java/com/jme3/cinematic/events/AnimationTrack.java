package com.jme3.cinematic.events;

import com.jme3.animation.LoopMode;
import com.jme3.scene.Spatial;

@Deprecated
public class AnimationTrack extends AnimationEvent {
    public AnimationTrack() {
    }

    public AnimationTrack(Spatial spatial, String str) {
        super(spatial, str);
    }

    public AnimationTrack(Spatial spatial, String str, float f10) {
        super(spatial, str, f10);
    }

    public AnimationTrack(Spatial spatial, String str, LoopMode loopMode) {
        super(spatial, str, loopMode);
    }

    public AnimationTrack(Spatial spatial, String str, float f10, LoopMode loopMode) {
        super(spatial, str, f10, loopMode);
    }
}
