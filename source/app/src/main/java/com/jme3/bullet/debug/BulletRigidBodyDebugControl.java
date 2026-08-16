package com.jme3.bullet.debug;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.infos.RigidBodyMotionState;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.material.Material;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.EnumC13714j;

public class BulletRigidBodyDebugControl extends CollisionShapeDebugControl {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(BulletRigidBodyDebugControl.class.getName());
    private final PhysicsRigidBody body;
    private final Vector3f location;
    private EnumC13714j oldNormals;
    private int oldResolution;
    private final Quaternion rotation;

    public BulletRigidBodyDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsRigidBody physicsRigidBody) {
        super(bulletDebugAppState);
        this.rotation = new Quaternion();
        this.location = new Vector3f();
        this.body = physicsRigidBody;
        super.setShape(physicsRigidBody.getCollisionShape());
        this.oldNormals = physicsRigidBody.debugMeshNormals();
        this.oldResolution = physicsRigidBody.debugMeshResolution();
        Spatial debugShape = DebugShapeFactory.getDebugShape(physicsRigidBody);
        this.debugSpatial = debugShape;
        debugShape.setName(physicsRigidBody.toString());
        updateMaterial();
    }

    private void updateMaterial() {
        Material debugMaterial = this.body.getDebugMaterial();
        if (debugMaterial == BulletDebugAppState.enableChildColoring) {
            if (this.debugSpatial instanceof Node) {
                colorChildren();
                return;
            }
            debugMaterial = null;
        }
        if (debugMaterial == null) {
            int debugNumSides = this.body.debugNumSides();
            debugMaterial = !this.body.isContactResponse() ? this.debugAppState.getGhostMaterial(debugNumSides) : (this.body.isDynamic() && this.body.isActive()) ? this.debugAppState.getActiveMaterial(debugNumSides) : this.debugAppState.getInactiveMaterial(debugNumSides);
        }
        this.debugSpatial.setMaterial(debugMaterial);
    }

    @Override
    public void controlUpdate(float f10) {
        CollisionShape collisionShape = this.body.getCollisionShape();
        EnumC13714j debugMeshNormals = this.body.debugMeshNormals();
        int debugMeshResolution = this.body.debugMeshResolution();
        if (hasShapeChanged(collisionShape) || this.oldNormals != debugMeshNormals || this.oldResolution != debugMeshResolution) {
            logger.log(Level.INFO, "Rebuild debugSpatial for {0}.", this.body);
            setShape(collisionShape);
            this.oldNormals = debugMeshNormals;
            this.oldResolution = debugMeshResolution;
            Node node = (Node) this.spatial;
            node.detachChild(this.debugSpatial);
            Spatial debugShape = DebugShapeFactory.getDebugShape(this.body);
            this.debugSpatial = debugShape;
            debugShape.setName(this.body.toString());
            node.attachChild(this.debugSpatial);
        }
        updateMaterial();
        if (this.body.isDynamic()) {
            RigidBodyMotionState motionState = this.body.getMotionState();
            motionState.getLocation(this.location);
            motionState.getOrientation(this.rotation);
        } else {
            this.body.getPhysicsLocation(this.location);
            this.body.getPhysicsRotation(this.rotation);
        }
        applyPhysicsTransform(this.location, this.rotation);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        super.setSpatial(spatial);
    }
}
