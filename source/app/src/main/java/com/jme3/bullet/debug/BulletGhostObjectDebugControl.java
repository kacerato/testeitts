package com.jme3.bullet.debug;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsGhostObject;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.material.Material;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.EnumC13714j;

public class BulletGhostObjectDebugControl extends CollisionShapeDebugControl {
    public static final Logger logger = Logger.getLogger(BulletGhostObjectDebugControl.class.getName());
    private final PhysicsGhostObject ghost;
    private final Vector3f location;
    private EnumC13714j oldNormals;
    private int oldResolution;
    private final Quaternion rotation;

    public BulletGhostObjectDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsGhostObject physicsGhostObject) {
        super(bulletDebugAppState);
        this.rotation = new Quaternion();
        this.location = new Vector3f();
        this.ghost = physicsGhostObject;
        super.setShape(physicsGhostObject.getCollisionShape());
        this.oldNormals = physicsGhostObject.debugMeshNormals();
        this.oldResolution = physicsGhostObject.debugMeshResolution();
        Spatial debugShape = DebugShapeFactory.getDebugShape(physicsGhostObject);
        this.debugSpatial = debugShape;
        debugShape.setName(physicsGhostObject.toString());
        updateMaterial();
    }

    private void updateMaterial() {
        Material debugMaterial = this.ghost.getDebugMaterial();
        if (debugMaterial == BulletDebugAppState.enableChildColoring) {
            if (this.debugSpatial instanceof Node) {
                colorChildren();
                return;
            }
            debugMaterial = null;
        }
        if (debugMaterial == null) {
            debugMaterial = this.debugAppState.getGhostMaterial(this.ghost.debugNumSides());
        }
        this.debugSpatial.setMaterial(debugMaterial);
    }

    @Override
    public void controlUpdate(float f10) {
        CollisionShape collisionShape = this.ghost.getCollisionShape();
        EnumC13714j debugMeshNormals = this.ghost.debugMeshNormals();
        int debugMeshResolution = this.ghost.debugMeshResolution();
        if (hasShapeChanged(collisionShape) || this.oldNormals != debugMeshNormals || this.oldResolution != debugMeshResolution) {
            logger.log(Level.INFO, "Rebuild debugSpatial for {0}.", this.ghost);
            setShape(collisionShape);
            this.oldNormals = debugMeshNormals;
            this.oldResolution = debugMeshResolution;
            Node node = (Node) this.spatial;
            node.detachChild(this.debugSpatial);
            Spatial debugShape = DebugShapeFactory.getDebugShape(this.ghost);
            this.debugSpatial = debugShape;
            debugShape.setName(this.ghost.toString());
            node.attachChild(this.debugSpatial);
        }
        updateMaterial();
        this.ghost.getPhysicsLocation(this.location);
        this.ghost.getPhysicsRotation(this.rotation);
        applyPhysicsTransform(this.location, this.rotation);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        super.setSpatial(spatial);
    }
}
