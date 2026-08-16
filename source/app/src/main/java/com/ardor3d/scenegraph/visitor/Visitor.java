package com.ardor3d.scenegraph.visitor;

import com.ardor3d.scenegraph.Spatial;

public interface Visitor {
    void visit(Spatial spatial);
}
