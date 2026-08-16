package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.util.SafeArrayList;
import java.util.Arrays;
import java.util.logging.Logger;

public class ConstantVerifierState extends BaseAppState {
    static final boolean $assertionsDisabled = false;
    private static final Checker[] DEFAULT_CHECKS;
    private static final Logger log = Logger.getLogger(ConstantVerifierState.class.getName());
    private final SafeArrayList<Checker> checkers;
    private ErrorType errorType;

    public static class Checker {
        private final Object constant;
        private final Object goodValue;

        public Checker(Object obj, Object obj2) {
            if (obj == null) {
                throw new IllegalArgumentException("Constant cannot be null");
            }
            if (obj.equals(obj2)) {
                this.constant = obj;
                this.goodValue = obj2;
                return;
            }
            throw new IllegalArgumentException("Constant value: " + obj + " does not match value: " + obj2);
        }

        public boolean isValid() {
            return this.constant.equals(this.goodValue);
        }

        public String toString() {
            return "Constant:" + this.constant + ", correct value:" + this.goodValue + ", type:" + ((Object) this.goodValue.getClass());
        }
    }

    public enum ErrorType {
        Assert,
        Exception,
        Log
    }

    static {
        Checker checker = new Checker(Vector3f.ZERO, new Vector3f(0.0f, 0.0f, 0.0f));
        Checker checker2 = new Checker(Vector3f.NAN, new Vector3f(Float.NaN, Float.NaN, Float.NaN));
        Vector3f vector3f = Vector3f.UNIT_X;
        Checker checker3 = new Checker(vector3f, new Vector3f(1.0f, 0.0f, 0.0f));
        Vector3f vector3f2 = Vector3f.UNIT_Y;
        Checker checker4 = new Checker(vector3f2, new Vector3f(0.0f, 1.0f, 0.0f));
        Vector3f vector3f3 = Vector3f.UNIT_Z;
        DEFAULT_CHECKS = new Checker[]{checker, checker2, checker3, checker4, new Checker(vector3f3, new Vector3f(0.0f, 0.0f, 1.0f)), new Checker(Vector3f.UNIT_XYZ, new Vector3f(1.0f, 1.0f, 1.0f)), new Checker(Vector3f.POSITIVE_INFINITY, new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY)), new Checker(Vector3f.NEGATIVE_INFINITY, new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY)), new Checker(Quaternion.IDENTITY, new Quaternion()), new Checker(Quaternion.DIRECTION_Z, new Quaternion().fromAxes(vector3f, vector3f2, vector3f3)), new Checker(Quaternion.ZERO, new Quaternion(0.0f, 0.0f, 0.0f, 0.0f)), new Checker(Vector2f.ZERO, new Vector2f(0.0f, 0.0f)), new Checker(Vector2f.NAN, new Vector2f(Float.NaN, Float.NaN)), new Checker(Vector2f.UNIT_X, new Vector2f(1.0f, 0.0f)), new Checker(Vector2f.UNIT_Y, new Vector2f(0.0f, 1.0f)), new Checker(Vector2f.UNIT_XY, new Vector2f(1.0f, 1.0f)), new Checker(Vector2f.POSITIVE_INFINITY, new Vector2f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY)), new Checker(Vector2f.NEGATIVE_INFINITY, new Vector2f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY)), new Checker(Vector4f.ZERO, new Vector4f(0.0f, 0.0f, 0.0f, 0.0f)), new Checker(Vector4f.NAN, new Vector4f(Float.NaN, Float.NaN, Float.NaN, Float.NaN)), new Checker(Vector4f.UNIT_X, new Vector4f(1.0f, 0.0f, 0.0f, 0.0f)), new Checker(Vector4f.UNIT_Y, new Vector4f(0.0f, 1.0f, 0.0f, 0.0f)), new Checker(Vector4f.UNIT_Z, new Vector4f(0.0f, 0.0f, 1.0f, 0.0f)), new Checker(Vector4f.UNIT_W, new Vector4f(0.0f, 0.0f, 0.0f, 1.0f)), new Checker(Vector4f.UNIT_XYZW, new Vector4f(1.0f, 1.0f, 1.0f, 1.0f)), new Checker(Vector4f.POSITIVE_INFINITY, new Vector4f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY)), new Checker(Vector4f.NEGATIVE_INFINITY, new Vector4f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY)), new Checker(Matrix3f.ZERO, new Matrix3f(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f)), new Checker(Matrix3f.IDENTITY, new Matrix3f()), new Checker(Matrix4f.ZERO, new Matrix4f(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f)), new Checker(Matrix4f.IDENTITY, new Matrix4f())};
    }

    public ConstantVerifierState() {
        this(ErrorType.Assert);
    }

    public void addChecker(Object obj, Object obj2) {
        this.checkers.add(new Checker(obj, obj2));
    }

    public void checkValues() {
        for (Checker checker : this.checkers.getArray()) {
            int ordinal = this.errorType.ordinal();
            if (ordinal == 1) {
                if (!checker.isValid()) {
                    throw new RuntimeException("JME Constant has changed, " + checker.toString());
                }
            } else if (ordinal == 2 && !checker.isValid()) {
                log.severe("JME Constant has changed, " + checker.toString());
            }
        }
    }

    @Override
    public void cleanup(Application application) {
    }

    public ErrorType getErrorType() {
        return this.errorType;
    }

    @Override
    public void initialize(Application application) {
    }

    @Override
    public void onDisable() {
    }

    @Override
    public void onEnable() {
    }

    @Override
    public void postRender() {
        checkValues();
    }

    public void setErrorType(ErrorType errorType) {
        this.errorType = errorType;
    }

    public ConstantVerifierState(ErrorType errorType) {
        this(errorType, DEFAULT_CHECKS);
    }

    private ConstantVerifierState(ErrorType errorType, Checker... checkerArr) {
        SafeArrayList<Checker> safeArrayList = new SafeArrayList<>(Checker.class);
        this.checkers = safeArrayList;
        this.errorType = errorType;
        safeArrayList.addAll(Arrays.asList(checkerArr));
    }
}
