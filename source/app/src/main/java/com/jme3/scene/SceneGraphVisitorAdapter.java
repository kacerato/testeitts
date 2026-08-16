package com.jme3.scene;

public class SceneGraphVisitorAdapter implements SceneGraphVisitor {
    public void visit(Geometry geometry) {
    }

    public void visit(Node node) {
    }

    @Override
    public final void visit(Spatial spatial) {
        if (spatial instanceof Geometry) {
            visit((Geometry) spatial);
        } else {
            visit((Node) spatial);
        }
    }
}
