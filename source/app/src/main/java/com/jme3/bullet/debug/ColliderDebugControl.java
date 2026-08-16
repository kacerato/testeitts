package com.jme3.bullet.debug;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.MultiBodyCollider;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.material.Material;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.EnumC13714j;

class ColliderDebugControl extends CollisionShapeDebugControl {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(ColliderDebugControl.class.getName());
    private final MultiBodyCollider collider;
    private final Vector3f location;
    private EnumC13714j oldNormals;
    private int oldResolution;
    private final Quaternion rotation;

    public ColliderDebugControl(BulletDebugAppState bulletDebugAppState, MultiBodyCollider multiBodyCollider) {
        super(bulletDebugAppState);
        this.rotation = new Quaternion();
        this.location = new Vector3f();
        this.collider = multiBodyCollider;
        super.setShape(multiBodyCollider.getCollisionShape());
        this.oldNormals = multiBodyCollider.debugMeshNormals();
        this.oldResolution = multiBodyCollider.debugMeshResolution();
        Spatial debugShape = DebugShapeFactory.getDebugShape(multiBodyCollider);
        this.debugSpatial = debugShape;
        debugShape.setName(multiBodyCollider.toString());
        updateMaterial();
    }

    private void updateMaterial() {
        Material debugMaterial = this.collider.getDebugMaterial();
        if (debugMaterial == BulletDebugAppState.enableChildColoring) {
            if (this.debugSpatial instanceof Node) {
                colorChildren();
                return;
            }
            debugMaterial = null;
        }
        if (debugMaterial == null) {
            int debugNumSides = this.collider.debugNumSides();
            debugMaterial = !this.collider.isContactResponse() ? this.debugAppState.getGhostMaterial(debugNumSides) : this.collider.isActive() ? this.debugAppState.getActiveMaterial(debugNumSides) : this.debugAppState.getInactiveMaterial(debugNumSides);
        }
        this.debugSpatial.setMaterial(debugMaterial);
    }

    @Override
    public void controlUpdate(float f10) {
        CollisionShape collisionShape = this.collider.getCollisionShape();
        EnumC13714j debugMeshNormals = this.collider.debugMeshNormals();
        int debugMeshResolution = this.collider.debugMeshResolution();
        if (hasShapeChanged(collisionShape) || this.oldNormals != debugMeshNormals || this.oldResolution != debugMeshResolution) {
            logger.log(Level.INFO, "Rebuild debugSpatial for {0}.", this.collider);
            setShape(collisionShape);
            this.oldNormals = debugMeshNormals;
            this.oldResolution = debugMeshResolution;
            Node node = (Node) this.spatial;
            node.detachChild(this.debugSpatial);
            Spatial debugShape = DebugShapeFactory.getDebugShape(this.collider);
            this.debugSpatial = debugShape;
            debugShape.setName(this.collider.toString());
            node.attachChild(this.debugSpatial);
        }
        updateMaterial();
        this.collider.getPhysicsLocation(this.location);
        this.collider.getPhysicsRotation(this.rotation);
        applyPhysicsTransform(this.location, this.rotation);
    }
}
