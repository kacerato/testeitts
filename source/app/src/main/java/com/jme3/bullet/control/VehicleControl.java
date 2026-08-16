package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.PhysicsVehicle;
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
import p000if.C13723s;

public class VehicleControl extends PhysicsVehicle implements PhysicsControl {
    static final boolean $assertionsDisabled = false;
    private static final String tagApplyLocalPhysics = "applyLocalPhysics";
    private static final String tagEnabled = "enabled";
    private static final String tagSpatial = "spatial";
    private boolean added;
    private boolean enabled;
    private PhysicsSpace space;
    private Spatial spatial;
    public static final Logger logger4 = Logger.getLogger(VehicleControl.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

    public VehicleControl() {
        this.added = false;
        this.enabled = true;
        this.space = null;
    }

    private Quaternion getSpatialRotation() {
        return C13723s.w(this.spatial) ? rotateIdentity : getMotionState().isApplyPhysicsLocal() ? this.spatial.getLocalRotation() : this.spatial.getWorldRotation();
    }

    private Vector3f getSpatialTranslation() {
        return C13723s.w(this.spatial) ? translateIdentity : getMotionState().isApplyPhysicsLocal() ? this.spatial.getLocalTranslation() : this.spatial.getWorldTranslation();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
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
        return getMotionState().isApplyPhysicsLocal();
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
        this.spatial = (Spatial) capsule.readSavable(tagSpatial, null);
        getMotionState().setApplyPhysicsLocal(capsule.readBoolean(tagApplyLocalPhysics, false));
        setUserObject(this.spatial);
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
    }

    public void setApplyPhysicsLocal(boolean z10) {
        getMotionState().setApplyPhysicsLocal(z10);
        int numWheels = getNumWheels();
        for (int i10 = 0; i10 < numWheels; i10++) {
            getWheel(i10).setApplyLocal(z10);
        }
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
            if (this.spatial == null) {
                applyWheelTransforms();
            } else if (getMotionState().applyTransform(this.spatial)) {
                this.spatial.getWorldTransform();
                applyWheelTransforms();
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(getMotionState().isApplyPhysicsLocal(), tagApplyLocalPhysics, false);
        capsule.write(this.spatial, tagSpatial, (Savable) null);
    }

    public VehicleControl(CollisionShape collisionShape) {
        super(collisionShape);
        this.added = false;
        this.enabled = true;
        this.space = null;
    }

    public VehicleControl(CollisionShape collisionShape, float f10) {
        super(collisionShape, f10);
        this.added = false;
        this.enabled = true;
        this.space = null;
    }
}
