package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.PhysicsTickListener;
import com.jme3.bullet.collision.PhysicsSweepTestResult;
import com.jme3.bullet.collision.shapes.CapsuleCollisionShape;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.SphereCollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.g;
import jf.h;
import p000if.C13702E;

public class BetterCharacterControl extends AbstractPhysicsControl implements PhysicsTickListener {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(BetterCharacterControl.class.getName());
    private static final String tagBody = "body";
    private static final String tagDuckedFactor = "duckedFactor";
    private static final String tagHeight = "height";
    private static final String tagJumpForce = "jumpForce";
    private static final String tagMass = "mass";
    private static final String tagPhysicsDamping = "physicsDamping";
    private static final String tagRadius = "radius";
    private static final String tagViewDirection = "viewDirection";
    private static final String tagWalkDirection = "walkDirection";
    private Vector3f baseLocation;
    private float dampingFactor;
    private float duckedFactor;
    private float initialHeight;
    private float initialRadius;
    private boolean isDucked;
    private Vector3f jumpImpulse;
    private Vector3f localForward;
    private Vector3f localLeft;
    private Quaternion localToWorld;
    private Vector3f localUp;
    private float mass;
    private boolean onGround;
    private PhysicsRigidBody rigidBody;
    private Vector3f scale;
    private Transform sweepBegin;
    private Transform sweepEnd;
    private SphereCollisionShape sweepShape;
    private Vector3f velocity;
    private Vector3f viewDirInWorld;
    private Vector3f viewDirection;
    private Quaternion viewToWorld;
    private Vector3f walkVelocity;
    private boolean wantToJump;
    private boolean wantToUnDuck;

    public BetterCharacterControl() {
        this.isDucked = false;
        this.onGround = false;
        this.wantToJump = false;
        this.wantToUnDuck = false;
        this.dampingFactor = 0.9f;
        this.duckedFactor = 0.6f;
        this.localToWorld = new Quaternion();
        this.viewToWorld = new Quaternion();
        this.sweepBegin = new Transform();
        this.sweepEnd = new Transform();
        this.baseLocation = new Vector3f();
        this.jumpImpulse = new Vector3f();
        this.localForward = new Vector3f(0.0f, 0.0f, 1.0f);
        this.localLeft = new Vector3f(1.0f, 0.0f, 0.0f);
        this.localUp = new Vector3f(0.0f, 1.0f, 0.0f);
        this.scale = new Vector3f(1.0f, 1.0f, 1.0f);
        this.velocity = new Vector3f();
        this.viewDirection = new Vector3f(0.0f, 0.0f, 1.0f);
        this.viewDirInWorld = new Vector3f(0.0f, 0.0f, 1.0f);
        this.walkVelocity = new Vector3f();
    }

    private void dynamicPreTick() {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect2;
        vector3f.set(this.velocity);
        float dot = this.velocity.dot(this.localLeft) * this.dampingFactor;
        float dot2 = this.velocity.dot(this.localForward) * this.dampingFactor;
        Vector3f vector3f2 = tempVars.vect1;
        vector3f2.set(-dot, 0.0f, -dot2);
        g.r(this.localToWorld, vector3f2, vector3f2);
        this.velocity.addLocal(vector3f2);
        float length = this.walkVelocity.length();
        if (length > 0.0f) {
            Vector3f vector3f3 = tempVars.vect1;
            vector3f3.set(this.walkVelocity);
            vector3f3.normalizeLocal();
            vector3f3.multLocal(length - this.velocity.dot(vector3f3));
            this.velocity.addLocal(vector3f3);
        }
        if (vector3f.distance(this.velocity) > 1.0E-4f) {
            this.rigidBody.setLinearVelocity(this.velocity);
        }
        if (this.wantToJump && this.onGround) {
            Vector3f vector3f4 = tempVars.vect1;
            vector3f4.set(this.jumpImpulse);
            g.r(this.localToWorld, vector3f4, vector3f4);
            this.rigidBody.applyCentralImpulse(vector3f4);
        }
        tempVars.release();
    }

    @Override
    public void addPhysics() {
        PhysicsSpace physicsSpace = getPhysicsSpace();
        physicsSpace.getGravity(this.localUp);
        this.localUp.normalizeLocal();
        this.localUp.negateLocal();
        updateLocalCoordinateSystem();
        physicsSpace.addCollisionObject(this.rigidBody);
        physicsSpace.addTickListener(this);
    }

    public void calculateNewForward(Quaternion quaternion, Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f == null) {
            return;
        }
        TempVars tempVars = TempVars.get();
        Vector3f vector3f3 = tempVars.vect1;
        Vector3f vector3f4 = tempVars.vect2;
        vector3f3.set(vector3f2);
        vector3f3.crossLocal(vector3f);
        vector3f3.normalizeLocal();
        if (h.E(vector3f3)) {
            float f10 = vector3f.f81611x;
            if (f10 != 0.0f) {
                vector3f3.set(vector3f.f81612y, -f10, 0.0f);
            } else {
                vector3f3.set(0.0f, vector3f.f81613z, -vector3f.f81612y);
            }
            vector3f3.normalizeLocal();
            Logger logger = logger2;
            Level level = Level.INFO;
            if (logger.isLoggable(level)) {
                logger.log(level, "Zero left for direction {0}, up {1}", new Object[]{vector3f, vector3f2});
            }
        }
        vector3f4.set(vector3f3);
        vector3f4.negateLocal();
        vector3f.set(vector3f2);
        vector3f.crossLocal(vector3f4);
        vector3f.normalizeLocal();
        if (h.E(vector3f)) {
            vector3f.set(0.0f, 0.0f, 1.0f);
            Logger logger3 = logger2;
            Level level2 = Level.INFO;
            if (logger3.isLoggable(level2)) {
                logger3.log(level2, "Zero left for left {0}, up {1}", new Object[]{vector3f3, vector3f2});
            }
        }
        if (quaternion != null) {
            quaternion.fromAxes(vector3f3, vector3f2, vector3f);
        }
        tempVars.release();
    }

    public boolean checkCanUnDuck() {
        boolean z10;
        Vector3f translation = this.sweepBegin.getTranslation();
        translation.set(this.baseLocation);
        float finalHeight = getFinalHeight();
        float finalRadius = getFinalRadius();
        h.c(translation, this.localUp, finalHeight - finalRadius);
        Vector3f translation2 = this.sweepEnd.getTranslation();
        translation2.set(this.baseLocation);
        h.c(translation2, this.localUp, this.initialHeight - finalRadius);
        SphereCollisionShape sphereCollisionShape = this.sweepShape;
        if (sphereCollisionShape == null || sphereCollisionShape.getRadius() != finalRadius) {
            this.sweepShape = new SphereCollisionShape(finalRadius);
        }
        Iterator<PhysicsSweepTestResult> it = getPhysicsSpace().sweepTest(this.sweepShape, this.sweepBegin, this.sweepEnd).iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            if (!it.next().getCollisionObject().equals(this.rigidBody)) {
                z10 = true;
                break;
            }
        }
        return !z10;
    }

    public void checkOnGround() {
        boolean z10;
        Vector3f translation = this.sweepBegin.getTranslation();
        translation.set(this.baseLocation);
        h.c(translation, this.localUp, getFinalHeight() / 2.0f);
        Vector3f translation2 = this.sweepEnd.getTranslation();
        translation2.set(this.baseLocation);
        float finalRadius = getFinalRadius();
        h.c(translation2, this.localUp, finalRadius - this.rigidBody.getCollisionShape().getMargin());
        SphereCollisionShape sphereCollisionShape = this.sweepShape;
        if (sphereCollisionShape == null || sphereCollisionShape.getRadius() != finalRadius) {
            this.sweepShape = new SphereCollisionShape(finalRadius);
        }
        Iterator<PhysicsSweepTestResult> it = getPhysicsSpace().sweepTest(this.sweepShape, this.sweepBegin, this.sweepEnd).iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            } else if (!it.next().getCollisionObject().equals(this.rigidBody)) {
                z10 = true;
                break;
            }
        }
        this.onGround = z10;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.sweepShape = null;
        this.sweepEnd = (Transform) cloner.clone(this.sweepEnd);
        this.sweepBegin = (Transform) cloner.clone(this.sweepBegin);
        this.jumpImpulse = (Vector3f) cloner.clone(this.jumpImpulse);
        this.localForward = (Vector3f) cloner.clone(this.localForward);
        this.localToWorld = (Quaternion) cloner.clone(this.localToWorld);
        this.localLeft = (Vector3f) cloner.clone(this.localLeft);
        this.localUp = (Vector3f) cloner.clone(this.localUp);
        this.baseLocation = (Vector3f) cloner.clone(this.baseLocation);
        this.rigidBody = (PhysicsRigidBody) cloner.clone(this.rigidBody);
        this.viewDirInWorld = (Vector3f) cloner.clone(this.viewDirInWorld);
        this.viewToWorld = (Quaternion) cloner.clone(this.viewToWorld);
        this.scale = (Vector3f) cloner.clone(this.scale);
        this.velocity = (Vector3f) cloner.clone(this.velocity);
        this.viewDirection = (Vector3f) cloner.clone(this.viewDirection);
        this.walkVelocity = (Vector3f) cloner.clone(this.walkVelocity);
    }

    @Override
    public void createSpatialData(Spatial spatial) {
        this.rigidBody.setUserObject(spatial);
    }

    public float getDuckedFactor() {
        return this.duckedFactor;
    }

    public float getFinalHeight() {
        return this.initialHeight * this.scale.f81612y;
    }

    public float getFinalRadius() {
        return this.initialRadius * this.scale.f81613z;
    }

    public Vector3f getGravity(Vector3f vector3f) {
        return this.rigidBody.getGravity(vector3f);
    }

    public float getInitialHeight() {
        return this.initialHeight;
    }

    public float getInitialRadius() {
        return this.initialRadius;
    }

    public Vector3f getJumpForce(Vector3f vector3f) {
        return vector3f == null ? this.jumpImpulse.m1292clone() : vector3f.set(this.jumpImpulse);
    }

    public float getPhysicsDamping() {
        return this.dampingFactor;
    }

    public PhysicsRigidBody getRigidBody() {
        return this.rigidBody;
    }

    public CollisionShape getShape() {
        float finalRadius = getFinalRadius();
        float finalHeight = getFinalHeight();
        CapsuleCollisionShape capsuleCollisionShape = new CapsuleCollisionShape(finalRadius, finalHeight - (finalRadius * 2.0f));
        CompoundCollisionShape compoundCollisionShape = new CompoundCollisionShape(1);
        compoundCollisionShape.addChildShape(capsuleCollisionShape, 0.0f, finalHeight / 2.0f, 0.0f);
        return compoundCollisionShape;
    }

    public Vector3f getVelocity() {
        return getVelocity(null);
    }

    public Vector3f getViewDirection() {
        return getViewDirection(null);
    }

    public Vector3f getWalkDirection(Vector3f vector3f) {
        return vector3f == null ? this.walkVelocity.m1292clone() : vector3f.set(this.walkVelocity);
    }

    public boolean isDucked() {
        return this.isDucked;
    }

    public boolean isKinematic() {
        return !this.rigidBody.isDynamic();
    }

    public boolean isOnGround() {
        return this.onGround;
    }

    public void jump() {
        this.wantToJump = true;
    }

    @Override
    public void physicsTick(PhysicsSpace physicsSpace, float f10) {
        if (this.rigidBody.isDynamic()) {
            this.rigidBody.getLinearVelocity(this.velocity);
        } else {
            this.velocity.zero();
        }
    }

    @Override
    public void prePhysicsTick(PhysicsSpace physicsSpace, float f10) {
        checkOnGround();
        if (this.wantToUnDuck && checkCanUnDuck()) {
            setHeightPercent(1.0f);
            this.wantToUnDuck = false;
            this.isDucked = false;
        }
        if (this.rigidBody.isDynamic()) {
            dynamicPreTick();
        }
        this.wantToJump = false;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.initialRadius = capsule.readFloat("radius", 1.0f);
        this.initialHeight = capsule.readFloat("height", 2.0f);
        this.mass = capsule.readFloat(tagMass, 80.0f);
        this.jumpImpulse = (Vector3f) capsule.readSavable(tagJumpForce, new Vector3f(0.0f, this.mass * 5.0f, 0.0f));
        this.dampingFactor = capsule.readFloat(tagPhysicsDamping, 0.9f);
        this.duckedFactor = capsule.readFloat(tagDuckedFactor, 0.6f);
        this.viewDirection = (Vector3f) capsule.readSavable(tagViewDirection, new Vector3f(0.0f, 0.0f, 1.0f));
        this.walkVelocity = (Vector3f) capsule.readSavable(tagWalkDirection, new Vector3f(0.0f, 0.0f, 1.0f));
        this.rigidBody = (PhysicsRigidBody) capsule.readSavable("body", null);
        this.rigidBody.setUserObject(getSpatial());
    }

    @Override
    public void removePhysics() {
        PhysicsSpace physicsSpace = getPhysicsSpace();
        physicsSpace.removeCollisionObject(this.rigidBody);
        physicsSpace.removeTickListener(this);
    }

    @Override
    public void removeSpatialData(Spatial spatial) {
        this.rigidBody.setUserObject(null);
    }

    public void resetForward(Vector3f vector3f) {
        if (this.rigidBody.isDynamic()) {
            if (vector3f == null) {
                this.localForward.set(0.0f, 0.0f, 1.0f);
            } else {
                this.localForward.set(vector3f);
            }
            updateLocalCoordinateSystem();
        }
    }

    public void setDucked(boolean z10) {
        if (!z10) {
            this.wantToUnDuck = true;
            return;
        }
        setHeightPercent(this.duckedFactor);
        this.isDucked = true;
        this.wantToUnDuck = false;
    }

    public void setDuckedFactor(float f10) {
        C13702E.f(f10, "factor");
        this.duckedFactor = f10;
    }

    public void setGravity(Vector3f vector3f) {
        C13702E.d(vector3f, "new gravity");
        this.rigidBody.setGravity(vector3f);
        this.localUp.set(vector3f).normalizeLocal().negateLocal();
        updateLocalCoordinateSystem();
    }

    public void setHeightPercent(float f10) {
        this.scale.setY(f10);
        this.rigidBody.setCollisionShape(getShape());
    }

    public void setJumpForce(Vector3f vector3f) {
        C13702E.d(vector3f, "new impulse");
        this.jumpImpulse.set(vector3f);
    }

    public void setKinematic(boolean z10) {
        this.rigidBody.setKinematic(z10);
    }

    public void setPhysicsDamping(float f10) {
        C13702E.f(f10, "new factor");
        this.dampingFactor = f10;
    }

    @Override
    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "new location");
        this.rigidBody.setPhysicsLocation(vector3f);
        this.baseLocation.set(vector3f);
    }

    @Override
    public void setPhysicsRotation(Quaternion quaternion) {
        C13702E.y(quaternion, "new orientation");
        this.viewToWorld.set(quaternion);
        this.viewDirInWorld.set(this.viewDirection);
        Quaternion quaternion2 = this.viewToWorld;
        Vector3f vector3f = this.viewDirInWorld;
        g.r(quaternion2, vector3f, vector3f);
        updateLocalViewDirection();
    }

    public void setViewDirection(Vector3f vector3f) {
        if (this.rigidBody.isDynamic()) {
            this.viewDirection.set(vector3f);
            updateLocalViewDirection();
        }
    }

    public void setWalkDirection(Vector3f vector3f) {
        this.walkVelocity.set(vector3f);
    }

    @Override
    public void update(float f10) {
        if (isEnabled()) {
            if (this.rigidBody.isDynamic()) {
                this.rigidBody.getPhysicsLocation(this.baseLocation);
                applyPhysicsTransform(this.baseLocation, this.viewToWorld);
            } else {
                this.baseLocation.set(getSpatialTranslation());
                setPhysicsLocation(this.baseLocation);
                this.viewToWorld.set(getSpatialRotation());
                setPhysicsRotation(this.viewToWorld);
            }
        }
    }

    public void updateLocalCoordinateSystem() {
        calculateNewForward(this.localToWorld, this.localForward, this.localUp);
        this.localLeft.set(this.localUp);
        this.localLeft.crossLocal(this.localForward);
        this.rigidBody.setPhysicsRotation(this.localToWorld);
        updateLocalViewDirection();
    }

    public void updateLocalViewDirection() {
        this.viewDirInWorld.set(this.viewDirection);
        Quaternion quaternion = this.localToWorld;
        Vector3f vector3f = this.viewDirInWorld;
        g.r(quaternion, vector3f, vector3f);
        calculateNewForward(this.viewToWorld, this.viewDirInWorld, this.localUp);
    }

    public void warp(Vector3f vector3f) {
        C13702E.d(vector3f, "new location");
        if (this.rigidBody.isDynamic()) {
            setPhysicsLocation(vector3f);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.initialRadius, "radius", 1.0f);
        capsule.write(this.initialHeight, "height", 2.0f);
        capsule.write(this.mass, tagMass, 80.0f);
        capsule.write(this.jumpImpulse, tagJumpForce, (Savable) null);
        capsule.write(this.dampingFactor, tagPhysicsDamping, 0.9f);
        capsule.write(this.duckedFactor, tagDuckedFactor, 0.6f);
        capsule.write(this.viewDirection, tagViewDirection, (Savable) null);
        capsule.write(this.walkVelocity, tagWalkDirection, (Savable) null);
        capsule.write(this.rigidBody, "body", (Savable) null);
    }

    public Vector3f getVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            return this.velocity.m1292clone();
        }
        return vector3f.set(this.velocity);
    }

    public Vector3f getViewDirection(Vector3f vector3f) {
        if (vector3f == null) {
            return this.viewDirection.m1292clone();
        }
        return vector3f.set(this.viewDirection);
    }

    public BetterCharacterControl(float f10, float f11, float f12) {
        this.isDucked = false;
        this.onGround = false;
        this.wantToJump = false;
        this.wantToUnDuck = false;
        this.dampingFactor = 0.9f;
        this.duckedFactor = 0.6f;
        this.localToWorld = new Quaternion();
        this.viewToWorld = new Quaternion();
        this.sweepBegin = new Transform();
        this.sweepEnd = new Transform();
        this.baseLocation = new Vector3f();
        this.jumpImpulse = new Vector3f();
        this.localForward = new Vector3f(0.0f, 0.0f, 1.0f);
        this.localLeft = new Vector3f(1.0f, 0.0f, 0.0f);
        this.localUp = new Vector3f(0.0f, 1.0f, 0.0f);
        this.scale = new Vector3f(1.0f, 1.0f, 1.0f);
        this.velocity = new Vector3f();
        this.viewDirection = new Vector3f(0.0f, 0.0f, 1.0f);
        this.viewDirInWorld = new Vector3f(0.0f, 0.0f, 1.0f);
        this.walkVelocity = new Vector3f();
        C13702E.E(f10, "radius");
        C13702E.H(f11 > 2.0f * f10, "height more than 2x the radius");
        C13702E.E(f12, tagMass);
        this.initialRadius = f10;
        this.initialHeight = f11;
        this.mass = f12;
        this.rigidBody = new PhysicsRigidBody(getShape(), f12);
        this.jumpImpulse = new Vector3f(0.0f, f12 * 5.0f, 0.0f);
        this.rigidBody.setAngularFactor(0.0f);
    }
}
