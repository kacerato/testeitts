package com.jme3.math;

import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;

public abstract class AbstractTriangle implements Collidable {
    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        return collidable.collideWith(this, collisionResults);
    }

    public abstract Vector3f get1();

    public abstract Vector3f get2();

    public abstract Vector3f get3();

    public abstract void set(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3);

    public String toString() {
        return getClass().getSimpleName() + " [V1: " + ((Object) get1()) + "  V2: " + ((Object) get2()) + "  V3: " + ((Object) get3()) + "]";
    }
}
