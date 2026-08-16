package com.jme3.bullet.collision;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import java.util.logging.Logger;
import p000if.C13702E;

public class PhysicsCollisionEvent extends NativePhysicsObject {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(PhysicsCollisionEvent.class.getName());
    private final PhysicsCollisionObject pcoA;
    private final PhysicsCollisionObject pcoB;

    public PhysicsCollisionEvent(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2, long j10) {
        C13702E.t(physicsCollisionObject, "object A");
        C13702E.t(physicsCollisionObject2, "object B");
        C13702E.x(j10, "manifold point ID");
        this.pcoA = physicsCollisionObject;
        this.pcoB = physicsCollisionObject2;
        super.setNativeIdNotTracked(j10);
    }

    public float getAppliedImpulse() {
        return ManifoldPoints.getAppliedImpulse(nativeId());
    }

    public float getAppliedImpulseLateral1() {
        return ManifoldPoints.getAppliedImpulseLateral1(nativeId());
    }

    public float getAppliedImpulseLateral2() {
        return ManifoldPoints.getAppliedImpulseLateral2(nativeId());
    }

    public float getCombinedFriction() {
        return ManifoldPoints.getCombinedFriction(nativeId());
    }

    public float getCombinedRestitution() {
        return ManifoldPoints.getCombinedRestitution(nativeId());
    }

    public float getCombinedRollingFriction() {
        return ManifoldPoints.getCombinedRollingFriction(nativeId());
    }

    public float getCombinedSpinningFriction() {
        return ManifoldPoints.getCombinedSpinningFriction(nativeId());
    }

    public float getDistance1() {
        return ManifoldPoints.getDistance1(nativeId());
    }

    public int getFlags() {
        return ManifoldPoints.getFlags(nativeId());
    }

    public int getIndex0() {
        return ManifoldPoints.getIndex0(nativeId());
    }

    public int getIndex1() {
        return ManifoldPoints.getIndex1(nativeId());
    }

    public Vector3f getLateralFrictionDir1(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        ManifoldPoints.getLateralFrictionDir1(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getLateralFrictionDir2(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        ManifoldPoints.getLateralFrictionDir2(nativeId(), vector3f);
        return vector3f;
    }

    public int getLifeTime() {
        return ManifoldPoints.getLifeTime(nativeId());
    }

    public Vector3f getLocalPointA(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        ManifoldPoints.getLocalPointA(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getLocalPointB(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        ManifoldPoints.getLocalPointB(nativeId(), vector3f);
        return vector3f;
    }

    public Spatial getNodeA() {
        Object userObject = this.pcoA.getUserObject();
        if (userObject instanceof Spatial) {
            return (Spatial) userObject;
        }
        return null;
    }

    public Spatial getNodeB() {
        Object userObject = this.pcoB.getUserObject();
        if (userObject instanceof Spatial) {
            return (Spatial) userObject;
        }
        return null;
    }

    public Vector3f getNormalWorldOnB() {
        return getNormalWorldOnB(null);
    }

    public PhysicsCollisionObject getObjectA() {
        return this.pcoA;
    }

    public PhysicsCollisionObject getObjectB() {
        return this.pcoB;
    }

    public int getPartId0() {
        return ManifoldPoints.getPartId0(nativeId());
    }

    public int getPartId1() {
        return ManifoldPoints.getPartId1(nativeId());
    }

    public Vector3f getPositionWorldOnA() {
        return getPositionWorldOnA(null);
    }

    public Vector3f getPositionWorldOnB() {
        return getPositionWorldOnB(null);
    }

    public boolean isLateralFrictionInitialized() {
        return (getFlags() & 1) != 0;
    }

    public Vector3f getNormalWorldOnB(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        ManifoldPoints.getNormalWorldOnB(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getPositionWorldOnA(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        ManifoldPoints.getPositionWorldOnA(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getPositionWorldOnB(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        ManifoldPoints.getPositionWorldOnB(nativeId(), vector3f);
        return vector3f;
    }
}
