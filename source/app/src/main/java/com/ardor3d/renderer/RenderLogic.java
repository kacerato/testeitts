package com.ardor3d.renderer;

import com.ardor3d.scenegraph.Renderable;

public interface RenderLogic {
    void apply(Renderable renderable);

    void restore(Renderable renderable);
}
