package com.ardor3d.renderer.state;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Mesh;

public interface GLSLShaderDataLogic {
    void applyData(GLSLShaderObjectsState gLSLShaderObjectsState, Mesh mesh, Renderer renderer);
}
