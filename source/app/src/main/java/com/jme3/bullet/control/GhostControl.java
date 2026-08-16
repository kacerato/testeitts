package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsGhostObject;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import jf.h;
import p000if.C13723s;

public class GhostControl extends PhysicsGhostObject implements PhysicsControl {
    private static final String tagApplyLocalPhysics = "applyLocalPhysics";
    private static final String tagApplyScale = "applyScale";
    private static final String tagEnabled = "enabled";
    private static final String tagSpatial = "spatial";
    private boolean added;
    private boolean applyLocal;
    private boolean applyScale;
    private boolean enabled;
    private PhysicsSpace space;
    private Spatial spatial;
    public static final Logger logger3 = Logger.getLogger(GhostControl.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Vector3f scaleIdentity = new Vector3f(1.0f, 1.0f, 1.0f);
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

    public GhostControl() {
        this.added = false;
        this.applyLocal = false;
        this.applyScale = false;
        this.enabled = true;
        this.space = null;
    }

    private Vector3f copySpatialScale(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (C13723s.w(this.spatial)) {
            vector3f.set(scaleIdentity);
        } else if (isApplyPhysicsLocal()) {
            vector3f.set(this.spatial.getLocalScale());
        } else {
            vector3f.set(this.spatial.getWorldScale());
        }
        return vector3f;
    }

    private Quaternion getSpatialRotation() {
        return C13723s.w(this.spatial) ? rotateIdentity : this.applyLocal ? this.spatial.getLocalRotation() : this.spatial.getWorldRotation();
    }

    private Vector3f getSpatialTranslation() {
        return C13723s.w(this.spatial) ? translateIdentity : this.applyLocal ? this.spatial.getLocalTranslation() : this.spatial.getWorldTranslation();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.spatial = (Spatial) cloner.clone(this.spatial);
    }

    @Override
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException("cloneForSpatial() isn't implemented.");
    }

    @Override
    public PhysicsSpace getPhysicsSpace() {
        return this.space;
    }

    public Spatial getSpatial() {
        return this.spatial;
    }

    public boolean isApplyPhysicsLocal() {
        return this.applyLocal;
    }

    public boolean isApplyScale() {
        return this.applyScale;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.enabled = capsule.readBoolean("enabled", true);
        this.applyLocal = capsule.readBoolean(tagApplyLocalPhysics, false);
        this.applyScale = capsule.readBoolean(tagApplyScale, false);
        Spatial spatial = (Spatial) capsule.readSavable(tagSpatial, null);
        this.spatial = spatial;
        setUserObject(spatial);
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
    }

    public void setApplyPhysicsLocal(boolean z10) {
        this.applyLocal = z10;
    }

    public void setApplyScale(boolean z10) {
        this.applyScale = z10;
    }

    @Override
    public void setEnabled(boolean z10) {
        this.enabled = z10;
        PhysicsSpace physicsSpace = this.space;
        if (physicsSpace != null) {
            if (!z10 || this.added) {
                if (z10 || !this.added) {
                    return;
                }
                physicsSpace.removeCollisionObject(this);
                this.added = false;
                return;
            }
            if (this.spatial != null) {
                setPhysicsLocation(getSpatialTranslation());
                setPhysicsRotation(getSpatialRotation());
            }
            this.space.addCollisionObject(this);
            this.added = true;
        }
    }

    @Override
    public void setPhysicsSpace(PhysicsSpace physicsSpace) {
        PhysicsSpace physicsSpace2 = this.space;
        if (physicsSpace2 == physicsSpace) {
            return;
        }
        if (this.added) {
            physicsSpace2.removeCollisionObject(this);
            this.added = false;
        }
        if (physicsSpace != null && isEnabled()) {
            physicsSpace.addCollisionObject(this);
            this.added = true;
        }
        this.space = physicsSpace;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        if (this.spatial == spatial) {
            return;
        }
        this.spatial = spatial;
        setUserObject(spatial);
        if (spatial != null) {
            setPhysicsLocation(getSpatialTranslation());
            setPhysicsRotation(getSpatialRotation());
        }
    }

    @Override
    public void update(float f10) {
        if (this.enabled) {
            setPhysicsLocation(getSpatialTranslation());
            setPhysicsRotation(getSpatialRotation());
            if (this.applyScale) {
                Vector3f copySpatialScale = copySpatialScale(null);
                CollisionShape collisionShape = getCollisionShape();
                if (!collisionShape.canScale(copySpatialScale)) {
                    float k10 = f.k(copySpatialScale.f81611x * copySpatialScale.f81612y * copySpatialScale.f81613z);
                    copySpatialScale.set(k10, k10, k10);
                }
                if (h.O(collisionShape.getScale(null), copySpatialScale) && collisionShape.canScale(copySpatialScale)) {
                    collisionShape.setScale(copySpatialScale);
                    setCollisionShape(collisionShape);
                }
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(this.applyLocal, tagApplyLocalPhysics, false);
        capsule.write(this.applyScale, tagApplyScale, false);
        capsule.write(this.spatial, tagSpatial, (Savable) null);
    }

    public GhostControl(CollisionShape collisionShape) {
        super(collisionShape);
        this.added = false;
        this.applyLocal = false;
        this.applyScale = false;
        this.enabled = true;
        this.space = null;
    }
}
