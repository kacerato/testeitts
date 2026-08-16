package com.ardor3d.scenegraph.controller.interpolation;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.controller.SpatialController;
import java.io.Serializable;

public class CurveLookAtController implements SpatialController<Spatial>, Serializable {
    private static final long serialVersionUID = 1;
    private final CurveInterpolationController _curveController;
    private boolean _localRotation;
    private final Vector3 _previous;
    private ReadOnlyVector3 _worldUp;

    public CurveLookAtController(CurveInterpolationController curveInterpolationController) {
        this(curveInterpolationController, Vector3.UNIT_Y);
    }

    public boolean isLocalRotation() {
        return this._localRotation;
    }

    public void setLocalRotation(boolean z10) {
        this._localRotation = z10;
    }

    public void setWorldUp(ReadOnlyVector3 readOnlyVector3) {
        if (readOnlyVector3 == null) {
            throw new IllegalArgumentException("worldUp can not be null!");
        }
        this._worldUp = readOnlyVector3;
    }

    @Override
    public void update(double d10, Spatial spatial) {
        if (spatial == null) {
            throw new IllegalArgumentException("caller can not be null!");
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Matrix3 fetchTempInstance2 = Matrix3.fetchTempInstance();
        CurveInterpolationController curveInterpolationController = this._curveController;
        curveInterpolationController.interpolateVectors(curveInterpolationController.getControlFrom(), this._curveController.getControlTo(), this._curveController.getDelta(), fetchTempInstance);
        MathUtils.matrixLookAt(this._previous, fetchTempInstance, this._worldUp, fetchTempInstance2);
        if (isLocalRotation()) {
            spatial.setRotation(fetchTempInstance2);
        } else {
            spatial.setWorldRotation(fetchTempInstance2);
        }
        this._previous.set(fetchTempInstance);
        Matrix3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance);
    }

    public CurveLookAtController(CurveInterpolationController curveInterpolationController, ReadOnlyVector3 readOnlyVector3) {
        this._localRotation = true;
        if (curveInterpolationController != null) {
            this._curveController = curveInterpolationController;
            this._previous = new Vector3(curveInterpolationController.getControlFrom());
            setWorldUp(readOnlyVector3);
            return;
        }
        throw new IllegalArgumentException("curveController can not be null!");
    }
}
