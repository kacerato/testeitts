package com.jme3.bullet;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class SoftBodyWorldInfo extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(SoftBodyWorldInfo.class.getName());
    private static final String tagAirDensity = "airDensity";
    private static final String tagGravity = "gravity";
    private static final String tagMaxDisplacement = "maxDisplacement";
    private static final String tagWaterDensity = "waterDensity";
    private static final String tagWaterNormal = "waterNormal";
    private static final String tagWaterOffset = "waterOffset";

    public SoftBodyWorldInfo() {
        super.setNativeId(createSoftBodyWorldInfo());
    }

    private static native long createSoftBodyWorldInfo();

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native float getAirDensity(long j10);

    private static native void getGravity(long j10, Vector3f vector3f);

    private static native float getMaxDisplacement(long j10);

    private static native float getWaterDensity(long j10);

    private static native void getWaterNormal(long j10, Vector3f vector3f);

    private static native float getWaterOffset(long j10);

    private static native void setAirDensity(long j10, float f10);

    private static native void setGravity(long j10, Vector3f vector3f);

    private static native void setMaxDisplacement(long j10, float f10);

    private static native void setSoftBodyWorldInfo(long j10, long j11);

    private static native void setWaterDensity(long j10, float f10);

    private static native void setWaterNormal(long j10, Vector3f vector3f);

    private static native void setWaterOffset(long j10, float f10);

    public float airDensity() {
        return getAirDensity(nativeId());
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        reassignNativeId(createSoftBodyWorldInfo());
        copyAll((SoftBodyWorldInfo) obj);
    }

    public void copyAll(SoftBodyWorldInfo softBodyWorldInfo) {
        setSoftBodyWorldInfo(nativeId(), softBodyWorldInfo.nativeId());
    }

    public Vector3f copyGravity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getGravity(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f copyWaterNormal(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getWaterNormal(nativeId(), vector3f);
        return vector3f;
    }

    public float maxDisplacement() {
        return getMaxDisplacement(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        setAirDensity(capsule.readFloat(tagAirDensity, 1.2f));
        setGravity((Vector3f) capsule.readSavable(tagGravity, new Vector3f(0.0f, -10.0f, 0.0f)));
        setMaxDisplacement(capsule.readFloat(tagMaxDisplacement, 1000.0f));
        setWaterDensity(capsule.readFloat(tagWaterDensity, 0.0f));
        setWaterNormal((Vector3f) capsule.readSavable(tagWaterNormal, new Vector3f(0.0f, 0.0f, 0.0f)));
        setWaterOffset(capsule.readFloat(tagWaterOffset, 0.0f));
    }

    public void setAirDensity(float f10) {
        setAirDensity(nativeId(), f10);
    }

    public void setGravity(Vector3f vector3f) {
        setGravity(nativeId(), vector3f);
    }

    public void setMaxDisplacement(float f10) {
        C13702E.E(f10, "max displacement");
        setMaxDisplacement(nativeId(), f10);
    }

    public void setWaterDensity(float f10) {
        setWaterDensity(nativeId(), f10);
    }

    public void setWaterNormal(Vector3f vector3f) {
        setWaterNormal(nativeId(), vector3f);
    }

    public void setWaterOffset(float f10) {
        setWaterOffset(nativeId(), f10);
    }

    public float waterDensity() {
        return getWaterDensity(nativeId());
    }

    public float waterOffset() {
        return getWaterOffset(nativeId());
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(airDensity(), tagAirDensity, 1.2f);
        capsule.write(copyGravity(null), tagGravity, (Savable) null);
        capsule.write(maxDisplacement(), tagMaxDisplacement, 1000.0f);
        capsule.write(waterDensity(), tagWaterDensity, 0.0f);
        capsule.write(copyWaterNormal(null), tagWaterNormal, (Savable) null);
        capsule.write(waterOffset(), tagWaterOffset, 0.0f);
    }

    @Override
    public SoftBodyWorldInfo jmeClone() {
        try {
            return (SoftBodyWorldInfo) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public SoftBodyWorldInfo(long j10) {
        C13702E.x(j10, "native ID");
        super.setNativeIdNotTracked(j10);
    }
}
