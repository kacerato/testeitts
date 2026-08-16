package com.ardor3d.framework;

import com.ardor3d.annotation.MainThread;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.util.Ardor3dException;

public interface CanvasRenderer {
    @MainThread
    boolean draw();

    Camera getCamera();

    int getFrameClear();

    RenderContext getRenderContext();

    Renderer getRenderer();

    Scene getScene();

    void init(DisplaySettings displaySettings, boolean z10);

    void makeCurrentContext() throws Ardor3dException;

    void releaseCurrentContext();

    void setCamera(Camera camera);

    void setFrameClear(int i10);

    void setScene(Scene scene);
}
