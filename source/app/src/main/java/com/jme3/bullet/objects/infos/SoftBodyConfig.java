package com.jme3.bullet.objects.infos;

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

public class SoftBodyConfig implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(SoftBodyConfig.class.getName());
    private static final String tagBody = "body";
    private static final String tagClusterIterations = "clusterIterations";
    private static final String tagCollisionFlags = "collisionFlags";
    private static final String tagDriftIterations = "driftIterations";
    private static final String tagPositionIterations = "positionIterations";
    private static final String tagVelocityIterations = "velocityIterations";
    private PhysicsSoftBody body;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$objects$infos$Sbcp;

        static {
            int[] iArr = new int[Sbcp.values().length];
            $SwitchMap$com$jme3$bullet$objects$infos$Sbcp = iArr;
            try {
                iArr[Sbcp.AnchorHardness.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.ClusterKineticHardness.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.ClusterKineticSplit.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.ClusterRigidHardness.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.ClusterRigidSplit.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.ClusterSoftHardness.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.ClusterSoftSplit.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.Damping.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.Drag.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.DynamicFriction.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.KineticHardness.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.Lift.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.MaxVolumeRatio.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.PoseMatching.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.Pressure.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.RigidHardness.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.SoftHardness.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.TimeScale.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.VelocityCorrection.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$jme3$bullet$objects$infos$Sbcp[Sbcp.VolumeConservation.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    public SoftBodyConfig() {
        this.body = null;
    }

    private static native void copyValues(long j10, long j11);

    private static native int getAeroModel(long j10);

    private static native float getAnchorsHardness(long j10);

    private static native int getClusterIterations(long j10);

    private static native float getClusterKineticHardness(long j10);

    private static native float getClusterKineticImpulseSplitCoef(long j10);

    private static native float getClusterRigidHardness(long j10);

    private static native float getClusterRigidImpulseSplitCoef(long j10);

    private static native float getClusterSoftHardness(long j10);

    private static native float getClusterSoftImpulseSplitCoef(long j10);

    private static native int getCollisionsFlags(long j10);

    private static native float getDampingCoef(long j10);

    private static native float getDragCoef(long j10);

    private static native int getDriftIterations(long j10);

    private static native float getDynamicFrictionCoef(long j10);

    private static native float getKineticContactsHardness(long j10);

    private static native float getLiftCoef(long j10);

    private static native float getMaximumVolumeRatio(long j10);

    private static native float getPoseMatchingCoef(long j10);

    private static native int getPositionIterations(long j10);

    private static native float getPressureCoef(long j10);

    private static native float getRigidContactsHardness(long j10);

    private static native float getSoftContactsHardness(long j10);

    private static native float getTimeScale(long j10);

    private static native float getVelocitiesCorrectionFactor(long j10);

    private static native int getVelocitiesIterations(long j10);

    private static native float getVolumeConservationCoef(long j10);

    private static native void setAeroModel(long j10, int i10);

    private static native void setAnchorsHardness(long j10, float f10);

    private static native void setClusterIterations(long j10, int i10);

    private static native void setClusterKineticHardness(long j10, float f10);

    private static native void setClusterKineticImpulseSplitCoef(long j10, float f10);

    private static native void setClusterRigidHardness(long j10, float f10);

    private static native void setClusterRigidImpulseSplitCoef(long j10, float f10);

    private static native void setClusterSoftHardness(long j10, float f10);

    private static native void setClusterSoftImpulseSplitCoef(long j10, float f10);

    private static native void setCollisionsFlags(long j10, int i10);

    private static native void setDampingCoef(long j10, float f10);

    private static native void setDragCoef(long j10, float f10);

    private static native void setDriftIterations(long j10, int i10);

    private static native void setDynamicFrictionCoef(long j10, float f10);

    private static native void setKineticContactsHardness(long j10, float f10);

    private static native void setLiftCoef(long j10, float f10);

    private static native void setMaximumVolumeRatio(long j10, float f10);

    private static native void setPoseMatchingCoef(long j10, float f10);

    private static native void setPositionIterations(long j10, int i10);

    private static native void setPressureCoef(long j10, float f10);

    private static native void setRigidContactsHardness(long j10, float f10);

    private static native void setSoftContactsHardness(long j10, float f10);

    private static native void setTimeScale(long j10, float f10);

    private static native void setVelocitiesCorrectionFactor(long j10, float f10);

    private static native void setVelocitiesIterations(long j10, int i10);

    private static native void setVolumeConservationCoef(long j10, float f10);

    public Aero aerodynamics() {
        return Aero.values()[getAeroModel(this.body.nativeId())];
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.body = (PhysicsSoftBody) cloner.clone(this.body);
        copyAll((SoftBodyConfig) obj);
    }

    public int clusterIterations() {
        return getClusterIterations(this.body.nativeId());
    }

    public int collisionFlags() {
        return getCollisionsFlags(this.body.nativeId());
    }

    public void copyAll(SoftBodyConfig softBodyConfig) {
        copyValues(this.body.nativeId(), softBodyConfig.body.nativeId());
    }

    public int driftIterations() {
        return getDriftIterations(this.body.nativeId());
    }

    public float get(Sbcp sbcp) {
        C13702E.t(sbcp, "parameter");
        long nativeId = this.body.nativeId();
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$objects$infos$Sbcp[sbcp.ordinal()]) {
            case 1:
                return getAnchorsHardness(nativeId);
            case 2:
                return getClusterKineticHardness(nativeId);
            case 3:
                return getClusterKineticImpulseSplitCoef(nativeId);
            case 4:
                return getClusterRigidHardness(nativeId);
            case 5:
                return getClusterRigidImpulseSplitCoef(nativeId);
            case 6:
                return getClusterSoftHardness(nativeId);
            case 7:
                return getClusterSoftImpulseSplitCoef(nativeId);
            case 8:
                return getDampingCoef(nativeId);
            case 9:
                return getDragCoef(nativeId);
            case 10:
                return getDynamicFrictionCoef(nativeId);
            case 11:
                return getKineticContactsHardness(nativeId);
            case 12:
                return getLiftCoef(nativeId);
            case 13:
                return getMaximumVolumeRatio(nativeId);
            case 14:
                return getPoseMatchingCoef(nativeId);
            case 15:
                return getPressureCoef(nativeId);
            case 16:
                return getRigidContactsHardness(nativeId);
            case 17:
                return getSoftContactsHardness(nativeId);
            case 18:
                return getTimeScale(nativeId);
            case 19:
                return getVelocitiesCorrectionFactor(nativeId);
            case 20:
                return getVolumeConservationCoef(nativeId);
            default:
                throw new IllegalArgumentException(toString());
        }
    }

    public int positionIterations() {
        return getPositionIterations(this.body.nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.body = (PhysicsSoftBody) capsule.readSavable("body", null);
        setClusterIterations(capsule.readInt(tagClusterIterations, 4));
        setCollisionFlags(capsule.readInt(tagCollisionFlags, 2), new int[0]);
        setDriftIterations(capsule.readInt(tagDriftIterations, 0));
        setPositionIterations(capsule.readInt(tagPositionIterations, 1));
        setVelocityIterations(capsule.readInt(tagVelocityIterations, 0));
        for (Sbcp sbcp : Sbcp.values()) {
            set(sbcp, capsule.readFloat(sbcp.toString(), sbcp.defValue()));
        }
    }

    public void set(Sbcp sbcp, float f10) {
        if (!sbcp.canSet(f10)) {
            throw new IllegalArgumentException(String.format("%s cannot be set to %f", sbcp, Float.valueOf(f10)));
        }
        long nativeId = this.body.nativeId();
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$objects$infos$Sbcp[sbcp.ordinal()]) {
            case 1:
                setAnchorsHardness(nativeId, f10);
                return;
            case 2:
                setClusterKineticHardness(nativeId, f10);
                return;
            case 3:
                setClusterKineticImpulseSplitCoef(nativeId, f10);
                return;
            case 4:
                setClusterRigidHardness(nativeId, f10);
                return;
            case 5:
                setClusterRigidImpulseSplitCoef(nativeId, f10);
                return;
            case 6:
                setClusterSoftHardness(nativeId, f10);
                return;
            case 7:
                setClusterSoftImpulseSplitCoef(nativeId, f10);
                return;
            case 8:
                setDampingCoef(nativeId, f10);
                return;
            case 9:
                setDragCoef(nativeId, f10);
                return;
            case 10:
                setDynamicFrictionCoef(nativeId, f10);
                return;
            case 11:
                setKineticContactsHardness(nativeId, f10);
                return;
            case 12:
                setLiftCoef(nativeId, f10);
                return;
            case 13:
                setMaximumVolumeRatio(nativeId, f10);
                return;
            case 14:
                setPoseMatchingCoef(nativeId, f10);
                return;
            case 15:
                setPressureCoef(nativeId, f10);
                return;
            case 16:
                setRigidContactsHardness(nativeId, f10);
                return;
            case 17:
                setSoftContactsHardness(nativeId, f10);
                return;
            case 18:
                setTimeScale(nativeId, f10);
                return;
            case 19:
                setVelocitiesCorrectionFactor(nativeId, f10);
                return;
            case 20:
                setVolumeConservationCoef(nativeId, f10);
                return;
            default:
                throw new IllegalArgumentException(toString());
        }
    }

    public void setAerodynamics(Aero aero) {
        setAeroModel(this.body.nativeId(), aero.ordinal());
    }

    public void setClusterIterations(int i10) {
        setClusterIterations(this.body.nativeId(), i10);
    }

    public void setCollisionFlags(int i10, int... iArr) {
        for (int i11 : iArr) {
            i10 |= i11;
        }
        setCollisionsFlags(this.body.nativeId(), i10);
    }

    public void setDriftIterations(int i10) {
        setDriftIterations(this.body.nativeId(), i10);
    }

    public void setPositionIterations(int i10) {
        setPositionIterations(this.body.nativeId(), i10);
    }

    public void setVelocityIterations(int i10) {
        setVelocitiesIterations(this.body.nativeId(), i10);
    }

    public int velocityIterations() {
        return getVelocitiesIterations(this.body.nativeId());
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.body, "body", (Savable) null);
        capsule.write(clusterIterations(), tagClusterIterations, 4);
        capsule.write(collisionFlags(), tagCollisionFlags, 2);
        capsule.write(driftIterations(), tagDriftIterations, 0);
        capsule.write(positionIterations(), tagPositionIterations, 1);
        capsule.write(velocityIterations(), tagVelocityIterations, 0);
        for (Sbcp sbcp : Sbcp.values()) {
            capsule.write(get(sbcp), sbcp.toString(), sbcp.defValue());
        }
    }

    @Override
    public SoftBodyConfig jmeClone() {
        try {
            return (SoftBodyConfig) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public SoftBodyConfig(PhysicsSoftBody physicsSoftBody) {
        this.body = physicsSoftBody;
    }
}
