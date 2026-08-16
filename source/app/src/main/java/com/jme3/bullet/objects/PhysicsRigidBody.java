package com.jme3.bullet.objects;

import android.provider.MediaStore;
import androidx.constraintlayout.motion.widget.Key;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.HeightfieldCollisionShape;
import com.jme3.bullet.objects.infos.RigidBodyMotionState;
import com.jme3.bullet.objects.infos.RigidBodySnapshot;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.simsilica.mathd.Matrix3d;
import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.g;
import jf.h;
import p000if.C13702E;

public class PhysicsRigidBody extends PhysicsBody {
    static final boolean $assertionsDisabled = false;
    private static final String tagAngularDamping = "angularDamping";
    private static final String tagAngularFactor = "angularFactor";
    private static final String tagAngularSleepingThreshold = "angularSleepingThreshold";
    private static final String tagAngularVelocity = "angularVelocity";
    private static final String tagAppliedForce = "appliedForce";
    private static final String tagAppliedTorque = "appliedTorque";
    private static final String tagContactResponse = "contactResponse";
    private static final String tagGravity = "gravity";
    private static final String tagInverseInertia = "inverseInertia";
    private static final String tagKinematic = "kinematic";
    private static final String tagLinearDamping = "linearDamping";
    private static final String tagLinearFactor = "linearFactor";
    private static final String tagLinearSleepingThreshold = "linearSleepingThreshold";
    private static final String tagLinearVelocity = "linearVelocity";
    private static final String tagMass = "mass";
    private static final String tagMotionState = "motionState";
    private static final String tagPhysicsLocation = "physicsLocation";
    private static final String tagPhysicsRotation = "physicsRotation";
    private static final String tagProtectGravity = "tagProtectGravity";
    private boolean kinematic;
    protected float mass;
    private RigidBodyMotionState motionState;
    public static final Logger logger2 = Logger.getLogger(PhysicsRigidBody.class.getName());
    private static final Matrix3f matrixIdentity = new Matrix3f();
    private static final Vector3f scaleIdentity = new Vector3f(1.0f, 1.0f, 1.0f);
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

    public PhysicsRigidBody() {
        this.kinematic = false;
        this.mass = 1.0f;
        this.motionState = new RigidBodyMotionState();
    }

    private static native void applyCentralForce(long j10, Vector3f vector3f);

    private static native void applyCentralImpulse(long j10, Vector3f vector3f);

    private static native void applyForce(long j10, Vector3f vector3f, Vector3f vector3f2);

    private static native void applyImpulse(long j10, Vector3f vector3f, Vector3f vector3f2);

    private static native void applyTorque(long j10, Vector3f vector3f);

    private static native void applyTorqueImpulse(long j10, Vector3f vector3f);

    private boolean checkKinematicFlag() {
        return this.kinematic == ((collisionFlags() & 2) != 0);
    }

    private boolean checkMass() {
        return FastMath.approximateEquals(getMass(nativeId()), this.mass);
    }

    private static native void clearForces(long j10);

    private static native long createRigidBody(float f10, long j10, long j11);

    private static native float getAngularDamping(long j10);

    private static native void getAngularFactor(long j10, Vector3f vector3f);

    private static native float getAngularSleepingThreshold(long j10);

    private static native void getAngularVelocity(long j10, Vector3f vector3f);

    private static native void getAngularVelocityDp(long j10, Vec3d vec3d);

    private static native void getGravity(long j10, Vector3f vector3f);

    private static native void getGravityDp(long j10, Vec3d vec3d);

    private static native void getInverseInertiaLocal(long j10, Vector3f vector3f);

    private static native void getInverseInertiaWorld(long j10, Matrix3f matrix3f);

    private static native float getLinearDamping(long j10);

    private static native void getLinearFactor(long j10, Vector3f vector3f);

    private static native float getLinearSleepingThreshold(long j10);

    private static native void getLinearVelocity(long j10, Vector3f vector3f);

    private static native void getLinearVelocityDp(long j10, Vec3d vec3d);

    private static native float getMass(long j10);

    private static native float getSquaredSpeed(long j10);

    private static native void getTotalForce(long j10, Vector3f vector3f);

    private static native void getTotalTorque(long j10, Vector3f vector3f);

    private static native boolean getUseSpaceGravity(long j10);

    private static native void setAngularDamping(long j10, float f10);

    private static native void setAngularFactor(long j10, Vector3f vector3f);

    private static native void setAngularSleepingThreshold(long j10, float f10);

    private static native void setAngularVelocity(long j10, Vector3f vector3f);

    private static native void setAngularVelocityDp(long j10, Vec3d vec3d);

    private static native void setCollisionShape(long j10, long j11);

    private static native void setDamping(long j10, float f10, float f11);

    private static native void setGravity(long j10, Vector3f vector3f);

    private static native void setGravityDp(long j10, Vec3d vec3d);

    private static native void setInverseInertiaLocal(long j10, Vector3f vector3f);

    private static native void setKinematic(long j10, boolean z10);

    private static native void setLinearFactor(long j10, Vector3f vector3f);

    private static native void setLinearSleepingThreshold(long j10, float f10);

    private static native void setLinearVelocity(long j10, Vector3f vector3f);

    private static native void setLinearVelocityDp(long j10, Vec3d vec3d);

    private static native void setPhysicsLocation(long j10, Vector3f vector3f);

    private static native void setPhysicsLocationDp(long j10, Vec3d vec3d);

    private static native void setPhysicsRotation(long j10, Matrix3f matrix3f);

    private static native void setPhysicsRotation(long j10, Quaternion quaternion);

    private static native void setPhysicsRotationDp(long j10, Matrix3d matrix3d);

    private static native void setPhysicsRotationDp(long j10, Quatd quatd);

    private static native void setSleepingThresholds(long j10, float f10, float f11);

    private static native void setUseSpaceGravity(long j10, boolean z10);

    private static native void updateMassProps(long j10, long j11, float f10);

    private static void validateDynamicShape(CollisionShape collisionShape) {
        if (collisionShape.isNonMoving()) {
            throw new IllegalStateException("Dynamic rigid body can't have a non-moving shape!");
        }
    }

    public void activate() {
        activate(true);
    }

    public void applyCentralForce(Vector3f vector3f) {
        C13702E.d(vector3f, "force");
        applyCentralForce(nativeId(), vector3f);
        activate();
    }

    public void applyCentralImpulse(Vector3f vector3f) {
        C13702E.d(vector3f, "impulse");
        applyCentralImpulse(nativeId(), vector3f);
        activate();
    }

    public void applyForce(Vector3f vector3f, Vector3f vector3f2) {
        C13702E.d(vector3f, "force");
        C13702E.d(vector3f2, "offset");
        applyForce(nativeId(), vector3f, vector3f2);
        activate();
    }

    public void applyImpulse(Vector3f vector3f, Vector3f vector3f2) {
        C13702E.d(vector3f, "impulse");
        C13702E.d(vector3f2, "offset");
        applyImpulse(nativeId(), vector3f, vector3f2);
        activate();
    }

    public void applyTorque(Vector3f vector3f) {
        C13702E.d(vector3f, "torque");
        applyTorque(nativeId(), vector3f);
        activate();
    }

    public void applyTorqueImpulse(Vector3f vector3f) {
        C13702E.d(vector3f, "torque impulse");
        applyTorqueImpulse(nativeId(), vector3f);
        activate();
    }

    public void clearForces() {
        clearForces(nativeId());
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        PhysicsRigidBody physicsRigidBody = (PhysicsRigidBody) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.motionState = (RigidBodyMotionState) cloner.clone(this.motionState);
        long createRigidBody = createRigidBody(this.mass, this.motionState.nativeId(), getCollisionShape().nativeId());
        setNativeId(createRigidBody);
        logger2.log(Level.INFO, "Created {0}", Long.toHexString(createRigidBody));
        new RigidBodySnapshot(physicsRigidBody).applyAllExceptIgnoreListTo(this);
        setKinematic(this.kinematic);
        setInverseInertiaLocal(physicsRigidBody.getInverseInertiaLocal(null));
        Vec3d vec3d = new Vec3d();
        getGravityDp(physicsRigidBody.nativeId(), vec3d);
        setGravityDp(createRigidBody, vec3d);
        cloneIgnoreList(cloner, physicsRigidBody);
        cloneJoints(cloner, physicsRigidBody);
        postRebuild();
    }

    public float getAngularDamping() {
        return getAngularDamping(nativeId());
    }

    public float getAngularFactor() {
        return getAngularFactor(null).f81611x;
    }

    public float getAngularSleepingThreshold() {
        return getAngularSleepingThreshold(nativeId());
    }

    public Vector3f getAngularVelocity() {
        return getAngularVelocity(null);
    }

    public Vec3d getAngularVelocityDp(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        getAngularVelocityDp(nativeId(), vec3d);
        return vec3d;
    }

    public Vector3f getAngularVelocityLocal(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAngularVelocity(nativeId(), vector3f);
        g.s(getPhysicsRotation(null), vector3f, vector3f);
        return vector3f;
    }

    @Override
    public Vector3f getGravity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getGravity(nativeId(), vector3f);
        return vector3f;
    }

    public Vec3d getGravityDp(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        getGravityDp(nativeId(), vec3d);
        return vec3d;
    }

    public Vector3f getInverseInertiaLocal(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getInverseInertiaLocal(nativeId(), vector3f);
        return vector3f;
    }

    public Matrix3f getInverseInertiaWorld(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        getInverseInertiaWorld(nativeId(), matrix3f);
        return matrix3f;
    }

    public float getLinearDamping() {
        return getLinearDamping(nativeId());
    }

    public Vector3f getLinearFactor(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getLinearFactor(nativeId(), vector3f);
        return vector3f;
    }

    public float getLinearSleepingThreshold() {
        return getLinearSleepingThreshold(nativeId());
    }

    public Vector3f getLinearVelocity() {
        return getLinearVelocity(null);
    }

    public Vec3d getLinearVelocityDp(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        getLinearVelocityDp(nativeId(), vec3d);
        return vec3d;
    }

    @Override
    public float getMass() {
        return this.mass;
    }

    public RigidBodyMotionState getMotionState() {
        return this.motionState;
    }

    public Quaternion getPhysicsRotation() {
        return getPhysicsRotation(null);
    }

    public float getSquaredSpeed() {
        return getSquaredSpeed(nativeId());
    }

    public boolean isDynamic() {
        return this.mass > 0.0f && !this.kinematic;
    }

    public boolean isGravityProtected() {
        return !getUseSpaceGravity(nativeId());
    }

    public final boolean isKinematic() {
        return this.kinematic;
    }

    public double kineticEnergy() {
        double squaredSpeed = this.mass * getSquaredSpeed();
        Vector3f vector3f = new Vector3f();
        getAngularVelocityLocal(vector3f);
        double d10 = vector3f.f81611x;
        double d11 = vector3f.f81612y;
        double d12 = vector3f.f81613z;
        Vector3f inverseInertiaLocal = getInverseInertiaLocal(null);
        return (squaredSpeed + ((((d10 * d10) / inverseInertiaLocal.f81611x) + ((d11 * d11) / inverseInertiaLocal.f81612y)) + ((d12 * d12) / inverseInertiaLocal.f81613z))) / 2.0d;
    }

    public double mechanicalEnergy() {
        return ((-this.mass) * h.r(getGravity(null), getPhysicsLocation(null))) + kineticEnergy();
    }

    public void postRebuild() {
        int collisionFlags = collisionFlags();
        PhysicsCollisionObject.setCollisionFlags(nativeId(), (this.mass != 0.0f || this.kinematic) ? collisionFlags & (-2) : collisionFlags | 1);
        initUserPointer();
    }

    public void preRebuild() {
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.kinematic = capsule.readBoolean(tagKinematic, false);
        this.mass = capsule.readFloat(tagMass, 1.0f);
        RigidBodyMotionState rigidBodyMotionState = (RigidBodyMotionState) capsule.readSavable(tagMotionState, null);
        this.motionState = rigidBodyMotionState;
        if (rigidBodyMotionState == null) {
            this.motionState = new RigidBodyMotionState();
        }
        rebuildRigidBody();
        Vector3f vector3f = translateIdentity;
        setAngularVelocity((Vector3f) capsule.readSavable(tagAngularVelocity, vector3f));
        setLinearVelocity((Vector3f) capsule.readSavable(tagLinearVelocity, vector3f));
        applyCentralForce((Vector3f) capsule.readSavable(tagAppliedForce, vector3f));
        applyTorque((Vector3f) capsule.readSavable(tagAppliedTorque, vector3f));
        readPcoProperties(capsule);
        setContactResponse(capsule.readBoolean(tagContactResponse, true));
        Vector3f vector3f2 = scaleIdentity;
        setInverseInertiaLocal((Vector3f) capsule.readSavable(tagInverseInertia, vector3f2));
        setAngularFactor((Vector3f) capsule.readSavable(tagAngularFactor, vector3f2));
        setGravity(nativeId(), (Vector3f) capsule.readSavable(tagGravity, vector3f));
        setLinearFactor((Vector3f) capsule.readSavable(tagLinearFactor, vector3f2));
        setDamping(capsule.readFloat(tagLinearDamping, 0.0f), capsule.readFloat(tagAngularDamping, 0.0f));
        setSleepingThresholds(capsule.readFloat(tagLinearSleepingThreshold, 0.8f), capsule.readFloat(tagAngularSleepingThreshold, 1.0f));
        setProtectGravity(capsule.readBoolean(tagProtectGravity, false));
        setPhysicsLocation((Vector3f) capsule.readSavable(tagPhysicsLocation, vector3f));
        setPhysicsRotation((Matrix3f) capsule.readSavable(tagPhysicsRotation, matrixIdentity));
        readJoints(capsule);
    }

    public void rebuildRigidBody() {
        long j10;
        Vec3d vec3d;
        RigidBodySnapshot rigidBodySnapshot;
        PhysicsSpace physicsSpace = null;
        if (hasAssignedNativeObject()) {
            j10 = nativeId();
            PhysicsSpace physicsSpace2 = (PhysicsSpace) getCollisionSpace();
            if (physicsSpace2 != null) {
                physicsSpace2.removeCollisionObject(this);
            }
            rigidBodySnapshot = new RigidBodySnapshot(this);
            Vec3d gravityDp = getGravityDp(null);
            logger2.log(Level.INFO, "Clearing {0}.", this);
            clearIgnoreList();
            unassignNativeObject();
            physicsSpace = physicsSpace2;
            vec3d = gravityDp;
        } else {
            j10 = 0;
            vec3d = null;
            rigidBodySnapshot = null;
        }
        preRebuild();
        long createRigidBody = createRigidBody(this.mass, this.motionState.nativeId(), getCollisionShape().nativeId());
        setNativeId(createRigidBody);
        Logger logger = logger2;
        Level level = Level.INFO;
        if (logger.isLoggable(level)) {
            if (j10 == 0) {
                logger.log(level, "Created {0}.", Long.toHexString(createRigidBody));
            } else {
                logger.log(level, "Substituted {0} for {1}.", new Object[]{Long.toHexString(createRigidBody), Long.toHexString(j10)});
            }
        }
        setKinematic(this.kinematic);
        postRebuild();
        if (physicsSpace != null) {
            physicsSpace.addCollisionObject(this);
        }
        if (rigidBodySnapshot != null) {
            rigidBodySnapshot.applyTo(this);
        }
        if (vec3d != null) {
            setGravityDp(createRigidBody, vec3d);
        }
    }

    public void setAngularDamping(float f10) {
        C13702E.f(f10, "angular damping");
        setAngularDamping(nativeId(), f10);
    }

    public void setAngularFactor(float f10) {
        setAngularFactor(nativeId(), new Vector3f(f10, f10, f10));
    }

    public void setAngularSleepingThreshold(float f10) {
        setAngularSleepingThreshold(nativeId(), f10);
    }

    public void setAngularVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "omega");
        setAngularVelocity(nativeId(), vector3f);
        activate();
    }

    public void setAngularVelocityDp(Vec3d vec3d) {
        setAngularVelocityDp(nativeId(), vec3d);
        activate();
    }

    @Override
    public void setCollisionShape(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "desired shape");
        if (isDynamic()) {
            validateDynamicShape(collisionShape);
        }
        super.setCollisionShape(collisionShape);
        if (hasAssignedNativeObject()) {
            long nativeId = nativeId();
            long nativeId2 = collisionShape.nativeId();
            setCollisionShape(nativeId, nativeId2);
            updateMassProps(nativeId, nativeId2, this.mass);
            return;
        }
        rebuildRigidBody();
    }

    public void setContactResponse(boolean z10) {
        int collisionFlags = collisionFlags();
        PhysicsCollisionObject.setCollisionFlags(nativeId(), z10 ? collisionFlags & (-5) : collisionFlags | 4);
    }

    public void setDamping(float f10, float f11) {
        C13702E.f(f10, "linear damping");
        C13702E.f(f11, "angular damping");
        setDamping(nativeId(), f10, f11);
    }

    public void setEnableSleep(boolean z10) {
        long nativeId = nativeId();
        if (z10) {
            PhysicsCollisionObject.setActivationState(nativeId, 1);
        } else {
            PhysicsCollisionObject.setActivationState(nativeId, 4);
        }
    }

    @Override
    public void setGravity(Vector3f vector3f) {
        C13702E.d(vector3f, "acceleration");
        if (!isInWorld() && !isGravityProtected()) {
            logger2.warning("The body isn't in any PhysicsSpace, and its gravity isn't protected. Unless protection is set, adding it to a PhysicsSpace will override its gravity.");
        }
        setGravity(nativeId(), vector3f);
    }

    public void setGravityDp(Vec3d vec3d) {
        C13702E.t(vec3d, "acceleration");
        if (!isInWorld() && !isGravityProtected()) {
            logger2.warning("The body isn't in any PhysicsSpace, and its gravity isn't protected. Unless protection is set, adding it to a PhysicsSpace will override its gravity.");
        }
        setGravityDp(nativeId(), vec3d);
    }

    public void setInverseInertiaLocal(Vector3f vector3f) {
        C13702E.t(vector3f, "inverse inertia");
        setInverseInertiaLocal(nativeId(), vector3f);
    }

    public void setKinematic(boolean z10) {
        this.kinematic = z10;
        setKinematic(nativeId(), z10);
    }

    public void setLinearDamping(float f10) {
        C13702E.f(f10, "linear damping");
        setDamping(nativeId(), f10, getAngularDamping());
    }

    public void setLinearFactor(Vector3f vector3f) {
        C13702E.t(vector3f, "factor");
        setLinearFactor(nativeId(), vector3f);
    }

    public void setLinearSleepingThreshold(float f10) {
        setLinearSleepingThreshold(nativeId(), f10);
    }

    public void setLinearVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "velocity");
        setLinearVelocity(nativeId(), vector3f);
        activate();
    }

    public void setLinearVelocityDp(Vec3d vec3d) {
        C13702E.t(vec3d, "velocity");
        setLinearVelocityDp(nativeId(), vec3d);
        activate();
    }

    @Override
    public void setMass(float f10) {
        C13702E.p(f10, tagMass);
        CollisionShape collisionShape = getCollisionShape();
        if (f10 > 0.0f && !this.kinematic) {
            validateDynamicShape(collisionShape);
        }
        float f11 = this.mass;
        if (f10 == f11) {
            return;
        }
        if (f11 == 0.0f) {
            this.mass = f10;
            rebuildRigidBody();
            return;
        }
        this.mass = f10;
        long nativeId = nativeId();
        updateMassProps(nativeId, collisionShape.nativeId(), f10);
        int collisionFlags = collisionFlags();
        PhysicsCollisionObject.setCollisionFlags(nativeId, (f10 != 0.0f || this.kinematic) ? collisionFlags & (-2) : collisionFlags | 1);
    }

    @Override
    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        setPhysicsLocation(nativeId(), vector3f);
    }

    public void setPhysicsLocationDp(Vec3d vec3d) {
        C13702E.t(vec3d, "location");
        setPhysicsLocationDp(nativeId(), vec3d);
    }

    public void setPhysicsRotation(Matrix3f matrix3f) {
        C13702E.t(matrix3f, Key.ROTATION);
        if ((getCollisionShape() instanceof HeightfieldCollisionShape) && !matrix3f.isIdentity()) {
            throw new IllegalArgumentException("No rotation of heightfields.");
        }
        setPhysicsRotation(nativeId(), matrix3f);
    }

    public void setPhysicsRotationDp(Matrix3d matrix3d) {
        C13702E.t(matrix3d, MediaStore.Images.ImageColumns.ORIENTATION);
        if ((getCollisionShape() instanceof HeightfieldCollisionShape) && !matrix3d.isIdentity()) {
            throw new IllegalArgumentException("No rotation of heightfields.");
        }
        setPhysicsRotationDp(nativeId(), matrix3d);
    }

    public void setPhysicsScale(Vector3f vector3f) {
        C13702E.s(vector3f, "new scale");
        C13702E.d(vector3f, "new scale");
        CollisionShape collisionShape = getCollisionShape();
        if (h.O(collisionShape.getScale(null), vector3f)) {
            collisionShape.setScale(vector3f);
            setCollisionShape(collisionShape);
        }
    }

    public void setPhysicsTransform(Transform transform) {
        setPhysicsLocation(transform.getTranslation());
        setPhysicsRotation(transform.getRotation());
        setPhysicsScale(transform.getScale());
    }

    public void setProtectGravity(boolean z10) {
        setUseSpaceGravity(nativeId(), !z10);
    }

    public void setSleepingThresholds(float f10, float f11) {
        C13702E.p(f10, "linear threshold");
        C13702E.p(f11, "angular threshold");
        setSleepingThresholds(nativeId(), f10, f11);
    }

    public Vector3f totalAppliedForce(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getTotalForce(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f totalAppliedTorque(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getTotalTorque(nativeId(), vector3f);
        return vector3f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(getMass(), tagMass, 1.0f);
        capsule.write(isContactResponse(), tagContactResponse, true);
        capsule.write(getAngularFactor(null), tagAngularFactor, (Savable) null);
        capsule.write(getGravity(null), tagGravity, (Savable) null);
        capsule.write(getLinearFactor(null), tagLinearFactor, (Savable) null);
        capsule.write(this.kinematic, tagKinematic, false);
        capsule.write(this.motionState, tagMotionState, (Savable) null);
        capsule.write(getInverseInertiaLocal(null), tagInverseInertia, (Savable) null);
        capsule.write(getLinearDamping(), tagLinearDamping, 0.0f);
        capsule.write(getAngularDamping(), tagAngularDamping, 0.0f);
        capsule.write(getLinearSleepingThreshold(), tagLinearSleepingThreshold, 0.8f);
        capsule.write(getAngularSleepingThreshold(), tagAngularSleepingThreshold, 1.0f);
        capsule.write(isGravityProtected(), tagProtectGravity, false);
        capsule.write(getPhysicsLocation(null), tagPhysicsLocation, (Savable) null);
        capsule.write(getPhysicsRotationMatrix(null), tagPhysicsRotation, (Savable) null);
        if (isDynamic()) {
            capsule.write(getLinearVelocity(null), tagLinearVelocity, (Savable) null);
            capsule.write(getAngularVelocity(null), tagAngularVelocity, (Savable) null);
        }
        capsule.write(totalAppliedForce(null), tagAppliedForce, (Savable) null);
        capsule.write(totalAppliedTorque(null), tagAppliedTorque, (Savable) null);
        writeJoints(capsule);
    }

    public Vector3f getAngularFactor(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAngularFactor(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getAngularVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAngularVelocity(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getLinearVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getLinearVelocity(nativeId(), vector3f);
        return vector3f;
    }

    public void setAngularFactor(Vector3f vector3f) {
        setAngularFactor(nativeId(), vector3f);
    }

    public PhysicsRigidBody(CollisionShape collisionShape) {
        this.kinematic = false;
        this.mass = 1.0f;
        this.motionState = new RigidBodyMotionState();
        C13702E.t(collisionShape, "shape");
        super.setCollisionShape(collisionShape);
        rebuildRigidBody();
    }

    public void setPhysicsRotation(Quaternion quaternion) {
        C13702E.y(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        if ((getCollisionShape() instanceof HeightfieldCollisionShape) && !g.j(quaternion)) {
            throw new IllegalArgumentException("No rotation of heightfields.");
        }
        setPhysicsRotation(nativeId(), quaternion);
    }

    public void setPhysicsRotationDp(Quatd quatd) {
        C13702E.t(quatd, MediaStore.Images.ImageColumns.ORIENTATION);
        if ((getCollisionShape() instanceof HeightfieldCollisionShape) && !quatd.isRotationIdentity()) {
            throw new IllegalArgumentException("No rotation of heightfields.");
        }
        setPhysicsRotationDp(nativeId(), quatd);
    }

    public PhysicsRigidBody(CollisionShape collisionShape, float f10) {
        this.kinematic = false;
        this.mass = 1.0f;
        this.motionState = new RigidBodyMotionState();
        C13702E.t(collisionShape, "shape");
        C13702E.p(f10, tagMass);
        this.mass = f10;
        super.setCollisionShape(collisionShape);
        rebuildRigidBody();
    }
}
