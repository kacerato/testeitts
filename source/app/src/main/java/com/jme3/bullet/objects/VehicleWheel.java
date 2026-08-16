package com.jme3.bullet.objects;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.bullet.objects.infos.VehicleTuning;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import jf.g;
import p000if.C13702E;

public class VehicleWheel implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(VehicleWheel.class.getName());
    private static final String tagBrake = "brake";
    private static final String tagEngineForce = "engineForce";
    private static final String tagFrontWheel = "frontWheel";
    private static final String tagRestLength = "restLength";
    private static final String tagRollInfluence = "rollInfluence";
    private static final String tagRotationAngle = "rotationAngle";
    private static final String tagSteerAngle = "steerAngle";
    private static final String tagSuspensionLength = "suspensionLength";
    private static final String tagTuning = "tuning";
    private static final String tagWheelAxle = "wheelAxle";
    private static final String tagWheelDirection = "wheelDirection";
    private static final String tagWheelLocation = "wheelLocation";
    private static final String tagWheelRadius = "wheelRadius";
    private static final String tagWheelSpatial = "wheelSpatial";
    private boolean applyLocal;
    private Vector3f axisDirection;
    private boolean isFront;
    private Vector3f location;
    private float radius;
    private float restLength;
    private float rollInfluence;
    private Spatial subtree;
    private Vector3f suspensionDirection;
    private Quaternion tmpInverseWheelRotation;
    private Matrix3f tmpMatrix;
    private VehicleTuning tuning;
    private long vehicleId;
    private int wheelIndex;
    private Vector3f wheelWorldLocation;
    private Quaternion wheelWorldRotation;

    public VehicleWheel() {
        this.applyLocal = false;
        this.radius = 0.5f;
        this.restLength = 1.0f;
        this.rollInfluence = 1.0f;
        this.wheelIndex = 0;
        this.vehicleId = 0L;
        this.tmpMatrix = new Matrix3f();
        this.tmpInverseWheelRotation = new Quaternion();
        this.wheelWorldRotation = new Quaternion();
        this.axisDirection = new Vector3f();
        this.location = new Vector3f();
        this.suspensionDirection = new Vector3f();
        this.wheelWorldLocation = new Vector3f();
        this.tuning = new VehicleTuning();
    }

    private void applyInfo() {
        long j10 = this.vehicleId;
        if (j10 != 0) {
            applyInfo(j10, this.wheelIndex, getSuspensionStiffness(), getWheelsDampingRelaxation(), getWheelsDampingCompression(), getFrictionSlip(), this.rollInfluence, getMaxSuspensionTravelCm(), getMaxSuspensionForce(), this.radius, this.isFront, this.restLength);
        }
    }

    private static native void applyInfo(long j10, int i10, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, boolean z10, float f18);

    private static native float getBrake(long j10, int i10);

    private static native void getCollisionLocation(long j10, int i10, Vector3f vector3f);

    private static native void getCollisionNormal(long j10, int i10, Vector3f vector3f);

    private static native float getDeltaRotation(long j10, int i10);

    private static native float getEngineForce(long j10, int i10);

    private static native float getRadius(long j10, int i10);

    private static native float getRestLength(long j10, int i10);

    private static native float getRollInfluence(long j10, int i10);

    private static native float getRotationAngle(long j10, int i10);

    private static native float getSkidInfo(long j10, int i10);

    private static native float getSteerAngle(long j10, int i10);

    private static native float getSuspensionLength(long j10, int i10);

    private static native void getWheelLocation(long j10, int i10, Vector3f vector3f);

    private static native void getWheelRotation(long j10, int i10, Matrix3f matrix3f);

    private static native boolean isFront(long j10, int i10);

    private static native void setRotationAngle(long j10, int i10, float f10);

    private static native void setSuspensionLength(long j10, int i10, float f10);

    public void applyWheelTransform() {
        Spatial spatial = this.subtree;
        if (spatial == null) {
            return;
        }
        Quaternion localRotation = spatial.getLocalRotation();
        Vector3f localTranslation = this.subtree.getLocalTranslation();
        Node parent = this.subtree.getParent();
        if (this.applyLocal || parent == null) {
            this.subtree.setLocalTranslation(this.wheelWorldLocation);
            this.subtree.setLocalRotation(this.wheelWorldRotation);
            return;
        }
        Vector3f worldTranslation = parent.getWorldTranslation();
        Quaternion worldRotation = parent.getWorldRotation();
        localTranslation.set(this.wheelWorldLocation).subtractLocal(worldTranslation);
        localTranslation.divideLocal(parent.getWorldScale());
        this.tmpInverseWheelRotation.set(worldRotation).inverseLocal();
        g.r(this.tmpInverseWheelRotation, localTranslation, localTranslation);
        localRotation.set(this.wheelWorldRotation);
        this.tmpInverseWheelRotation.set(worldRotation).inverseLocal().mult(localRotation, localRotation);
        this.subtree.setLocalTranslation(localTranslation);
        this.subtree.setLocalRotation(localRotation);
    }

    public boolean checkCopies() {
        boolean z10 = isFront(this.vehicleId, this.wheelIndex) == this.isFront;
        if (z10) {
            z10 = getRadius(this.vehicleId, this.wheelIndex) == this.radius;
        }
        if (z10) {
            z10 = getRestLength(this.vehicleId, this.wheelIndex) == this.restLength;
        }
        if (z10) {
            return getRollInfluence(this.vehicleId, this.wheelIndex) == this.rollInfluence;
        }
        return z10;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.location = (Vector3f) cloner.clone(this.location);
        this.suspensionDirection = (Vector3f) cloner.clone(this.suspensionDirection);
        this.axisDirection = (Vector3f) cloner.clone(this.axisDirection);
        this.tuning = (VehicleTuning) cloner.clone(this.tuning);
        this.wheelWorldLocation = (Vector3f) cloner.clone(this.wheelWorldLocation);
        this.wheelWorldRotation = (Quaternion) cloner.clone(this.wheelWorldRotation);
        this.subtree = (Spatial) cloner.clone(this.subtree);
        this.tmpMatrix = (Matrix3f) cloner.clone(this.tmpMatrix);
        this.tmpInverseWheelRotation = (Quaternion) cloner.clone(this.tmpInverseWheelRotation);
        VehicleWheel vehicleWheel = (VehicleWheel) obj;
        setRotationAngle(vehicleWheel.getRotationAngle());
        setSuspensionLength(vehicleWheel.getSuspensionLength());
    }

    public Vector3f getAxle(Vector3f vector3f) {
        return vector3f == null ? this.axisDirection.m1292clone() : vector3f.set(this.axisDirection);
    }

    public float getBrake() {
        return getBrake(this.vehicleId, this.wheelIndex);
    }

    public Vector3f getCollisionLocation() {
        return getCollisionLocation(null);
    }

    public Vector3f getCollisionNormal() {
        return getCollisionNormal(null);
    }

    public float getDeltaRotation() {
        return getDeltaRotation(this.vehicleId, this.wheelIndex);
    }

    public Vector3f getDirection(Vector3f vector3f) {
        return vector3f == null ? this.suspensionDirection.m1292clone() : vector3f.set(this.suspensionDirection);
    }

    public float getEngineForce() {
        return getEngineForce(this.vehicleId, this.wheelIndex);
    }

    public float getFrictionSlip() {
        return this.tuning.getFrictionSlip();
    }

    public int getIndex() {
        return this.wheelIndex;
    }

    public Vector3f getLocation() {
        return getLocation(null);
    }

    public float getMaxSuspensionForce() {
        return this.tuning.getMaxSuspensionForce();
    }

    public float getMaxSuspensionTravelCm() {
        return this.tuning.getMaxSuspensionTravelCm();
    }

    public float getRadius() {
        return this.radius;
    }

    public float getRestLength() {
        return this.restLength;
    }

    public float getRollInfluence() {
        return this.rollInfluence;
    }

    public float getRotationAngle() {
        return getRotationAngle(this.vehicleId, this.wheelIndex);
    }

    public float getSkidInfo() {
        return getSkidInfo(this.vehicleId, this.wheelIndex);
    }

    public float getSteerAngle() {
        return getSteerAngle(this.vehicleId, this.wheelIndex);
    }

    public float getSuspensionLength() {
        return getSuspensionLength(this.vehicleId, this.wheelIndex);
    }

    public float getSuspensionStiffness() {
        return this.tuning.getSuspensionStiffness();
    }

    public Spatial getWheelSpatial() {
        return this.subtree;
    }

    public Vector3f getWheelWorldLocation(Vector3f vector3f) {
        return vector3f == null ? this.wheelWorldLocation.m1292clone() : vector3f.set(this.wheelWorldLocation);
    }

    public Quaternion getWheelWorldRotation(Quaternion quaternion) {
        return quaternion == null ? this.wheelWorldRotation.m1285clone() : quaternion.set(this.wheelWorldRotation);
    }

    public float getWheelsDampingCompression() {
        return this.tuning.getSuspensionCompression();
    }

    public float getWheelsDampingRelaxation() {
        return this.tuning.getSuspensionDamping();
    }

    public boolean isApplyLocal() {
        return this.applyLocal;
    }

    public boolean isFrontWheel() {
        return this.isFront;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.subtree = (Spatial) capsule.readSavable(tagWheelSpatial, null);
        this.isFront = capsule.readBoolean(tagFrontWheel, false);
        this.location = (Vector3f) capsule.readSavable(tagWheelLocation, new Vector3f());
        this.suspensionDirection = (Vector3f) capsule.readSavable(tagWheelDirection, new Vector3f());
        this.axisDirection = (Vector3f) capsule.readSavable(tagWheelAxle, new Vector3f());
        this.tuning = (VehicleTuning) capsule.readSavable(tagTuning, new VehicleTuning());
        this.rollInfluence = capsule.readFloat(tagRollInfluence, 1.0f);
        this.radius = capsule.readFloat(tagWheelRadius, 0.5f);
        this.restLength = capsule.readFloat(tagRestLength, 1.0f);
        setRotationAngle(capsule.readFloat(tagRotationAngle, 0.0f));
        setSuspensionLength(capsule.readFloat(tagSuspensionLength, 0.0f));
        capsule.readFloat(tagBrake, 0.0f);
        capsule.readFloat(tagEngineForce, 0.0f);
        capsule.readFloat(tagSteerAngle, 0.0f);
    }

    public void setApplyLocal(boolean z10) {
        this.applyLocal = z10;
    }

    public void setFrictionSlip(float f10) {
        this.tuning.setFrictionSlip(f10);
        applyInfo();
    }

    public void setFrontWheel(boolean z10) {
        this.isFront = z10;
        applyInfo();
    }

    public void setMaxSuspensionForce(float f10) {
        this.tuning.setMaxSuspensionForce(f10);
        applyInfo();
    }

    public void setMaxSuspensionTravelCm(float f10) {
        this.tuning.setMaxSuspensionTravelCm(f10);
        applyInfo();
    }

    public void setRadius(float f10) {
        this.radius = f10;
        applyInfo();
    }

    public void setRestLength(float f10) {
        this.restLength = f10;
        applyInfo();
    }

    public void setRollInfluence(float f10) {
        this.rollInfluence = f10;
        applyInfo();
    }

    public void setRotationAngle(float f10) {
        setRotationAngle(this.vehicleId, this.wheelIndex, f10);
    }

    public void setSuspensionLength(float f10) {
        setSuspensionLength(this.vehicleId, this.wheelIndex, f10);
    }

    public void setSuspensionStiffness(float f10) {
        this.tuning.setSuspensionStiffness(f10);
        applyInfo();
    }

    public void setVehicleId(long j10, int i10) {
        C13702E.x(j10, "vehicle ID");
        C13702E.q(i10, "wheel index");
        this.vehicleId = j10;
        this.wheelIndex = i10;
        applyInfo();
    }

    public void setWheelSpatial(Spatial spatial) {
        this.subtree = spatial;
    }

    public void setWheelsDampingCompression(float f10) {
        this.tuning.setSuspensionCompression(f10);
        applyInfo();
    }

    public void setWheelsDampingRelaxation(float f10) {
        this.tuning.setSuspensionDamping(f10);
        applyInfo();
    }

    public void updatePhysicsState() {
        getWheelLocation(this.vehicleId, this.wheelIndex, this.wheelWorldLocation);
        getWheelRotation(this.vehicleId, this.wheelIndex, this.tmpMatrix);
        this.wheelWorldRotation.fromRotationMatrix(this.tmpMatrix);
        if (Quaternion.isValidQuaternion(this.wheelWorldRotation)) {
            return;
        }
        this.wheelWorldRotation.loadIdentity();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.subtree, tagWheelSpatial, (Savable) null);
        capsule.write(this.isFront, tagFrontWheel, false);
        capsule.write(this.location, tagWheelLocation, (Savable) null);
        capsule.write(this.suspensionDirection, tagWheelDirection, (Savable) null);
        capsule.write(this.axisDirection, tagWheelAxle, (Savable) null);
        capsule.write(this.tuning, tagTuning, (Savable) null);
        capsule.write(this.rollInfluence, tagRollInfluence, 1.0f);
        capsule.write(this.radius, tagWheelRadius, 0.5f);
        capsule.write(this.restLength, tagRestLength, 1.0f);
        capsule.write(getBrake(), tagBrake, 0.0f);
        capsule.write(getEngineForce(), tagEngineForce, 0.0f);
        capsule.write(getRotationAngle(), tagRotationAngle, 0.0f);
        capsule.write(getSteerAngle(), tagSteerAngle, 0.0f);
        capsule.write(getSuspensionLength(), tagSuspensionLength, 0.0f);
    }

    public Vector3f getCollisionLocation(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getCollisionLocation(this.vehicleId, this.wheelIndex, vector3f);
        return vector3f;
    }

    public Vector3f getCollisionNormal(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getCollisionNormal(this.vehicleId, this.wheelIndex, vector3f);
        return vector3f;
    }

    public Vector3f getLocation(Vector3f vector3f) {
        if (vector3f == null) {
            return this.location.m1292clone();
        }
        return vector3f.set(this.location);
    }

    @Override
    public VehicleWheel jmeClone() {
        try {
            return (VehicleWheel) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public VehicleWheel(Spatial spatial, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, float f10, float f11, boolean z10) {
        this.applyLocal = false;
        this.radius = 0.5f;
        this.restLength = 1.0f;
        this.rollInfluence = 1.0f;
        this.wheelIndex = 0;
        this.vehicleId = 0L;
        this.tmpMatrix = new Matrix3f();
        this.tmpInverseWheelRotation = new Quaternion();
        this.wheelWorldRotation = new Quaternion();
        this.axisDirection = new Vector3f();
        this.location = new Vector3f();
        this.suspensionDirection = new Vector3f();
        this.wheelWorldLocation = new Vector3f();
        this.tuning = new VehicleTuning();
        C13702E.E(f11, TestVFXEffect.f77524P);
        this.subtree = spatial;
        this.location.set(vector3f);
        this.suspensionDirection.set(vector3f2);
        this.axisDirection.set(vector3f3);
        this.isFront = z10;
        this.restLength = f10;
        this.radius = f11;
    }
}
