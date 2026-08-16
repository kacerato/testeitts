package com.ardor3d.util.scenegraph;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Spatial;

public interface RenderDelegate {
    void render(Spatial spatial, Renderer renderer);
}
