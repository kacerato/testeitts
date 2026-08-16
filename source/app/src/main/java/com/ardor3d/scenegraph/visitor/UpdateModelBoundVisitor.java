package com.ardor3d.scenegraph.visitor;

import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;

public class UpdateModelBoundVisitor implements Visitor {
    @Override
    public void visit(Spatial spatial) {
        if (spatial instanceof Mesh) {
            ((Mesh) spatial).updateModelBound();
        }
    }
}
