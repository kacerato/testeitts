package com.ardor3d.scenegraph.controller.interpolation;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.Spatial;

public abstract class Vector3InterpolationController extends InterpolationController<ReadOnlyVector3, Spatial> {
    static final boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 1;
    private boolean _constantSpeed;
    private UpdateField _updateField = UpdateField.LOCAL_TRANSLATION;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField;

        static {
            int[] iArr = new int[UpdateField.values().length];
            $SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField = iArr;
            try {
                iArr[UpdateField.LOCAL_SCALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField[UpdateField.LOCAL_TRANSLATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField[UpdateField.WORLD_SCALE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField[UpdateField.WORLD_TRANSLATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum UpdateField {
        LOCAL_TRANSLATION,
        WORLD_TRANSLATION,
        LOCAL_SCALE,
        WORLD_SCALE
    }

    public UpdateField getUpdateField() {
        return this._updateField;
    }

    public abstract Vector3 interpolateVectors(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10, Vector3 vector3);

    public boolean isConstantSpeed() {
        return this._constantSpeed;
    }

    public void setConstantSpeed(boolean z10) {
        this._constantSpeed = z10;
    }

    public void setUpdateField(UpdateField updateField) {
        this._updateField = updateField;
    }

    @Override
    public void interpolate(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10, Spatial spatial) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 interpolateVectors = interpolateVectors(readOnlyVector3, readOnlyVector32, d10, fetchTempInstance);
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField[getUpdateField().ordinal()];
        if (i10 == 1) {
            spatial.setScale(interpolateVectors);
        } else if (i10 == 2) {
            spatial.setTranslation(interpolateVectors);
        } else if (i10 == 3) {
            spatial.setWorldScale(interpolateVectors);
        } else if (i10 != 4) {
            spatial.setTranslation(interpolateVectors);
        } else {
            spatial.setWorldTranslation(interpolateVectors);
        }
        Vector3.releaseTempInstance(fetchTempInstance);
    }
}
