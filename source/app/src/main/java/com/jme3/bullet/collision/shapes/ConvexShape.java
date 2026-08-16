package com.jme3.bullet.collision.shapes;

import com.jme3.bullet.util.DebugShapeFactory;
import java.nio.FloatBuffer;
import java.util.logging.Logger;

public abstract class ConvexShape extends CollisionShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger loggerX = Logger.getLogger(ConvexShape.class.getName());

    @Override
    public boolean isConcave() {
        return false;
    }

    @Override
    public boolean isConvex() {
        return true;
    }

    @Override
    public float scaledVolume() {
        return DebugShapeFactory.volumeConvex(this, 0);
    }

    public HullCollisionShape toHullShape() {
        FloatBuffer debugVertices = DebugShapeFactory.debugVertices(this, 0);
        debugVertices.rewind();
        debugVertices.limit(debugVertices.capacity());
        return new HullCollisionShape(debugVertices);
    }

    @Override
    public CollisionShape toSplittableShape() {
        return canSplit() ? this : toHullShape();
    }
}
