package com.jme3.scene.control;

import com.jme3.export.Savable;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;

public interface Control extends Savable {
    @Deprecated
    Control cloneForSpatial(Spatial spatial);

    void render(RenderManager renderManager, ViewPort viewPort);

    void setSpatial(Spatial spatial);

    void update(float f10);
}
