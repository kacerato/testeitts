package com.ardor3d.scenegraph.visitor;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;

public class SetModelBoundVisitor implements Visitor {
    private final BoundingVolume _bound;

    public SetModelBoundVisitor(BoundingVolume boundingVolume) {
        this._bound = boundingVolume;
    }

    @Override
    public void visit(Spatial spatial) {
        if (spatial instanceof Mesh) {
            ((Mesh) spatial).setModelBound(this._bound.clone(null));
        }
    }
}
