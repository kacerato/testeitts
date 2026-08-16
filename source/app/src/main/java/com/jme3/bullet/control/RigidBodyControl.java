package com.jme3.bullet.control;

import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.collision.shapes.BoxCollisionShape;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.SphereCollisionShape;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.util.CollisionShapeFactory;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.scene.shape.Box;
import com.jme3.scene.shape.Sphere;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import p000if.C13723s;

public class RigidBodyControl extends PhysicsRigidBody implements PhysicsControl {
    static final boolean $assertionsDisabled = false;
    private static final String tagApplyLocalPhysics = "applyLocalPhysics";
    private static final String tagApplyScale = "applyScale";
    private static final String tagEnabled = "enabled";
    private static final String tagKinematicSpatial = "kinematicSpatial";
    private static final String tagSpatial = "spatial";
    private boolean added;
    private boolean applyScale;
    private boolean enabled;
    private boolean kinematicSpatial;
    private PhysicsSpace space;
    private Spatial spatial;
    public static final Logger logger3 = Logger.getLogger(RigidBodyControl.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Vector3f scaleIdentity = new Vector3f(1.0f, 1.0f, 1.0f);
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

    public RigidBodyControl() {
        this.added = false;
        this.applyScale = false;
        this.enabled = true;
        this.kinematicSpatial = true;
        this.space = null;
    }

    private void applySpatialScale() {
        Node parent;
        Vector3f scale = getScale(null);
        if (!isApplyPhysicsLocal() && (parent = this.spatial.getParent()) != null) {
            Vector3f worldScale = parent.getWorldScale();
            if (worldScale.f81611x == 0.0f || worldScale.f81612y == 0.0f || worldScale.f81613z == 0.0f) {
                throw new IllegalStateException("Zero in parent scale.");
            }
            scale.divideLocal(worldScale);
        }
        this.spatial.setLocalScale(scale);
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

    /* JADX WARN: Removed duplicated region for block: B:11:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createCollisionShape() {
        CollisionShape collisionShape;
        Spatial spatial = this.spatial;
        if (spatial == null) {
            return;
        }
        if (spatial instanceof Geometry) {
            Mesh mesh = ((Geometry) spatial).getMesh();
            if (mesh instanceof Sphere) {
                collisionShape = new SphereCollisionShape(((Sphere) mesh).getRadius());
            } else if (mesh instanceof Box) {
                Box box = (Box) mesh;
                collisionShape = new BoxCollisionShape(box.getXExtent(), box.getYExtent(), box.getZExtent());
            }
            if (collisionShape == null) {
                collisionShape = this.mass > 0.0f ? CollisionShapeFactory.createDynamicMeshShape(this.spatial) : CollisionShapeFactory.createMeshShape(this.spatial);
            }
            setCollisionShape(collisionShape);
        }
        collisionShape = null;
        if (collisionShape == null) {
        }
        setCollisionShape(collisionShape);
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

    public boolean isApplyScale() {
        return this.applyScale;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    public final boolean isKinematicSpatial() {
        return this.kinematicSpatial;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.enabled = capsule.readBoolean("enabled", true);
        this.kinematicSpatial = capsule.readBoolean(tagKinematicSpatial, true);
        this.spatial = (Spatial) capsule.readSavable(tagSpatial, null);
        getMotionState().setApplyPhysicsLocal(capsule.readBoolean(tagApplyLocalPhysics, false));
        this.applyScale = capsule.readBoolean(tagApplyScale, false);
        setUserObject(this.spatial);
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
    }

    public void setApplyPhysicsLocal(boolean z10) {
        getMotionState().setApplyPhysicsLocal(z10);
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

    public void setKinematicSpatial(boolean z10) {
        this.kinematicSpatial = z10;
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
            if (!hasAssignedNativeObject()) {
                throw new IllegalStateException("Cannot add an incomplete RigidBodyControl to a PhysicsSpace.");
            }
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
            if (getCollisionShape() == null) {
                createCollisionShape();
                rebuildRigidBody();
            }
            setPhysicsLocation(getSpatialTranslation());
            setPhysicsRotation(getSpatialRotation());
        }
    }

    @Override
    public void update(float f10) {
        if (this.enabled) {
            if (!isKinematic() || !this.kinematicSpatial) {
                if (C13723s.w(this.spatial)) {
                    return;
                }
                getMotionState().applyTransform(this.spatial);
                if (this.applyScale) {
                    applySpatialScale();
                    return;
                }
                return;
            }
            setPhysicsLocation(getSpatialTranslation());
            setPhysicsRotation(getSpatialRotation());
            if (this.applyScale) {
                CollisionShape collisionShape = getCollisionShape();
                Vector3f copySpatialScale = copySpatialScale(null);
                if (!collisionShape.canScale(copySpatialScale)) {
                    float k10 = f.k(copySpatialScale.f81611x * copySpatialScale.f81612y * copySpatialScale.f81613z);
                    copySpatialScale.set(k10, k10, k10);
                }
                if (collisionShape.canScale(copySpatialScale)) {
                    setPhysicsScale(copySpatialScale);
                }
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(getMotionState().isApplyPhysicsLocal(), tagApplyLocalPhysics, false);
        capsule.write(this.kinematicSpatial, tagKinematicSpatial, true);
        capsule.write(this.applyScale, tagApplyScale, false);
        capsule.write(this.spatial, tagSpatial, (Savable) null);
    }

    public RigidBodyControl(float f10) {
        this.added = false;
        this.applyScale = false;
        this.enabled = true;
        this.kinematicSpatial = true;
        this.space = null;
        this.mass = f10;
    }

    public RigidBodyControl(CollisionShape collisionShape) {
        super(collisionShape);
        this.added = false;
        this.applyScale = false;
        this.enabled = true;
        this.kinematicSpatial = true;
        this.space = null;
    }

    public RigidBodyControl(CollisionShape collisionShape, float f10) {
        super(collisionShape, f10);
        this.added = false;
        this.applyScale = false;
        this.enabled = true;
        this.kinematicSpatial = true;
        this.space = null;
    }
}
