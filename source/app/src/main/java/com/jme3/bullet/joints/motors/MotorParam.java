package com.jme3.bullet.joints.motors;

import java.lang.constant.ConstantDescs;

public enum MotorParam {
    Bounce,
    Damping,
    Equilibrium,
    LowerLimit,
    MaxMotorForce,
    MotorCfm,
    MotorErp,
    ServoTarget,
    Stiffness,
    StopCfm,
    StopErp,
    TargetVelocity,
    UpperLimit;

    public boolean canSet(float f10) {
        return minValue() <= f10 && f10 <= maxValue();
    }

    public float defaultForRotationMotor() {
        switch (this) {
            case Bounce:
            case Damping:
            case Equilibrium:
            case MotorCfm:
            case ServoTarget:
            case Stiffness:
            case StopCfm:
            case TargetVelocity:
                return 0.0f;
            case LowerLimit:
                return 1.0f;
            case MaxMotorForce:
                return 6.0f;
            case MotorErp:
                return 0.9f;
            case StopErp:
                return 0.2f;
            case UpperLimit:
                return -1.0f;
            default:
                throw new IllegalArgumentException(toString());
        }
    }

    public float defaultForTranslationMotor() {
        switch (this) {
            case Bounce:
            case Damping:
            case Equilibrium:
            case LowerLimit:
            case MaxMotorForce:
            case MotorCfm:
            case ServoTarget:
            case Stiffness:
            case StopCfm:
            case TargetVelocity:
            case UpperLimit:
                return 0.0f;
            case MotorErp:
                return 0.9f;
            case StopErp:
                return 0.2f;
            default:
                throw new IllegalArgumentException(toString());
        }
    }

    public float maxValue() {
        switch (this) {
            case Bounce:
            case MotorCfm:
            case MotorErp:
            case StopCfm:
            case StopErp:
                return 1.0f;
            case Damping:
            case Equilibrium:
            case LowerLimit:
            case MaxMotorForce:
            case ServoTarget:
            case Stiffness:
            case TargetVelocity:
            case UpperLimit:
                return Float.MAX_VALUE;
            default:
                throw new IllegalArgumentException(toString());
        }
    }

    public float minValue() {
        switch (this) {
            case Bounce:
            case Damping:
            case MaxMotorForce:
            case MotorCfm:
            case MotorErp:
            case Stiffness:
            case StopCfm:
            case StopErp:
                return 0.0f;
            case Equilibrium:
            case LowerLimit:
            case ServoTarget:
            case TargetVelocity:
            case UpperLimit:
                return -3.4028235E38f;
            default:
                throw new IllegalArgumentException(toString());
        }
    }

    public int nativeIndex() {
        int ordinal = ordinal();
        if (ordinal == 5) {
            return 3;
        }
        if (ordinal == 6) {
            return 1;
        }
        if (ordinal == 9) {
            return 4;
        }
        if (ordinal == 10) {
            return 2;
        }
        throw new IllegalArgumentException(toString());
    }

    public String tagSuffix() {
        return ConstantDescs.DEFAULT_NAME + toString();
    }
}
