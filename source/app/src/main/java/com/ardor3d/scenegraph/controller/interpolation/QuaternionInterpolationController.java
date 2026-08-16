package com.ardor3d.scenegraph.controller.interpolation;

import com.ardor3d.math.Quaternion;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.scenegraph.Spatial;

public class QuaternionInterpolationController extends InterpolationController<ReadOnlyQuaternion, Spatial> {
    static final boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 1;
    private boolean _localRotation = true;

    public boolean isLocalRotation() {
        return this._localRotation;
    }

    public void setLocalRotation(boolean z10) {
        this._localRotation = z10;
    }

    @Override
    public void interpolate(ReadOnlyQuaternion readOnlyQuaternion, ReadOnlyQuaternion readOnlyQuaternion2, double d10, Spatial spatial) {
        Quaternion fetchTempInstance = Quaternion.fetchTempInstance();
        fetchTempInstance.slerpLocal(readOnlyQuaternion, readOnlyQuaternion2, d10);
        if (isLocalRotation()) {
            spatial.setRotation(fetchTempInstance);
        } else {
            spatial.setWorldRotation(fetchTempInstance);
        }
        Quaternion.releaseTempInstance(fetchTempInstance);
    }
}
