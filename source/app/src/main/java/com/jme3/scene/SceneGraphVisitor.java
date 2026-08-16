package com.jme3.scene;

public interface SceneGraphVisitor {
    void visit(Spatial spatial);
}
