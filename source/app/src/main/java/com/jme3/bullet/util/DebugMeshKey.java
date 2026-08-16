package com.jme3.bullet.util;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;
import p000if.EnumC13714j;

public class DebugMeshKey {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(DebugMeshKey.class.getName());
    private final float margin;
    private final EnumC13714j normals;
    private final int resolution;
    private final Vector3f scale;
    private final long shapeId;

    public DebugMeshKey(CollisionShape collisionShape, EnumC13714j enumC13714j, int i10) {
        this.normals = enumC13714j;
        this.margin = collisionShape.getMargin();
        if (collisionShape.isConvex()) {
            this.resolution = i10;
        } else {
            this.resolution = 0;
        }
        this.shapeId = collisionShape.nativeId();
        this.scale = collisionShape.getScale(null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            DebugMeshKey debugMeshKey = (DebugMeshKey) obj;
            if (this.shapeId == debugMeshKey.shapeId && this.scale.equals(debugMeshKey.scale) && Float.compare(this.margin, debugMeshKey.margin) == 0 && this.normals == debugMeshKey.normals && this.resolution == debugMeshKey.resolution) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (this.shapeId >> 4)) * 7) + this.scale.hashCode()) * 7) + Float.floatToIntBits(this.margin)) * 7) + this.resolution) * 7) + this.normals.ordinal();
    }

    public long shapeId() {
        return this.shapeId;
    }

    public String toString() {
        return String.format("shape=%x scale=%s margin=%f res=%d normals=%s", Long.valueOf(this.shapeId), this.scale, Float.valueOf(this.margin), Integer.valueOf(this.resolution), this.normals);
    }
}
