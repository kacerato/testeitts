package com.ardor3d.util;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.geom.Debugger;

public class DrawableCamera extends Mesh {
    private final ColorRGBA color;
    private final short pattern;
    private final Camera trackedCamera;

    public DrawableCamera() {
        this(null, new ColorRGBA(0.0f, 1.0f, 1.0f, 1.0f), (short) -4096);
    }

    @Override
    public void draw(Renderer renderer) {
        Debugger.drawCameraFrustum(renderer, this.trackedCamera, this.color, this.pattern, true);
    }

    public DrawableCamera(Camera camera, ColorRGBA colorRGBA, short s10) {
        super("DrawableCamera");
        this.trackedCamera = camera;
        this.color = colorRGBA;
        this.pattern = s10;
    }
}
