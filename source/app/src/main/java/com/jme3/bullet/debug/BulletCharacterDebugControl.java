package com.jme3.bullet.debug;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.material.Material;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.EnumC13714j;

public class BulletCharacterDebugControl extends CollisionShapeDebugControl {
    public static final Logger logger = Logger.getLogger(BulletCharacterDebugControl.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Vector3f tmpCenter = new Vector3f();
    private final PhysicsCharacter character;
    private EnumC13714j oldNormals;
    private int oldResolution;

    public BulletCharacterDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsCharacter physicsCharacter) {
        super(bulletDebugAppState);
        this.character = physicsCharacter;
        super.setShape(physicsCharacter.getCollisionShape());
        this.oldNormals = physicsCharacter.debugMeshNormals();
        this.oldResolution = physicsCharacter.debugMeshResolution();
        Spatial debugShape = DebugShapeFactory.getDebugShape(physicsCharacter);
        this.debugSpatial = debugShape;
        debugShape.setName(physicsCharacter.toString());
        updateMaterial();
    }

    private void updateMaterial() {
        Material debugMaterial = this.character.getDebugMaterial();
        if (debugMaterial == BulletDebugAppState.enableChildColoring) {
            if (this.debugSpatial instanceof Node) {
                colorChildren();
                return;
            }
            debugMaterial = null;
        }
        if (debugMaterial == null) {
            int debugNumSides = this.character.debugNumSides();
            debugMaterial = this.character.isContactResponse() ? this.debugAppState.getCharacterMaterial(debugNumSides) : this.debugAppState.getGhostMaterial(debugNumSides);
        }
        this.debugSpatial.setMaterial(debugMaterial);
    }

    @Override
    public void controlUpdate(float f10) {
        CollisionShape collisionShape = this.character.getCollisionShape();
        EnumC13714j debugMeshNormals = this.character.debugMeshNormals();
        int debugMeshResolution = this.character.debugMeshResolution();
        if (hasShapeChanged(collisionShape) || this.oldNormals != debugMeshNormals || this.oldResolution != debugMeshResolution) {
            logger.log(Level.INFO, "Rebuild debugSpatial for {0}.", this.character);
            setShape(collisionShape);
            this.oldNormals = debugMeshNormals;
            this.oldResolution = debugMeshResolution;
            Node node = (Node) this.spatial;
            node.detachChild(this.debugSpatial);
            Spatial debugShape = DebugShapeFactory.getDebugShape(this.character);
            this.debugSpatial = debugShape;
            debugShape.setName(this.character.toString());
            node.attachChild(this.debugSpatial);
        }
        updateMaterial();
        PhysicsCharacter physicsCharacter = this.character;
        Vector3f vector3f = tmpCenter;
        physicsCharacter.getPhysicsLocation(vector3f);
        applyPhysicsTransform(vector3f, rotateIdentity);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        super.setSpatial(spatial);
    }
}
