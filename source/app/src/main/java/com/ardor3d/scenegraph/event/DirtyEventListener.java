package com.ardor3d.scenegraph.event;

import com.ardor3d.scenegraph.Spatial;

public interface DirtyEventListener {
    boolean spatialDirty(Spatial spatial, DirtyType dirtyType);
}
