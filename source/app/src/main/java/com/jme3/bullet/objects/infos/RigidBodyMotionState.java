package com.jme3.bullet.objects.infos;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.objects.PhysicsVehicle;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import com.simsilica.mathd.Matrix3d;
import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.g;

public class RigidBodyMotionState extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(RigidBodyMotionState.class.getName());
    private static final String tagApplyPhysicsLocal = "applyPhysicsLocal";
    private static final String tagVehicle = "vehicle";
    private boolean applyPhysicsLocal = false;
    private PhysicsVehicle vehicle = null;
    private Quaternion tmpInverseWorldRotation = new Quaternion();

    public RigidBodyMotionState() {
        super.setNativeId(createMotionState());
        logger.log(Level.FINE, "Created {0}", this);
    }

    private static native boolean applyTransform(long j10, Vector3f vector3f, Quaternion quaternion);

    private static native long createMotionState();

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native void getWorldLocation(long j10, Vector3f vector3f);

    private static native void getWorldLocationDp(long j10, Vec3d vec3d);

    private static native void getWorldRotation(long j10, Matrix3f matrix3f);

    private static native void getWorldRotationDp(long j10, Matrix3d matrix3d);

    private static native void getWorldRotationQuat(long j10, Quaternion quaternion);

    private static native void getWorldRotationQuatDp(long j10, Quatd quatd);

    public boolean applyTransform(Spatial spatial) {
        long nativeId = nativeId();
        Vector3f localTranslation = spatial.getLocalTranslation();
        Quaternion localRotation = spatial.getLocalRotation();
        if (!applyTransform(nativeId, localTranslation, localRotation)) {
            return false;
        }
        if (!this.applyPhysicsLocal && spatial.getParent() != null) {
            Node parent = spatial.getParent();
            this.tmpInverseWorldRotation.set(parent.getWorldRotation());
            this.tmpInverseWorldRotation.inverseLocal();
            Vector3f worldScale = parent.getWorldScale();
            localTranslation.subtractLocal(parent.getWorldTranslation());
            localTranslation.divideLocal(worldScale);
            g.r(this.tmpInverseWorldRotation, localTranslation, localTranslation);
            this.tmpInverseWorldRotation.mult(localRotation, localRotation);
            spatial.setLocalTranslation(localTranslation);
            spatial.setLocalRotation(localRotation);
        } else {
            spatial.setLocalTranslation(localTranslation);
            spatial.setLocalRotation(localRotation);
        }
        PhysicsVehicle physicsVehicle = this.vehicle;
        if (physicsVehicle == null) {
            return true;
        }
        physicsVehicle.updateWheels();
        return true;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        reassignNativeId(createMotionState());
        this.tmpInverseWorldRotation = (Quaternion) cloner.clone(this.tmpInverseWorldRotation);
        this.vehicle = (PhysicsVehicle) cloner.clone(this.vehicle);
    }

    public Vector3f getLocation(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getWorldLocation(nativeId(), vector3f);
        return vector3f;
    }

    public Vec3d getLocationDp(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        getWorldLocationDp(nativeId(), vec3d);
        return vec3d;
    }

    public Matrix3f getOrientation(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        getWorldRotation(nativeId(), matrix3f);
        return matrix3f;
    }

    public Matrix3d getOrientationMatrixDp(Matrix3d matrix3d) {
        if (matrix3d == null) {
            matrix3d = new Matrix3d();
        }
        getWorldRotationDp(nativeId(), matrix3d);
        return matrix3d;
    }

    public Quatd getOrientationQuaternionDp(Quatd quatd) {
        if (quatd == null) {
            quatd = new Quatd();
        }
        getWorldRotationQuatDp(nativeId(), quatd);
        return quatd;
    }

    public boolean isApplyPhysicsLocal() {
        return this.applyPhysicsLocal;
    }

    public Transform physicsTransform(Transform transform) {
        Transform transform2 = transform == null ? new Transform() : transform.setScale(1.0f);
        long nativeId = nativeId();
        getWorldLocation(nativeId, transform2.getTranslation());
        getWorldRotationQuat(nativeId, transform2.getRotation());
        return transform2;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.applyPhysicsLocal = capsule.readBoolean(tagApplyPhysicsLocal, false);
        this.vehicle = (PhysicsVehicle) capsule.readSavable(tagVehicle, null);
    }

    public void setApplyPhysicsLocal(boolean z10) {
        this.applyPhysicsLocal = z10;
    }

    public void setVehicle(PhysicsVehicle physicsVehicle) {
        this.vehicle = physicsVehicle;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.applyPhysicsLocal, tagApplyPhysicsLocal, false);
        capsule.write(this.vehicle, tagVehicle, (Savable) null);
    }

    @Override
    public RigidBodyMotionState jmeClone() {
        try {
            return (RigidBodyMotionState) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public Quaternion getOrientation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        getWorldRotationQuat(nativeId(), quaternion);
        return quaternion;
    }
}
