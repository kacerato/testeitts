package com.jme3.bullet.debug;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;

class ChildSummary {
    static final Logger logger = Logger.getLogger(ChildSummary.class.getName());
    private float margin;
    private long shapeId;
    private boolean isValid = false;
    private final Quaternion rotation = new Quaternion();
    private final Vector3f offset = new Vector3f();
    private final Vector3f scale = new Vector3f();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            ChildSummary childSummary = (ChildSummary) obj;
            boolean z10 = this.isValid;
            if (!z10 && !childSummary.isValid) {
                return true;
            }
            if (z10 && childSummary.isValid && this.shapeId == childSummary.shapeId && Float.compare(this.margin, childSummary.margin) == 0 && this.rotation.equals(childSummary.rotation) && this.offset.equals(childSummary.offset) && this.scale.equals(childSummary.scale)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.isValid) {
            return ((((((((485 + ((int) (this.shapeId >> 4))) * 97) + Float.floatToIntBits(this.margin)) * 97) + this.rotation.hashCode()) * 97) + this.offset.hashCode()) * 97) + this.scale.hashCode();
        }
        return 5;
    }

    public boolean isValid() {
        return this.isValid;
    }

    public void update(ChildCollisionShape childCollisionShape) {
        if (childCollisionShape == null) {
            this.isValid = false;
            return;
        }
        CollisionShape shape = childCollisionShape.getShape();
        this.margin = shape.getMargin();
        this.shapeId = shape.nativeId();
        childCollisionShape.copyRotation(this.rotation);
        childCollisionShape.copyOffset(this.offset);
        shape.getScale(this.scale);
        this.isValid = true;
    }
}
