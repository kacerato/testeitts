package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.math.type.ReadOnlyQuaternion;
import com.ardor3d.math.type.ReadOnlyTransform;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Ardor3dException;

public class ValidatingTransform extends Transform {
    private void validate() {
        if (!Transform.isValid(this)) {
            throw new Ardor3dException("Transform is invalid");
        }
    }

    @Override
    public Transform fromHomogeneousMatrix(ReadOnlyMatrix4 readOnlyMatrix4) {
        super.fromHomogeneousMatrix(readOnlyMatrix4);
        validate();
        return this;
    }

    @Override
    public Transform invert(Transform transform) {
        Transform invert = super.invert(transform);
        if (Transform.isValid(invert)) {
            return invert;
        }
        throw new Ardor3dException("Transform is invalid");
    }

    @Override
    public Transform multiply(ReadOnlyTransform readOnlyTransform, Transform transform) {
        Transform multiply = super.multiply(readOnlyTransform, transform);
        if (Transform.isValid(multiply)) {
            return multiply;
        }
        throw new Ardor3dException("Transform is invalid");
    }

    @Override
    public Transform set(ReadOnlyTransform readOnlyTransform) {
        super.set(readOnlyTransform);
        validate();
        return this;
    }

    @Override
    public void setMatrix(ReadOnlyMatrix3 readOnlyMatrix3) {
        super.setMatrix(readOnlyMatrix3);
        validate();
    }

    @Override
    public void setRotation(ReadOnlyMatrix3 readOnlyMatrix3) {
        super.setRotation(readOnlyMatrix3);
        validate();
    }

    @Override
    public void setScale(double d10, double d11, double d12) {
        super.setScale(d10, d11, d12);
        validate();
    }

    @Override
    public void setTranslation(double d10, double d11, double d12) {
        super.setTranslation(d10, d11, d12);
        validate();
    }

    @Override
    public Transform translate(double d10, double d11, double d12) {
        super.translate(d10, d11, d12);
        validate();
        return this;
    }

    @Override
    public void setRotation(ReadOnlyQuaternion readOnlyQuaternion) {
        super.setRotation(readOnlyQuaternion);
        validate();
    }

    @Override
    public void setScale(double d10) {
        super.setScale(d10);
        validate();
    }

    @Override
    public void setTranslation(ReadOnlyVector3 readOnlyVector3) {
        super.setTranslation(readOnlyVector3);
        validate();
    }

    @Override
    public Transform translate(ReadOnlyVector3 readOnlyVector3) {
        super.translate(readOnlyVector3);
        validate();
        return this;
    }

    @Override
    public void setScale(ReadOnlyVector3 readOnlyVector3) {
        super.setScale(readOnlyVector3);
        validate();
    }
}
