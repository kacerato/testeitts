package com.jme3.bullet.objects.infos;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.logging.Logger;
import jf.h;
import p000if.C13702E;

public class CharacterController extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(CharacterController.class.getName());
    private static final String tagAngularDamping = "angularDamping";
    private static final String tagAngularVelocity = "angularVelocity";
    private static final String tagFallSpeed = "fallSpeed";
    private static final String tagGhostSweepTest = "ghostSweepTest";
    private static final String tagGravityVector = "gravityVector";
    private static final String tagJumpSpeed = "jumpSpeed";
    private static final String tagLinearDamping = "linearDamping";
    private static final String tagLinearVelocity = "linearVelocity";
    private static final String tagMaxPenetrationDepth = "maxPenetrationDepth";
    private static final String tagMaxSlope = "maxSlope";
    private static final String tagPco = "pco";
    private static final String tagStepHeight = "stepHeight";
    private static final String tagUpDirection = "upDirection";
    private static final String tagWalkDirection = "walkDirection";
    private PhysicsCharacter pco;

    public CharacterController() {
    }

    private static native long create(long j10);

    private void createController() {
        setNativeId(create(this.pco.nativeId()));
    }

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native float getAngularDamping(long j10);

    private static native void getAngularVelocity(long j10, Vector3f vector3f);

    private static native float getFallSpeed(long j10);

    private static native void getGravity(long j10, Vector3f vector3f);

    private static native float getJumpSpeed(long j10);

    private static native float getLinearDamping(long j10);

    private static native void getLinearVelocity(long j10, Vector3f vector3f);

    private static native float getMaxPenetrationDepth(long j10);

    private static native float getMaxSlope(long j10);

    private static native float getStepHeight(long j10);

    private static native void getUpDirection(long j10, Vector3f vector3f);

    private static native void getWalkOffset(long j10, Vector3f vector3f);

    private static native boolean isUsingGhostSweepTest(long j10);

    private static native void jump(long j10, Vector3f vector3f);

    private static native boolean onGround(long j10);

    private static native void reset(long j10, long j11);

    private static native void setAngularDamping(long j10, float f10);

    private static native void setAngularVelocity(long j10, Vector3f vector3f);

    private static native void setFallSpeed(long j10, float f10);

    private static native void setGravity(long j10, Vector3f vector3f);

    private static native void setJumpSpeed(long j10, float f10);

    private static native void setLinearDamping(long j10, float f10);

    private static native void setLinearVelocity(long j10, Vector3f vector3f);

    private static native void setMaxPenetrationDepth(long j10, float f10);

    private static native void setMaxSlope(long j10, float f10);

    private static native void setStepHeight(long j10, float f10);

    private static native void setUp(long j10, Vector3f vector3f);

    private static native void setUseGhostSweepTest(long j10, boolean z10);

    private static native void setWalkDirection(long j10, Vector3f vector3f);

    private static native void warp(long j10, Vector3f vector3f);

    private static native void warpDp(long j10, Vec3d vec3d);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        copyAll((CharacterController) obj);
    }

    public void copyAll(CharacterController characterController) {
        setAngularDamping(characterController.getAngularDamping());
        setAngularVelocity(characterController.getAngularVelocity(null));
        setFallSpeed(characterController.getFallSpeed());
        setGravity(characterController.getGravity(null));
        setJumpSpeed(characterController.getJumpSpeed());
        setLinearDamping(characterController.getLinearDamping());
        setWalkDirection(characterController.getWalkDirection(null));
        setLinearVelocity(characterController.getLinearVelocity(null));
        setMaxPenetrationDepth(characterController.getMaxPenetrationDepth());
        setMaxSlope(characterController.getMaxSlope());
        setStepHeight(characterController.getStepHeight());
        setSweepTest(characterController.isUsingGhostSweepTest());
        setUp(characterController.getUpDirection(null));
    }

    public float getAngularDamping() {
        return getAngularDamping(nativeId());
    }

    public Vector3f getAngularVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAngularVelocity(nativeId(), vector3f);
        return vector3f;
    }

    public float getFallSpeed() {
        return getFallSpeed(nativeId());
    }

    public Vector3f getGravity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getGravity(nativeId(), vector3f);
        return vector3f;
    }

    public float getJumpSpeed() {
        return getJumpSpeed(nativeId());
    }

    public float getLinearDamping() {
        return getLinearDamping(nativeId());
    }

    public Vector3f getLinearVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getLinearVelocity(nativeId(), vector3f);
        return vector3f;
    }

    public float getMaxPenetrationDepth() {
        return getMaxPenetrationDepth(nativeId());
    }

    public float getMaxSlope() {
        return getMaxSlope(nativeId());
    }

    public float getStepHeight() {
        return getStepHeight(nativeId());
    }

    public Vector3f getUpDirection(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getUpDirection(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getWalkDirection(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getWalkOffset(nativeId(), vector3f);
        return vector3f;
    }

    public boolean isUsingGhostSweepTest() {
        return isUsingGhostSweepTest(nativeId());
    }

    public void jump(Vector3f vector3f) {
        jump(nativeId(), vector3f);
    }

    public boolean onGround() {
        return onGround(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.pco = (PhysicsCharacter) capsule.readSavable(tagPco, null);
        createController();
        setAngularDamping(capsule.readFloat(tagAngularDamping, 0.0f));
        setAngularVelocity((Vector3f) capsule.readSavable(tagAngularVelocity, new Vector3f()));
        setFallSpeed(capsule.readFloat(tagFallSpeed, 55.0f));
        setSweepTest(capsule.readBoolean(tagGhostSweepTest, true));
        Vector3f vector3f = (Vector3f) capsule.readSavable(tagGravityVector, new Vector3f(0.0f, -9.81f, 0.0f));
        setGravity(vector3f);
        setJumpSpeed(capsule.readFloat(tagJumpSpeed, 10.0f));
        setLinearDamping(capsule.readFloat(tagLinearDamping, 0.0f));
        setWalkDirection((Vector3f) capsule.readSavable(tagWalkDirection, new Vector3f()));
        setLinearVelocity((Vector3f) capsule.readSavable(tagLinearVelocity, new Vector3f()));
        setMaxPenetrationDepth(capsule.readFloat(tagMaxPenetrationDepth, 0.2f));
        setMaxSlope(capsule.readFloat(tagMaxSlope, 0.7853982f));
        setStepHeight(capsule.readFloat(tagStepHeight, 1.0f));
        if (h.E(vector3f)) {
            setUp((Vector3f) capsule.readSavable(tagUpDirection, new Vector3f(0.0f, 1.0f, 0.0f)));
        }
    }

    public void reset(PhysicsSpace physicsSpace) {
        reset(nativeId(), physicsSpace.nativeId());
    }

    public void setAngularDamping(float f10) {
        setAngularDamping(nativeId(), f10);
    }

    public void setAngularVelocity(Vector3f vector3f) {
        setAngularVelocity(nativeId(), vector3f);
    }

    public void setFallSpeed(float f10) {
        setFallSpeed(nativeId(), f10);
    }

    public void setGravity(Vector3f vector3f) {
        C13702E.d(vector3f, "gravity");
        setGravity(nativeId(), vector3f);
    }

    public void setJumpSpeed(float f10) {
        setJumpSpeed(nativeId(), f10);
    }

    public void setLinearDamping(float f10) {
        setLinearDamping(nativeId(), f10);
    }

    public void setLinearVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "velocity");
        setLinearVelocity(nativeId(), vector3f);
    }

    public void setMaxPenetrationDepth(float f10) {
        setMaxPenetrationDepth(nativeId(), f10);
    }

    public void setMaxSlope(float f10) {
        setMaxSlope(nativeId(), f10);
    }

    public void setStepHeight(float f10) {
        setStepHeight(nativeId(), f10);
    }

    public void setSweepTest(boolean z10) {
        setUseGhostSweepTest(nativeId(), z10);
    }

    public void setUp(Vector3f vector3f) {
        C13702E.A(vector3f, "direction");
        setUp(nativeId(), vector3f);
    }

    public void setWalkDirection(Vector3f vector3f) {
        C13702E.d(vector3f, "offset");
        setWalkDirection(nativeId(), vector3f);
    }

    public void warp(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        warp(nativeId(), vector3f);
    }

    public void warpDp(Vec3d vec3d) {
        C13702E.t(vec3d, "location");
        warpDp(nativeId(), vec3d);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.pco, tagPco, (Savable) null);
        capsule.write(getAngularDamping(), tagAngularDamping, 0.0f);
        capsule.write(getAngularVelocity(null), tagAngularVelocity, (Savable) null);
        capsule.write(getFallSpeed(), tagFallSpeed, 55.0f);
        capsule.write(isUsingGhostSweepTest(), tagGhostSweepTest, true);
        Vector3f gravity = getGravity(null);
        capsule.write(gravity, tagGravityVector, new Vector3f(0.0f, -9.81f, 0.0f));
        capsule.write(getJumpSpeed(), tagJumpSpeed, 10.0f);
        capsule.write(getLinearDamping(), tagLinearDamping, 0.0f);
        capsule.write(getWalkDirection(null), tagWalkDirection, (Savable) null);
        capsule.write(getLinearVelocity(null), tagLinearVelocity, (Savable) null);
        capsule.write(getMaxPenetrationDepth(), tagMaxPenetrationDepth, 0.2f);
        capsule.write(getMaxSlope(), tagMaxSlope, 0.7853982f);
        capsule.write(getStepHeight(), tagStepHeight, 1.0f);
        if (h.E(gravity)) {
            capsule.write(getUpDirection(null), tagUpDirection, new Vector3f(0.0f, 1.0f, 0.0f));
        }
    }

    public CharacterController(PhysicsCharacter physicsCharacter) {
        C13702E.t(physicsCharacter, "collision object");
        this.pco = physicsCharacter;
        createController();
    }

    @Override
    public CharacterController jmeClone() {
        try {
            return (CharacterController) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
