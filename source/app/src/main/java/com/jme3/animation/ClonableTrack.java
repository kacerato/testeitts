package com.jme3.animation;

import com.jme3.scene.Spatial;
import com.jme3.util.clone.JmeCloneable;

@Deprecated
public interface ClonableTrack extends Track, JmeCloneable {
    void cleanUp();

    Track cloneForSpatial(Spatial spatial);
}
