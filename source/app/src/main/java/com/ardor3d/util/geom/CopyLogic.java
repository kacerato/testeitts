package com.ardor3d.util.geom;

import com.ardor3d.scenegraph.Spatial;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
public interface CopyLogic {
    Spatial copy(Spatial spatial, AtomicBoolean atomicBoolean);
}
