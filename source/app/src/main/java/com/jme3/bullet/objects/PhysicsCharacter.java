package com.jme3.bullet.objects;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.ConvexShape;
import com.jme3.bullet.objects.infos.CharacterController;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.core.JavaCore;
import p000if.C13702E;

public class PhysicsCharacter extends PhysicsCollisionObject {
    static final boolean $assertionsDisabled = false;
    private static final String tagContactResponse = "contactResponse";
    private static final String tagController = "controller";
    private static final String tagPhysicsLocation = "physicsLocation";
    private CharacterController controller;
    public static final Logger logger2 = Logger.getLogger(PhysicsCharacter.class.getName());
    private static final Vector3f defaultGravity = new Vector3f(0.0f, -29.4f, 0.0f);
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    private static final Vector3f unitY = new Vector3f(0.0f, 1.0f, 0.0f);
    private static final ThreadLocal<Vector3f> threadTmpVector = new ThreadLocal<Vector3f>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Vector3f initialValue() {
            return new Vector3f();
        }
    };

    public PhysicsCharacter() {
    }

    private void buildObject() {
        if (!hasAssignedNativeObject()) {
            setNativeId(createGhostObject());
            logger2.log(Level.FINE, "Creating {0}.", this);
            initUserPointer();
        }
        long nativeId = nativeId();
        setCharacterFlags(nativeId);
        PhysicsCollisionObject.attachCollisionShape(nativeId, getCollisionShape().nativeId());
        this.controller = new CharacterController(this);
        logger2.log(Level.FINE, "Creating {0}.", this);
    }

    private static native long createGhostObject();

    private static native void setCharacterFlags(long j10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        PhysicsCharacter physicsCharacter = (PhysicsCharacter) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.controller = null;
        buildObject();
        this.controller.copyAll(physicsCharacter.controller);
        copyPcoProperties(physicsCharacter);
        setContactResponse(physicsCharacter.isContactResponse());
        setPhysicsLocation(physicsCharacter.getPhysicsLocation(null));
        cloneIgnoreList(cloner, physicsCharacter);
    }

    public float getAngularDamping() {
        return this.controller.getAngularDamping();
    }

    public Vector3f getAngularVelocity(Vector3f vector3f) {
        return this.controller.getAngularVelocity(vector3f);
    }

    public long getControllerId() {
        return this.controller.nativeId();
    }

    public float getFallSpeed() {
        return this.controller.getFallSpeed();
    }

    public Vector3f getGravity(Vector3f vector3f) {
        return this.controller.getGravity(vector3f);
    }

    public float getJumpSpeed() {
        return this.controller.getJumpSpeed();
    }

    public float getLinearDamping() {
        return this.controller.getLinearDamping();
    }

    public Vector3f getLinearVelocity(Vector3f vector3f) {
        return this.controller.getLinearVelocity(vector3f);
    }

    public float getMaxPenetrationDepth() {
        return this.controller.getMaxPenetrationDepth();
    }

    public float getMaxSlope() {
        return this.controller.getMaxSlope();
    }

    public float getStepHeight() {
        return this.controller.getStepHeight();
    }

    public Vector3f getUpDirection(Vector3f vector3f) {
        return this.controller.getUpDirection(vector3f);
    }

    public Vector3f getWalkDirection(Vector3f vector3f) {
        return this.controller.getWalkDirection(vector3f);
    }

    public boolean isUsingGhostSweepTest() {
        return this.controller.isUsingGhostSweepTest();
    }

    public void jump() {
        jump(translateIdentity);
    }

    public boolean onGround() {
        return this.controller.onGround();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        buildObject();
        readPcoProperties(capsule);
        this.controller.copyAll((CharacterController) capsule.readSavable(tagController, null));
        setContactResponse(capsule.readBoolean(tagContactResponse, true));
        warp((Vector3f) capsule.readSavable(tagPhysicsLocation, new Vector3f()));
    }

    public void reset(PhysicsSpace physicsSpace) {
        C13702E.t(physicsSpace, JavaCore.SPACE);
        this.controller.reset(physicsSpace);
    }

    public void setAngularDamping(float f10) {
        this.controller.setAngularDamping(f10);
    }

    public void setAngularVelocity(Vector3f vector3f) {
        C13702E.t(vector3f, "angular velocity");
        this.controller.setAngularVelocity(vector3f);
    }

    @Override
    public void setCollisionShape(CollisionShape collisionShape) {
        super.setCollisionShape(collisionShape);
        if (hasAssignedNativeObject()) {
            PhysicsCollisionObject.attachCollisionShape(nativeId(), collisionShape.nativeId());
        } else {
            buildObject();
        }
    }

    public void setContactResponse(boolean z10) {
        int collisionFlags = collisionFlags();
        PhysicsCollisionObject.setCollisionFlags(nativeId(), z10 ? collisionFlags & (-5) : collisionFlags | 4);
    }

    public void setFallSpeed(float f10) {
        this.controller.setFallSpeed(f10);
    }

    public void setGravity(float f10) {
        Vector3f vector3f = threadTmpVector.get();
        getUpDirection(vector3f);
        vector3f.multLocal(-f10);
        setGravity(vector3f);
    }

    public void setJumpSpeed(float f10) {
        this.controller.setJumpSpeed(f10);
    }

    public void setLinearDamping(float f10) {
        this.controller.setLinearDamping(f10);
    }

    public void setLinearVelocity(Vector3f vector3f) {
        C13702E.t(vector3f, "velocity");
        this.controller.setLinearVelocity(vector3f);
    }

    public void setMaxPenetrationDepth(float f10) {
        this.controller.setMaxPenetrationDepth(f10);
    }

    public void setMaxSlope(float f10) {
        C13702E.h(f10, "slope radians", 0.0f, 1.5707964f);
        this.controller.setMaxSlope(f10);
    }

    public void setPhysicsLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        this.controller.warp(vector3f);
    }

    public void setPhysicsLocationDp(Vec3d vec3d) {
        C13702E.t(vec3d, "location");
        this.controller.warpDp(vec3d);
    }

    public void setStepHeight(float f10) {
        this.controller.setStepHeight(f10);
    }

    public void setSweepTest(boolean z10) {
        this.controller.setSweepTest(z10);
    }

    public void setUp(Vector3f vector3f) {
        C13702E.A(vector3f, "direction");
        this.controller.setUp(vector3f);
    }

    public void setWalkDirection(Vector3f vector3f) {
        C13702E.t(vector3f, "offset");
        this.controller.setWalkDirection(vector3f);
    }

    public void warp(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        this.controller.warp(vector3f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(isContactResponse(), tagContactResponse, true);
        capsule.write(this.controller, tagController, (Savable) null);
        capsule.write(getPhysicsLocation(), tagPhysicsLocation, (Savable) null);
    }

    public PhysicsCharacter(ConvexShape convexShape, float f10) {
        C13702E.t(convexShape, "shape");
        super.setCollisionShape(convexShape);
        buildObject();
        setStepHeight(f10);
        setGravity(defaultGravity);
        setUp(unitY);
        warp(translateIdentity);
    }

    public void jump(Vector3f vector3f) {
        this.controller.jump(vector3f);
    }

    public void setGravity(Vector3f vector3f) {
        C13702E.t(vector3f, "gravity");
        this.controller.setGravity(vector3f);
    }
}
