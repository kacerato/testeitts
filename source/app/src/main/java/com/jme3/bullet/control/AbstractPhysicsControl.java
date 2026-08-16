package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSpace;
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
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import jf.g;
import p000if.C13723s;

public abstract class AbstractPhysicsControl implements JmeCloneable, PhysicsControl {
    private static final String tagApplyLocalPhysics = "applyLocalPhysics";
    private static final String tagEnabled = "enabled";
    private static final String tagSpatial = "spatial";
    private Spatial controlledSpatial;
    public static final Logger logger = Logger.getLogger(AbstractPhysicsControl.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    protected boolean added = false;
    private boolean enabled = true;
    private boolean localPhysics = false;
    private PhysicsSpace space = null;
    private Quaternion tmpInverseWorldRotation = new Quaternion();

    public abstract void addPhysics();

    public void applyPhysicsTransform(Vector3f vector3f, Quaternion quaternion) {
        Spatial spatial;
        if (!this.enabled || (spatial = this.controlledSpatial) == null) {
            return;
        }
        Vector3f localTranslation = spatial.getLocalTranslation();
        Quaternion localRotation = this.controlledSpatial.getLocalRotation();
        if (this.localPhysics || this.controlledSpatial.getParent() == null) {
            this.controlledSpatial.setLocalTranslation(vector3f);
            this.controlledSpatial.setLocalRotation(quaternion);
            return;
        }
        localTranslation.set(vector3f).subtractLocal(this.controlledSpatial.getParent().getWorldTranslation());
        localTranslation.divideLocal(this.controlledSpatial.getParent().getWorldScale());
        this.tmpInverseWorldRotation.set(this.controlledSpatial.getParent().getWorldRotation()).inverseLocal();
        g.r(this.tmpInverseWorldRotation, localTranslation, localTranslation);
        localRotation.set(quaternion);
        this.tmpInverseWorldRotation.set(this.controlledSpatial.getParent().getWorldRotation()).inverseLocal().mult(localRotation, localRotation);
        this.controlledSpatial.setLocalTranslation(localTranslation);
        this.controlledSpatial.setLocalRotation(localRotation);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.tmpInverseWorldRotation = (Quaternion) cloner.clone(this.tmpInverseWorldRotation);
        this.controlledSpatial = (Spatial) cloner.clone(this.controlledSpatial);
    }

    @Override
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException("cloneForSpatial() isn't implemented.");
    }

    public abstract void createSpatialData(Spatial spatial);

    @Override
    public PhysicsSpace getPhysicsSpace() {
        return this.space;
    }

    public Spatial getSpatial() {
        return this.controlledSpatial;
    }

    public Quaternion getSpatialRotation() {
        return C13723s.w(this.controlledSpatial) ? rotateIdentity : this.localPhysics ? this.controlledSpatial.getLocalRotation() : this.controlledSpatial.getWorldRotation();
    }

    public Vector3f getSpatialTranslation() {
        return C13723s.w(this.controlledSpatial) ? translateIdentity : this.localPhysics ? this.controlledSpatial.getLocalTranslation() : this.controlledSpatial.getWorldTranslation();
    }

    public boolean isApplyPhysicsLocal() {
        return this.localPhysics;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.enabled = capsule.readBoolean("enabled", true);
        this.controlledSpatial = (Spatial) capsule.readSavable(tagSpatial, null);
        this.localPhysics = capsule.readBoolean(tagApplyLocalPhysics, false);
    }

    public abstract void removePhysics();

    public abstract void removeSpatialData(Spatial spatial);

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
    }

    public void setApplyPhysicsLocal(boolean z10) {
        this.localPhysics = z10;
    }

    @Override
    public void setEnabled(boolean z10) {
        this.enabled = z10;
        if (this.space != null) {
            if (!z10 || this.added) {
                if (z10 || !this.added) {
                    return;
                }
                removePhysics();
                this.added = false;
                return;
            }
            if (this.controlledSpatial != null) {
                setPhysicsLocation(getSpatialTranslation());
                setPhysicsRotation(getSpatialRotation());
            }
            addPhysics();
            this.added = true;
        }
    }

    public abstract void setPhysicsLocation(Vector3f vector3f);

    public abstract void setPhysicsRotation(Quaternion quaternion);

    @Override
    public void setPhysicsSpace(PhysicsSpace physicsSpace) {
        if (this.space == physicsSpace) {
            return;
        }
        if (this.added) {
            removePhysics();
            this.added = false;
        }
        this.space = physicsSpace;
        if (physicsSpace == null || !isEnabled()) {
            return;
        }
        addPhysics();
        this.added = true;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2 = this.controlledSpatial;
        if (spatial2 == spatial) {
            return;
        }
        if (spatial2 != null) {
            removeSpatialData(spatial2);
        }
        this.controlledSpatial = spatial;
        if (spatial != null) {
            createSpatialData(spatial);
            setPhysicsLocation(getSpatialTranslation());
            setPhysicsRotation(getSpatialRotation());
        }
    }

    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(this.localPhysics, tagApplyLocalPhysics, false);
        capsule.write(this.controlledSpatial, tagSpatial, (Savable) null);
    }

    @Override
    public AbstractPhysicsControl jmeClone() {
        if (!this.added) {
            try {
                return (AbstractPhysicsControl) clone();
            } catch (CloneNotSupportedException e10) {
                throw new RuntimeException(e10);
            }
        }
        throw new IllegalStateException("Can't clone a " + getClass().getSimpleName() + " while it's added to a physics space.");
    }
}
