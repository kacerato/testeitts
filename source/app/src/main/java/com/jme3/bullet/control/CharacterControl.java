package com.jme3.bullet.control;

import com.jme3.bullet.collision.shapes.ConvexShape;
import com.jme3.bullet.objects.PhysicsCharacter;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.h;
import p000if.C13702E;

public class CharacterControl extends AbstractPhysicsControl {
    static final boolean $assertionsDisabled = false;
    private static final String tagCharacter = "character";
    private static final String tagViewDirection = "viewDirection";
    private PhysicsCharacter character;
    private Vector3f viewDirection;
    public static final Logger logger2 = Logger.getLogger(CharacterControl.class.getName());
    private static final Quaternion tmpOrientation = new Quaternion();
    private static final Vector3f tmpVector = new Vector3f();

    public CharacterControl() {
        this.character = null;
        this.viewDirection = new Vector3f(0.0f, 0.0f, 1.0f);
    }

    @Override
    public void addPhysics() {
        getPhysicsSpace().addCollisionObject(this.character);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.character = (PhysicsCharacter) cloner.clone(this.character);
        this.viewDirection = (Vector3f) cloner.clone(this.viewDirection);
    }

    @Override
    public void createSpatialData(Spatial spatial) {
        this.character.setUserObject(spatial);
    }

    public PhysicsCharacter getCharacter() {
        return this.character;
    }

    public Vector3f getPhysicsLocation() {
        return this.character.getPhysicsLocation(null);
    }

    public Vector3f getViewDirection(Vector3f vector3f) {
        return vector3f == null ? this.viewDirection.m1292clone() : vector3f.set(this.viewDirection);
    }

    public void jump() {
        this.character.jump();
    }

    public boolean onGround() {
        return this.character.onGround();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.character = (PhysicsCharacter) capsule.readSavable("character", null);
        this.viewDirection = (Vector3f) capsule.readSavable(tagViewDirection, new Vector3f(0.0f, 0.0f, 1.0f));
        if (this.character != null) {
            this.character.setUserObject(getSpatial());
        }
    }

    @Override
    public void removePhysics() {
        getPhysicsSpace().removeCollisionObject(this.character);
    }

    @Override
    public void removeSpatialData(Spatial spatial) {
        this.character.setUserObject(null);
    }

    public void setFallSpeed(float f10) {
        this.character.setFallSpeed(f10);
    }

    public void setGravity(float f10) {
        this.character.setGravity(f10);
    }

    public void setJumpSpeed(float f10) {
        this.character.setJumpSpeed(f10);
    }

    @Override
    public void setPhysicsLocation(Vector3f vector3f) {
        this.character.setPhysicsLocation(vector3f);
    }

    @Override
    public void setPhysicsRotation(Quaternion quaternion) {
    }

    public void setViewDirection(Vector3f vector3f) {
        C13702E.A(vector3f, "direction");
        this.viewDirection.set(vector3f);
        h.P(this.viewDirection);
    }

    public void setWalkDirection(Vector3f vector3f) {
        C13702E.d(vector3f, "offset");
        this.character.setWalkDirection(vector3f);
    }

    @Override
    public void update(float f10) {
        if (isEnabled()) {
            PhysicsCharacter physicsCharacter = this.character;
            Vector3f vector3f = tmpVector;
            physicsCharacter.getUpDirection(vector3f);
            Quaternion quaternion = tmpOrientation;
            quaternion.lookAt(this.viewDirection, vector3f);
            this.character.getPhysicsLocation(vector3f);
            applyPhysicsTransform(vector3f, quaternion);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.character, "character", (Savable) null);
        capsule.write(this.viewDirection, tagViewDirection, (Savable) null);
    }

    public CharacterControl(ConvexShape convexShape, float f10) {
        this.character = null;
        this.viewDirection = new Vector3f(0.0f, 0.0f, 1.0f);
        this.character = new PhysicsCharacter(convexShape, f10);
    }
}
