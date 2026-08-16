package com.jme3.bullet.objects.infos;

public enum Sbcp {
    AnchorHardness,
    ClusterKineticHardness,
    ClusterKineticSplit,
    ClusterRigidHardness,
    ClusterRigidSplit,
    ClusterSoftHardness,
    ClusterSoftSplit,
    Damping,
    Drag,
    DynamicFriction,
    KineticHardness,
    Lift,
    MaxVolumeRatio,
    PoseMatching,
    Pressure,
    RigidHardness,
    SoftHardness,
    TimeScale,
    VelocityCorrection,
    VolumeConservation;

    public boolean canSet(float f10) {
        return minValue() <= f10 && f10 <= maxValue();
    }

    public float defValue() {
        switch (this) {
            case AnchorHardness:
                return 0.7f;
            case ClusterKineticHardness:
            case MaxVolumeRatio:
            case RigidHardness:
            case SoftHardness:
            case TimeScale:
            case VelocityCorrection:
                return 1.0f;
            case ClusterKineticSplit:
            case ClusterRigidSplit:
            case ClusterSoftHardness:
            case ClusterSoftSplit:
                return 0.5f;
            case ClusterRigidHardness:
            case KineticHardness:
                return 0.1f;
            case Damping:
            case Drag:
            case Lift:
            case PoseMatching:
            case Pressure:
            case VolumeConservation:
                return 0.0f;
            case DynamicFriction:
                return 0.2f;
            default:
                throw new IllegalArgumentException("parameter = " + ((Object) this));
        }
    }

    public float maxValue() {
        switch (this) {
            case AnchorHardness:
            case ClusterKineticHardness:
            case ClusterKineticSplit:
            case ClusterRigidHardness:
            case ClusterRigidSplit:
            case ClusterSoftHardness:
            case ClusterSoftSplit:
            case DynamicFriction:
            case KineticHardness:
            case PoseMatching:
            case RigidHardness:
            case SoftHardness:
                return 1.0f;
            case Damping:
            case Drag:
            case Lift:
            case MaxVolumeRatio:
            case Pressure:
            case TimeScale:
            case VelocityCorrection:
            case VolumeConservation:
                return Float.MAX_VALUE;
            default:
                throw new IllegalArgumentException("parameter = " + ((Object) this));
        }
    }

    public float minValue() {
        switch (this) {
            case AnchorHardness:
            case ClusterKineticHardness:
            case ClusterKineticSplit:
            case ClusterRigidHardness:
            case ClusterRigidSplit:
            case ClusterSoftHardness:
            case ClusterSoftSplit:
            case Damping:
            case Drag:
            case DynamicFriction:
            case KineticHardness:
            case Lift:
            case PoseMatching:
            case RigidHardness:
            case SoftHardness:
            case VolumeConservation:
                return 0.0f;
            case MaxVolumeRatio:
            case Pressure:
            case TimeScale:
            case VelocityCorrection:
                return -3.4028235E38f;
            default:
                throw new IllegalArgumentException("parameter = " + ((Object) this));
        }
    }
}
