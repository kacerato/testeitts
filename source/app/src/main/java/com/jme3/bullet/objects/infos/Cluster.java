package com.jme3.bullet.objects.infos;

public enum Cluster {
    AngularDamping,
    LinearDamping,
    Matching,
    MaxSelfImpulse,
    NodeDamping,
    SelfImpulse;

    public boolean canSet(float f10) {
        return f10 >= minValue() && f10 <= maxValue();
    }

    public float defValue() {
        int ordinal = ordinal();
        if (ordinal != 0 && ordinal != 1 && ordinal != 2) {
            if (ordinal == 3) {
                return 100.0f;
            }
            if (ordinal != 4) {
                if (ordinal == 5) {
                    return 0.01f;
                }
                throw new IllegalArgumentException("parameter = " + ((Object) this));
            }
        }
        return 0.0f;
    }

    public float maxValue() {
        int ordinal = ordinal();
        if (ordinal == 0 || ordinal == 1 || ordinal == 2 || ordinal == 3 || ordinal == 4 || ordinal == 5) {
            return Float.MAX_VALUE;
        }
        throw new IllegalArgumentException("parameter = " + ((Object) this));
    }

    public float minValue() {
        int ordinal = ordinal();
        if (ordinal == 0 || ordinal == 1 || ordinal == 2 || ordinal == 3 || ordinal == 4 || ordinal == 5) {
            return -3.4028235E38f;
        }
        throw new IllegalArgumentException("parameter = " + ((Object) this));
    }
}
