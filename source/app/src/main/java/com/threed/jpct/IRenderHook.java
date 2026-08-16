package com.threed.jpct;

public interface IRenderHook {
    void afterRendering(int i10);

    void beforeRendering(int i10);

    void onDispose();

    boolean repeatRendering();

    void setCurrentObject3D(Object3D object3D);

    void setCurrentShader(GLSLShader gLSLShader);

    void setTransparency(float f10);
}
