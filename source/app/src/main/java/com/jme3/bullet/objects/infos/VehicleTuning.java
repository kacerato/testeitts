package com.jme3.bullet.objects.infos;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;

public class VehicleTuning extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(VehicleTuning.class.getName());
    private static final String tagFrictionSlip = "frictionSlip";
    private static final String tagMaxSuspensionForce = "maxSuspensionForce";
    private static final String tagMaxSuspensionTravelCm = "maxSuspensionTravelCm";
    private static final String tagSuspensionStiffness = "suspensionStiffness";
    private static final String tagWheelsDampingCompression = "wheelsDampingCompression";
    private static final String tagWheelsDampingRelaxation = "wheelsDampingRelaxation";
    private float frictionSlip = 10.5f;
    private float maxSuspensionForce = 6000.0f;
    private float maxSuspensionTravelCm = 500.0f;
    private float suspensionCompression = 0.83f;
    private float suspensionDamping = 0.88f;
    private float suspensionStiffness = 5.88f;

    public VehicleTuning() {
        create();
    }

    private void create() {
        long createNative = createNative();
        setNativeId(createNative);
        setFrictionSlip(createNative, this.frictionSlip);
        setMaxSuspensionForce(createNative, this.maxSuspensionForce);
        setMaxSuspensionTravelCm(createNative, this.maxSuspensionTravelCm);
        setSuspensionCompression(createNative, this.suspensionCompression);
        setSuspensionDamping(createNative, this.suspensionDamping);
        setSuspensionStiffness(createNative, this.suspensionStiffness);
    }

    private static native long createNative();

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native void setFrictionSlip(long j10, float f10);

    private static native void setMaxSuspensionForce(long j10, float f10);

    private static native void setMaxSuspensionTravelCm(long j10, float f10);

    private static native void setSuspensionCompression(long j10, float f10);

    private static native void setSuspensionDamping(long j10, float f10);

    private static native void setSuspensionStiffness(long j10, float f10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        unassignNativeObject();
        create();
    }

    public float getFrictionSlip() {
        return this.frictionSlip;
    }

    public float getMaxSuspensionForce() {
        return this.maxSuspensionForce;
    }

    public float getMaxSuspensionTravelCm() {
        return this.maxSuspensionTravelCm;
    }

    public float getSuspensionCompression() {
        return this.suspensionCompression;
    }

    public float getSuspensionDamping() {
        return this.suspensionDamping;
    }

    public float getSuspensionStiffness() {
        return this.suspensionStiffness;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        setSuspensionStiffness(capsule.readFloat(tagSuspensionStiffness, 5.88f));
        setSuspensionDamping(capsule.readFloat(tagWheelsDampingRelaxation, 0.88f));
        setSuspensionCompression(capsule.readFloat(tagWheelsDampingCompression, 0.83f));
        setFrictionSlip(capsule.readFloat(tagFrictionSlip, 10.5f));
        setMaxSuspensionTravelCm(capsule.readFloat(tagMaxSuspensionTravelCm, 500.0f));
        setMaxSuspensionForce(capsule.readFloat(tagMaxSuspensionForce, 6000.0f));
    }

    public void setFrictionSlip(float f10) {
        this.frictionSlip = f10;
        setFrictionSlip(nativeId(), f10);
    }

    public void setMaxSuspensionForce(float f10) {
        this.maxSuspensionForce = f10;
        setMaxSuspensionForce(nativeId(), f10);
    }

    public void setMaxSuspensionTravelCm(float f10) {
        this.maxSuspensionTravelCm = f10;
        setMaxSuspensionTravelCm(nativeId(), f10);
    }

    public void setSuspensionCompression(float f10) {
        this.suspensionCompression = f10;
        setSuspensionCompression(nativeId(), f10);
    }

    public void setSuspensionDamping(float f10) {
        this.suspensionDamping = f10;
        setSuspensionDamping(nativeId(), f10);
    }

    public void setSuspensionStiffness(float f10) {
        this.suspensionStiffness = f10;
        setSuspensionStiffness(nativeId(), f10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.suspensionStiffness, tagSuspensionStiffness, 5.88f);
        capsule.write(this.suspensionDamping, tagWheelsDampingRelaxation, 0.88f);
        capsule.write(this.suspensionCompression, tagWheelsDampingCompression, 0.83f);
        capsule.write(this.frictionSlip, tagFrictionSlip, 10.5f);
        capsule.write(this.maxSuspensionTravelCm, tagMaxSuspensionTravelCm, 500.0f);
        capsule.write(this.maxSuspensionForce, tagMaxSuspensionForce, 6000.0f);
    }

    @Override
    public VehicleTuning jmeClone() {
        try {
            return (VehicleTuning) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
