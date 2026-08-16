package com.jme3.bullet.collision;

import com.jme3.math.Vector3f;
import java.util.logging.Logger;

public final class PhysicsSweepTestResult {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(PhysicsSweepTestResult.class.getName());
    private PhysicsCollisionObject collisionObject;
    private float hitFraction;
    private Vector3f normal;
    private int partIndex;
    private int triangleIndex;

    private PhysicsSweepTestResult() {
    }

    public PhysicsCollisionObject getCollisionObject() {
        return this.collisionObject;
    }

    public float getHitFraction() {
        return this.hitFraction;
    }

    public Vector3f getHitNormalLocal(Vector3f vector3f) {
        return vector3f == null ? this.normal.m1292clone() : vector3f.set(this.normal);
    }

    public int partIndex() {
        return this.partIndex;
    }

    public int triangleIndex() {
        return this.triangleIndex;
    }
}
