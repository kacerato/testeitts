package com.jme3.bullet.collision;

import com.jme3.math.Vector3f;
import java.util.logging.Logger;

public final class PhysicsRayTestResult {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(PhysicsRayTestResult.class.getName());
    private PhysicsCollisionObject collisionObject;
    private float hitFraction;
    private Vector3f normal;
    private int partIndex;
    private int triangleIndex;

    private PhysicsRayTestResult() {
    }

    public PhysicsCollisionObject getCollisionObject() {
        return this.collisionObject;
    }

    public float getHitFraction() {
        return this.hitFraction;
    }

    public Vector3f getHitNormalLocal() {
        return getHitNormalLocal(null);
    }

    public int partIndex() {
        return this.partIndex;
    }

    public int triangleIndex() {
        return this.triangleIndex;
    }

    public Vector3f getHitNormalLocal(Vector3f vector3f) {
        if (vector3f == null) {
            return this.normal.m1292clone();
        }
        return vector3f.set(this.normal);
    }
}
