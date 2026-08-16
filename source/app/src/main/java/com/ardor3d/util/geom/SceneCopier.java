package com.ardor3d.util.geom;

import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
public abstract class SceneCopier {
    public static Spatial makeCopy(Spatial spatial, CopyLogic copyLogic) {
        return makeCopy(spatial, null, copyLogic);
    }

    private static Spatial makeCopy(Spatial spatial, Spatial spatial2, CopyLogic copyLogic) {
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        Spatial copy = copyLogic.copy(spatial, atomicBoolean);
        if (atomicBoolean.get() && (spatial instanceof Node) && (copy instanceof Node)) {
            Node node = (Node) spatial;
            if (node.getNumberOfChildren() > 0) {
                Iterator<Spatial> it = node.getChildren().iterator();
                while (it.hasNext()) {
                    Spatial makeCopy = makeCopy(it.next(), copy, copyLogic);
                    if (makeCopy != null) {
                        ((Node) copy).attachChild(makeCopy);
                    }
                }
            }
        }
        return copy;
    }
}
