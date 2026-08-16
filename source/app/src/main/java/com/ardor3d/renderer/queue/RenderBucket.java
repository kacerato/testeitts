package com.ardor3d.renderer.queue;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Spatial;

public interface RenderBucket {
    void add(Spatial spatial);

    void clear();

    void popBucket();

    void pushBucket();

    void remove(Spatial spatial);

    void render(Renderer renderer);

    void sort();
}
