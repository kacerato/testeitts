package com.jme3.bullet.objects.infos;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class SoftBodyMaterial extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(SoftBodyMaterial.class.getName());
    private static final String tagAngularStiffness = "angularStiffness";
    private static final String tagBody = "body";
    private static final String tagLinearStiffness = "linearStiffness";
    private static final String tagVolumeStiffness = "volumeStiffness";
    private PhysicsSoftBody body;

    public SoftBodyMaterial() {
        this.body = null;
    }

    private static native float getAngularStiffnessFactor(long j10);

    private static native float getLinearStiffnessFactor(long j10);

    private static native long getMaterialId(long j10);

    private static native float getVolumeStiffnessFactor(long j10);

    private static native void setAngularStiffnessFactor(long j10, float f10);

    private static native void setLinearStiffnessFactor(long j10, float f10);

    private static native void setVolumeStiffnessFactor(long j10, float f10);

    public float angularStiffness() {
        return getAngularStiffnessFactor(nativeId());
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        unassignNativeObject();
        PhysicsSoftBody physicsSoftBody = (PhysicsSoftBody) cloner.clone(this.body);
        this.body = physicsSoftBody;
        setNativeIdNotTracked(getMaterialId(physicsSoftBody.nativeId()));
        SoftBodyMaterial softBodyMaterial = (SoftBodyMaterial) obj;
        setAngularStiffness(softBodyMaterial.angularStiffness());
        setLinearStiffness(softBodyMaterial.linearStiffness());
        setVolumeStiffness(softBodyMaterial.volumeStiffness());
    }

    public float linearStiffness() {
        return getLinearStiffnessFactor(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        PhysicsSoftBody physicsSoftBody = (PhysicsSoftBody) capsule.readSavable("body", null);
        this.body = physicsSoftBody;
        setNativeIdNotTracked(getMaterialId(physicsSoftBody.nativeId()));
        setAngularStiffness(capsule.readFloat(tagAngularStiffness, 1.0f));
        setLinearStiffness(capsule.readFloat(tagLinearStiffness, 1.0f));
        setVolumeStiffness(capsule.readFloat(tagVolumeStiffness, 1.0f));
    }

    public void setAngularStiffness(float f10) {
        C13702E.f(f10, "stiffness coefficient");
        setAngularStiffnessFactor(nativeId(), f10);
    }

    public void setLinearStiffness(float f10) {
        C13702E.f(f10, "stiffness coefficient");
        setLinearStiffnessFactor(nativeId(), f10);
    }

    public void setVolumeStiffness(float f10) {
        C13702E.f(f10, "stiffness coefficient");
        setVolumeStiffnessFactor(nativeId(), f10);
    }

    public float volumeStiffness() {
        return getVolumeStiffnessFactor(nativeId());
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.body, "body", (Savable) null);
        capsule.write(angularStiffness(), tagAngularStiffness, 1.0f);
        capsule.write(linearStiffness(), tagLinearStiffness, 1.0f);
        capsule.write(volumeStiffness(), tagVolumeStiffness, 1.0f);
    }

    @Override
    public SoftBodyMaterial jmeClone() {
        try {
            return (SoftBodyMaterial) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public SoftBodyMaterial(PhysicsSoftBody physicsSoftBody) {
        this.body = physicsSoftBody;
        super.setNativeIdNotTracked(getMaterialId(physicsSoftBody.nativeId()));
    }
}
