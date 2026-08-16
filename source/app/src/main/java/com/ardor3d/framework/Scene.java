package com.ardor3d.framework;

import com.ardor3d.annotation.MainThread;
import com.ardor3d.intersection.PickResults;
import com.ardor3d.math.Ray3;
import com.ardor3d.renderer.Renderer;

public interface Scene {
    PickResults doPick(Ray3 ray3);

    @MainThread
    boolean renderUnto(Renderer renderer);
}
