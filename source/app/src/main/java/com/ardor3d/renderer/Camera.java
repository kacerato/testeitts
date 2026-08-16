package com.ardor3d.renderer;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.math.Matrix4;
import com.ardor3d.math.Plane;
import com.ardor3d.math.Ray3;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.Vector4;
import com.ardor3d.math.type.ReadOnlyMatrix3;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.math.type.ReadOnlyPlane;
import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import ga.m;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.logging.Logger;

public class Camera implements Savable, Externalizable {
    public static final int BOTTOM_PLANE = 2;
    public static final int FAR_PLANE = 4;
    public static final int FRUSTUM_PLANES = 6;
    public static final int LEFT_PLANE = 0;
    public static final int MAX_WORLD_PLANES = 32;
    public static final int NEAR_PLANE = 5;
    public static final int RIGHT_PLANE = 1;
    public static final int TOP_PLANE = 3;
    private static final Logger _logger = Logger.getLogger(Camera.class.getName());
    private static final long serialVersionUID = 1;
    protected double[] _coeffBottom;
    protected double[] _coeffLeft;
    protected double[] _coeffRight;
    protected double[] _coeffTop;
    protected boolean _depthRangeDirty;
    protected double _depthRangeFar;
    protected double _depthRangeNear;
    protected final Vector3 _direction;
    protected double _fovY;
    protected boolean _frameDirty;
    protected double _frustumBottom;
    protected boolean _frustumDirty;
    protected double _frustumFar;
    protected double _frustumLeft;
    protected double _frustumNear;
    protected double _frustumRight;
    protected double _frustumTop;
    protected int _height;
    protected final Vector3 _left;
    protected final Vector3 _location;
    protected final FloatBuffer _matrixBuffer;
    protected final Matrix4 _modelView;
    private final Matrix4 _modelViewProjection;
    private final Matrix4 _modelViewProjectionInverse;
    protected final Vector3 _newDirection;
    protected int _planeQuantity;
    private int _planeState;
    protected final Matrix4 _projection;
    private ProjectionMode _projectionMode;
    protected final Matrix4 _transMatrix;
    protected final Vector3 _up;
    private boolean _updateInverseMVPMatrix;
    private boolean _updateMVMatrix;
    private boolean _updateMVPMatrix;
    private boolean _updatePMatrix;
    protected double _viewPortBottom;
    protected boolean _viewPortDirty;
    protected double _viewPortLeft;
    protected double _viewPortRight;
    protected double _viewPortTop;
    protected int _width;
    protected Plane[] _worldPlane;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$math$type$ReadOnlyPlane$Side;

        static {
            int[] iArr = new int[ReadOnlyPlane.Side.values().length];
            $SwitchMap$com$ardor3d$math$type$ReadOnlyPlane$Side = iArr;
            try {
                iArr[ReadOnlyPlane.Side.Inside.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$math$type$ReadOnlyPlane$Side[ReadOnlyPlane.Side.Outside.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$math$type$ReadOnlyPlane$Side[ReadOnlyPlane.Side.Neither.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum FrustumIntersect {
        Outside,
        Inside,
        Intersects
    }

    public enum ProjectionMode {
        Perspective,
        Parallel,
        Custom
    }

    public Camera() {
        this(100, 100);
    }

    private void checkInverseModelViewProjection() {
        if (this._updateInverseMVPMatrix) {
            checkModelViewProjection();
            this._modelViewProjection.invert(this._modelViewProjectionInverse);
            this._updateInverseMVPMatrix = false;
        }
    }

    private void checkModelView() {
        if (this._updateMVMatrix) {
            updateModelViewMatrix();
            this._updateMVMatrix = false;
        }
    }

    private void checkModelViewProjection() {
        if (this._updateMVPMatrix) {
            checkModelView();
            checkProjection();
            this._modelViewProjection.set(getModelViewMatrix()).multiplyLocal(getProjectionMatrix());
            this._updateMVPMatrix = false;
        }
    }

    private void checkProjection() {
        if (this._updatePMatrix) {
            updateProjectionMatrix();
            this._updatePMatrix = false;
        }
    }

    public static Camera getCurrentCamera() {
        if (ContextManager.getCurrentContext() == null) {
            return null;
        }
        return ContextManager.getCurrentContext().getCurrentCamera();
    }

    public void apply(Renderer renderer) {
        ContextManager.getCurrentContext().setCurrentCamera(this);
        if (this._depthRangeDirty) {
            renderer.setDepthRange(this._depthRangeNear, this._depthRangeFar);
            this._depthRangeDirty = false;
        }
        if (this._frustumDirty) {
            applyProjectionMatrix(renderer);
            this._frustumDirty = false;
        }
        if (this._viewPortDirty) {
            applyViewport(renderer);
            this._viewPortDirty = false;
        }
        if (this._frameDirty) {
            applyModelViewMatrix(renderer);
            this._frameDirty = false;
        }
    }

    public void applyModelViewMatrix(Renderer renderer) {
        this._matrixBuffer.rewind();
        getModelViewMatrix().toFloatBuffer(this._matrixBuffer);
        this._matrixBuffer.rewind();
        renderer.setModelViewMatrix(this._matrixBuffer);
    }

    public void applyProjectionMatrix(Renderer renderer) {
        this._matrixBuffer.rewind();
        getProjectionMatrix().toFloatBuffer(this._matrixBuffer);
        this._matrixBuffer.rewind();
        renderer.setProjectionMatrix(this._matrixBuffer);
    }

    public void applyViewport(Renderer renderer) {
        double d10 = this._viewPortLeft;
        int i10 = this._width;
        double d11 = this._viewPortBottom;
        int i11 = this._height;
        renderer.setViewport((int) (i10 * d10), (int) (i11 * d11), (int) ((this._viewPortRight - d10) * i10), (int) ((this._viewPortTop - d11) * i11));
    }

    public FrustumIntersect contains(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return FrustumIntersect.Inside;
        }
        FrustumIntersect frustumIntersect = FrustumIntersect.Inside;
        int i10 = 6;
        while (i10 >= 0) {
            if (i10 != boundingVolume.getCheckPlane()) {
                int checkPlane = i10 == 6 ? boundingVolume.getCheckPlane() : i10;
                int i11 = 1 << checkPlane;
                if ((this._planeState & i11) != 0) {
                    continue;
                } else {
                    int i12 = AnonymousClass1.$SwitchMap$com$ardor3d$math$type$ReadOnlyPlane$Side[boundingVolume.whichSide(this._worldPlane[checkPlane]).ordinal()];
                    if (i12 == 1) {
                        boundingVolume.setCheckPlane(checkPlane);
                        return FrustumIntersect.Outside;
                    }
                    if (i12 == 2) {
                        this._planeState |= i11;
                    } else if (i12 == 3) {
                        frustumIntersect = FrustumIntersect.Intersects;
                    }
                }
            }
            i10--;
        }
        return frustumIntersect;
    }

    public double distanceToCam(ReadOnlyVector3 readOnlyVector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        readOnlyVector3.subtract(this._location, fetchTempInstance);
        double dot = fetchTempInstance.dot(this._direction);
        ReadOnlyVector3 readOnlyVector32 = this._direction;
        Vector3 multiply = this._direction.multiply(Math.abs(dot / readOnlyVector32.dot(readOnlyVector32)), fetchTempInstance);
        double length = multiply.length();
        Vector3.releaseTempInstance(multiply);
        return length;
    }

    @Override
    public Class<? extends Camera> getClassTag() {
        return getClass();
    }

    public double getDepthRangeFar() {
        return this._depthRangeFar;
    }

    public double getDepthRangeNear() {
        return this._depthRangeNear;
    }

    public ReadOnlyVector3 getDirection() {
        return this._direction;
    }

    public double getFovY() {
        return this._fovY;
    }

    public double getFrustumBottom() {
        return this._frustumBottom;
    }

    public Vector3 getFrustumCoordinates(ReadOnlyVector3 readOnlyVector3) {
        return getFrustumCoordinates(readOnlyVector3, null);
    }

    public double getFrustumFar() {
        return this._frustumFar;
    }

    public double getFrustumLeft() {
        return this._frustumLeft;
    }

    public double getFrustumNear() {
        return this._frustumNear;
    }

    public double getFrustumRight() {
        return this._frustumRight;
    }

    public double getFrustumTop() {
        return this._frustumTop;
    }

    public int getHeight() {
        return this._height;
    }

    public ReadOnlyVector3 getLeft() {
        return this._left;
    }

    public ReadOnlyVector3 getLocation() {
        return this._location;
    }

    public ReadOnlyMatrix4 getModelViewMatrix() {
        checkModelView();
        return this._modelView;
    }

    public ReadOnlyMatrix4 getModelViewProjectionInverseMatrix() {
        checkInverseModelViewProjection();
        return this._modelViewProjectionInverse;
    }

    public ReadOnlyMatrix4 getModelViewProjectionMatrix() {
        checkModelViewProjection();
        return this._modelViewProjection;
    }

    public Vector3 getNormalizedDeviceCoordinates(ReadOnlyVector3 readOnlyVector3) {
        return getNormalizedDeviceCoordinates(readOnlyVector3, null);
    }

    public Ray3 getPickRay(ReadOnlyVector2 readOnlyVector2, boolean z10, Ray3 ray3) {
        Vector2 vector2 = Vector2.fetchTempInstance().set(readOnlyVector2);
        if (z10) {
            vector2.setY(getHeight() - readOnlyVector2.getY());
        }
        if (ray3 == null) {
            ray3 = new Ray3();
        }
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        getWorldCoordinates(readOnlyVector2, 0.0d, fetchTempInstance);
        getWorldCoordinates(readOnlyVector2, 0.3d, fetchTempInstance2).subtractLocal(fetchTempInstance).normalizeLocal();
        ray3.setOrigin(fetchTempInstance);
        ray3.setDirection(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        return ray3;
    }

    public int getPlaneState() {
        return this._planeState;
    }

    public ReadOnlyMatrix4 getProjectionMatrix() {
        checkProjection();
        return this._projection;
    }

    public ProjectionMode getProjectionMode() {
        return this._projectionMode;
    }

    public Vector3 getScreenCoordinates(ReadOnlyVector3 readOnlyVector3) {
        return getScreenCoordinates(readOnlyVector3, null);
    }

    public ReadOnlyVector3 getUp() {
        return this._up;
    }

    public double getViewPortBottom() {
        return this._viewPortBottom;
    }

    public double getViewPortLeft() {
        return this._viewPortLeft;
    }

    public double getViewPortRight() {
        return this._viewPortRight;
    }

    public double getViewPortTop() {
        return this._viewPortTop;
    }

    public int getWidth() {
        return this._width;
    }

    public Vector3 getWorldCoordinates(ReadOnlyVector2 readOnlyVector2, double d10) {
        return getWorldCoordinates(readOnlyVector2, d10, null);
    }

    public void lookAt(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        lookAt(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ(), readOnlyVector32);
    }

    public void normalize() {
        this._left.normalizeLocal();
        this._up.normalizeLocal();
        this._direction.normalizeLocal();
        onFrameChange();
    }

    public void onFrameChange() {
        double dot = this._direction.dot(this._location);
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        fetchTempInstance.setX(this._left.getX() * this._coeffLeft[0]);
        fetchTempInstance.setY(this._left.getY() * this._coeffLeft[0]);
        fetchTempInstance.setZ(this._left.getZ() * this._coeffLeft[0]);
        fetchTempInstance.addLocal(this._direction.getX() * this._coeffLeft[1], this._direction.getY() * this._coeffLeft[1], this._direction.getZ() * this._coeffLeft[1]);
        this._worldPlane[0].setNormal(fetchTempInstance);
        this._worldPlane[0].setConstant(this._location.dot(fetchTempInstance));
        fetchTempInstance.setX(this._left.getX() * this._coeffRight[0]);
        fetchTempInstance.setY(this._left.getY() * this._coeffRight[0]);
        fetchTempInstance.setZ(this._left.getZ() * this._coeffRight[0]);
        fetchTempInstance.addLocal(this._direction.getX() * this._coeffRight[1], this._direction.getY() * this._coeffRight[1], this._direction.getZ() * this._coeffRight[1]);
        this._worldPlane[1].setNormal(fetchTempInstance);
        this._worldPlane[1].setConstant(this._location.dot(fetchTempInstance));
        fetchTempInstance.setX(this._up.getX() * this._coeffBottom[0]);
        fetchTempInstance.setY(this._up.getY() * this._coeffBottom[0]);
        fetchTempInstance.setZ(this._up.getZ() * this._coeffBottom[0]);
        fetchTempInstance.addLocal(this._direction.getX() * this._coeffBottom[1], this._direction.getY() * this._coeffBottom[1], this._direction.getZ() * this._coeffBottom[1]);
        this._worldPlane[2].setNormal(fetchTempInstance);
        this._worldPlane[2].setConstant(this._location.dot(fetchTempInstance));
        fetchTempInstance.setX(this._up.getX() * this._coeffTop[0]);
        fetchTempInstance.setY(this._up.getY() * this._coeffTop[0]);
        fetchTempInstance.setZ(this._up.getZ() * this._coeffTop[0]);
        fetchTempInstance.addLocal(this._direction.getX() * this._coeffTop[1], this._direction.getY() * this._coeffTop[1], this._direction.getZ() * this._coeffTop[1]);
        this._worldPlane[3].setNormal(fetchTempInstance);
        this._worldPlane[3].setConstant(this._location.dot(fetchTempInstance));
        if (getProjectionMode() == ProjectionMode.Parallel) {
            if (this._frustumRight > this._frustumLeft) {
                Plane plane = this._worldPlane[0];
                plane.setConstant(plane.getConstant() + this._frustumLeft);
                Plane plane2 = this._worldPlane[1];
                plane2.setConstant(plane2.getConstant() - this._frustumRight);
            } else {
                Plane plane3 = this._worldPlane[0];
                plane3.setConstant(plane3.getConstant() - this._frustumLeft);
                Plane plane4 = this._worldPlane[1];
                plane4.setConstant(plane4.getConstant() + this._frustumRight);
            }
            if (this._frustumBottom > this._frustumTop) {
                Plane plane5 = this._worldPlane[3];
                plane5.setConstant(plane5.getConstant() + this._frustumTop);
                Plane plane6 = this._worldPlane[2];
                plane6.setConstant(plane6.getConstant() - this._frustumBottom);
            } else {
                Plane plane7 = this._worldPlane[3];
                plane7.setConstant(plane7.getConstant() - this._frustumTop);
                Plane plane8 = this._worldPlane[2];
                plane8.setConstant(plane8.getConstant() + this._frustumBottom);
            }
        }
        fetchTempInstance.set(this._direction).negateLocal();
        this._worldPlane[4].setNormal(fetchTempInstance);
        this._worldPlane[4].setConstant(-(this._frustumFar + dot));
        this._worldPlane[5].setNormal(this._direction);
        this._worldPlane[5].setConstant(dot + this._frustumNear);
        Vector3.releaseTempInstance(fetchTempInstance);
        this._updateMVMatrix = true;
        this._updateMVPMatrix = true;
        this._updateInverseMVPMatrix = true;
        this._frameDirty = true;
    }

    public void onFrustumChange() {
        if (getProjectionMode() == ProjectionMode.Perspective) {
            double d10 = this._frustumNear;
            double d11 = d10 * d10;
            double d12 = this._frustumLeft;
            double d13 = this._frustumRight;
            double d14 = this._frustumBottom;
            double d15 = this._frustumTop;
            double sqrt = 1.0d / Math.sqrt((d12 * d12) + d11);
            double[] dArr = this._coeffLeft;
            dArr[0] = this._frustumNear * sqrt;
            dArr[1] = (-this._frustumLeft) * sqrt;
            double sqrt2 = 1.0d / Math.sqrt((d13 * d13) + d11);
            double[] dArr2 = this._coeffRight;
            dArr2[0] = (-this._frustumNear) * sqrt2;
            dArr2[1] = this._frustumRight * sqrt2;
            double sqrt3 = 1.0d / Math.sqrt((d14 * d14) + d11);
            double[] dArr3 = this._coeffBottom;
            dArr3[0] = this._frustumNear * sqrt3;
            dArr3[1] = (-this._frustumBottom) * sqrt3;
            double sqrt4 = 1.0d / Math.sqrt(d11 + (d15 * d15));
            double[] dArr4 = this._coeffTop;
            dArr4[0] = (-this._frustumNear) * sqrt4;
            dArr4[1] = this._frustumTop * sqrt4;
        } else if (getProjectionMode() == ProjectionMode.Parallel) {
            if (this._frustumRight > this._frustumLeft) {
                double[] dArr5 = this._coeffLeft;
                dArr5[0] = -1.0d;
                dArr5[1] = 0.0d;
                double[] dArr6 = this._coeffRight;
                dArr6[0] = 1.0d;
                dArr6[1] = 0.0d;
            } else {
                double[] dArr7 = this._coeffLeft;
                dArr7[0] = 1.0d;
                dArr7[1] = 0.0d;
                double[] dArr8 = this._coeffRight;
                dArr8[0] = -1.0d;
                dArr8[1] = 0.0d;
            }
            if (this._frustumBottom > this._frustumTop) {
                double[] dArr9 = this._coeffBottom;
                dArr9[0] = -1.0d;
                dArr9[1] = 0.0d;
                double[] dArr10 = this._coeffTop;
                dArr10[0] = 1.0d;
                dArr10[1] = 0.0d;
            } else {
                double[] dArr11 = this._coeffBottom;
                dArr11[0] = 1.0d;
                dArr11[1] = 0.0d;
                double[] dArr12 = this._coeffTop;
                dArr12[0] = -1.0d;
                dArr12[1] = 0.0d;
            }
        }
        this._updatePMatrix = true;
        this._updateMVPMatrix = true;
        this._updateInverseMVPMatrix = true;
        this._frustumDirty = true;
    }

    public void onViewPortChange() {
        this._viewPortDirty = true;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._location.set((Vector3) inputCapsule.readSavable("location", new Vector3(Vector3.ZERO)));
        this._left.set((Vector3) inputCapsule.readSavable(m.f88234c, new Vector3(Vector3.UNIT_X)));
        this._up.set((Vector3) inputCapsule.readSavable(m.f88236e, new Vector3(Vector3.UNIT_Y)));
        this._direction.set((Vector3) inputCapsule.readSavable("direction", new Vector3(Vector3.UNIT_Z)));
        this._frustumNear = inputCapsule.readDouble("frustumNear", 1.0d);
        this._frustumFar = inputCapsule.readDouble("frustumFar", 2.0d);
        this._frustumLeft = inputCapsule.readDouble("frustumLeft", -0.5d);
        this._frustumRight = inputCapsule.readDouble("frustumRight", 0.5d);
        this._frustumTop = inputCapsule.readDouble("frustumTop", 0.5d);
        this._frustumBottom = inputCapsule.readDouble("frustumBottom", -0.5d);
        this._coeffLeft = inputCapsule.readDoubleArray("coeffLeft", new double[2]);
        this._coeffRight = inputCapsule.readDoubleArray("coeffRight", new double[2]);
        this._coeffBottom = inputCapsule.readDoubleArray("coeffBottom", new double[2]);
        this._coeffTop = inputCapsule.readDoubleArray("coeffTop", new double[2]);
        this._planeQuantity = inputCapsule.readInt("planeQuantity", 6);
        this._viewPortLeft = inputCapsule.readDouble("viewPortLeft", 0.0d);
        this._viewPortRight = inputCapsule.readDouble("viewPortRight", 1.0d);
        this._viewPortTop = inputCapsule.readDouble("viewPortTop", 1.0d);
        this._viewPortBottom = inputCapsule.readDouble("viewPortBottom", 0.0d);
        this._width = inputCapsule.readInt("width", 0);
        this._height = inputCapsule.readInt("height", 0);
        this._depthRangeNear = inputCapsule.readDouble("depthRangeNear", 0.0d);
        this._depthRangeFar = inputCapsule.readDouble("depthRangeFar", 1.0d);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this._location.set((Vector3) objectInput.readObject());
        this._left.set((Vector3) objectInput.readObject());
        this._up.set((Vector3) objectInput.readObject());
        this._direction.set((Vector3) objectInput.readObject());
        this._frustumNear = objectInput.readDouble();
        this._frustumFar = objectInput.readDouble();
        this._frustumLeft = objectInput.readDouble();
        this._frustumRight = objectInput.readDouble();
        this._frustumTop = objectInput.readDouble();
        this._frustumBottom = objectInput.readDouble();
        this._coeffLeft = (double[]) objectInput.readObject();
        this._coeffRight = (double[]) objectInput.readObject();
        this._coeffBottom = (double[]) objectInput.readObject();
        this._coeffTop = (double[]) objectInput.readObject();
        this._planeQuantity = objectInput.readInt();
        this._viewPortLeft = objectInput.readDouble();
        this._viewPortRight = objectInput.readDouble();
        this._viewPortTop = objectInput.readDouble();
        this._viewPortBottom = objectInput.readDouble();
        this._width = objectInput.readInt();
        this._height = objectInput.readInt();
        this._depthRangeNear = objectInput.readDouble();
        this._depthRangeFar = objectInput.readDouble();
    }

    public void resize(int i10, int i11) {
        this._width = i10;
        this._height = i11;
        onViewPortChange();
    }

    public void set(Camera camera) {
        this._width = camera.getWidth();
        this._height = camera.getHeight();
        this._location.set(camera.getLocation());
        this._left.set(camera.getLeft());
        this._up.set(camera.getUp());
        this._direction.set(camera.getDirection());
        this._fovY = camera.getFovY();
        this._depthRangeNear = camera.getDepthRangeNear();
        this._depthRangeFar = camera.getDepthRangeFar();
        this._depthRangeDirty = true;
        this._frustumNear = camera.getFrustumNear();
        this._frustumFar = camera.getFrustumFar();
        this._frustumLeft = camera.getFrustumLeft();
        this._frustumRight = camera.getFrustumRight();
        this._frustumTop = camera.getFrustumTop();
        this._frustumBottom = camera.getFrustumBottom();
        this._viewPortLeft = camera.getViewPortLeft();
        this._viewPortRight = camera.getViewPortRight();
        this._viewPortTop = camera.getViewPortTop();
        this._viewPortBottom = camera.getViewPortBottom();
        this._planeQuantity = 6;
        this._projectionMode = camera.getProjectionMode();
        onFrustumChange();
        onViewPortChange();
        onFrameChange();
    }

    public void setAxes(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33) {
        this._left.set(readOnlyVector3);
        this._up.set(readOnlyVector32);
        this._direction.set(readOnlyVector33);
        onFrameChange();
    }

    public void setDepthRangeFar(double d10) {
        this._depthRangeFar = d10;
        this._depthRangeDirty = true;
    }

    public void setDepthRangeNear(double d10) {
        this._depthRangeNear = d10;
        this._depthRangeDirty = true;
    }

    public void setDirection(ReadOnlyVector3 readOnlyVector3) {
        this._direction.set(readOnlyVector3);
        onFrameChange();
    }

    public void setFrame(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, ReadOnlyVector3 readOnlyVector34) {
        this._left.set(readOnlyVector32);
        this._up.set(readOnlyVector33);
        this._direction.set(readOnlyVector34);
        this._location.set(readOnlyVector3);
        onFrameChange();
    }

    public void setFrustum(double d10, double d11, double d12, double d13, double d14, double d15) {
        this._frustumNear = d10;
        this._frustumFar = d11;
        this._frustumLeft = d12;
        this._frustumRight = d13;
        this._frustumTop = d14;
        this._frustumBottom = d15;
        onFrustumChange();
    }

    public void setFrustumBottom(double d10) {
        this._frustumBottom = d10;
        onFrustumChange();
    }

    public void setFrustumFar(double d10) {
        this._frustumFar = d10;
        onFrustumChange();
    }

    public void setFrustumLeft(double d10) {
        this._frustumLeft = d10;
        onFrustumChange();
    }

    public void setFrustumNear(double d10) {
        this._frustumNear = d10;
        onFrustumChange();
    }

    public void setFrustumPerspective(double d10, double d11, double d12, double d13) {
        if (Double.isNaN(d11) || Double.isInfinite(d11)) {
            _logger.warning("Invalid aspect given to setFrustumPerspective: " + d11);
            return;
        }
        this._fovY = d10;
        double tan = Math.tan(d10 * 0.017453292519943295d * 0.5d) * d12;
        double d14 = d11 * tan;
        this._frustumLeft = -d14;
        this._frustumRight = d14;
        this._frustumBottom = -tan;
        this._frustumTop = tan;
        this._frustumNear = d12;
        this._frustumFar = d13;
        onFrustumChange();
    }

    public void setFrustumRight(double d10) {
        this._frustumRight = d10;
        onFrustumChange();
    }

    public void setFrustumTop(double d10) {
        this._frustumTop = d10;
        onFrustumChange();
    }

    public void setLeft(ReadOnlyVector3 readOnlyVector3) {
        this._left.set(readOnlyVector3);
        onFrameChange();
    }

    public void setLocation(ReadOnlyVector3 readOnlyVector3) {
        this._location.set(readOnlyVector3);
        onFrameChange();
    }

    public void setPlaneState(int i10) {
        this._planeState = i10;
    }

    public void setProjectionMatrix(ReadOnlyMatrix4 readOnlyMatrix4) {
        this._projection.set(readOnlyMatrix4);
        this._frustumDirty = true;
    }

    public void setProjectionMode(ProjectionMode projectionMode) {
        this._projectionMode = projectionMode;
    }

    public void setUp(ReadOnlyVector3 readOnlyVector3) {
        this._up.set(readOnlyVector3);
        onFrameChange();
    }

    public void setViewPort(double d10, double d11, double d12, double d13) {
        setViewPortLeft(d10);
        setViewPortRight(d11);
        setViewPortBottom(d12);
        setViewPortTop(d13);
    }

    public void setViewPortBottom(double d10) {
        this._viewPortBottom = d10;
        onViewPortChange();
    }

    public void setViewPortLeft(double d10) {
        this._viewPortLeft = d10;
        onViewPortChange();
    }

    public void setViewPortRight(double d10) {
        this._viewPortRight = d10;
        onViewPortChange();
    }

    public void setViewPortTop(double d10) {
        this._viewPortTop = d10;
        onViewPortChange();
    }

    public String toString() {
        return "com.ardor3d.renderer.Camera: loc - " + Arrays.toString(getLocation().toArray(null)) + " dir - " + Arrays.toString(getDirection().toArray(null)) + " up - " + Arrays.toString(getUp().toArray(null)) + " left - " + Arrays.toString(getLeft().toArray(null));
    }

    public void update() {
        this._depthRangeDirty = true;
        onFrustumChange();
        onViewPortChange();
        onFrameChange();
    }

    public void updateModelViewMatrix() {
        this._modelView.setIdentity();
        this._modelView.setValue(0, 0, -this._left.getX());
        this._modelView.setValue(1, 0, -this._left.getY());
        this._modelView.setValue(2, 0, -this._left.getZ());
        this._modelView.setValue(0, 1, this._up.getX());
        this._modelView.setValue(1, 1, this._up.getY());
        this._modelView.setValue(2, 1, this._up.getZ());
        this._modelView.setValue(0, 2, -this._direction.getX());
        this._modelView.setValue(1, 2, -this._direction.getY());
        this._modelView.setValue(2, 2, -this._direction.getZ());
        this._transMatrix.setIdentity();
        this._transMatrix.setValue(3, 0, -this._location.getX());
        this._transMatrix.setValue(3, 1, -this._location.getY());
        this._transMatrix.setValue(3, 2, -this._location.getZ());
        this._transMatrix.multiplyLocal(this._modelView);
        this._modelView.set(this._transMatrix);
    }

    public void updateProjectionMatrix() {
        if (getProjectionMode() == ProjectionMode.Parallel) {
            this._projection.setIdentity();
            this._projection.setValue(0, 0, 2.0d / (this._frustumRight - this._frustumLeft));
            this._projection.setValue(1, 1, 2.0d / (this._frustumBottom - this._frustumTop));
            this._projection.setValue(2, 2, (-2.0d) / (this._frustumFar - this._frustumNear));
            this._projection.setValue(3, 3, 1.0d);
            Matrix4 matrix4 = this._projection;
            double d10 = this._frustumRight;
            double d11 = this._frustumLeft;
            matrix4.setValue(3, 0, (-(d10 + d11)) / (d10 - d11));
            Matrix4 matrix42 = this._projection;
            double d12 = this._frustumBottom;
            double d13 = this._frustumTop;
            matrix42.setValue(3, 1, (-(d12 + d13)) / (d12 - d13));
            Matrix4 matrix43 = this._projection;
            double d14 = this._frustumFar;
            double d15 = this._frustumNear;
            matrix43.setValue(3, 2, (-(d14 + d15)) / (d14 - d15));
        } else if (getProjectionMode() == ProjectionMode.Perspective) {
            this._projection.setIdentity();
            this._projection.setValue(0, 0, (this._frustumNear * 2.0d) / (this._frustumRight - this._frustumLeft));
            this._projection.setValue(1, 1, (this._frustumNear * 2.0d) / (this._frustumTop - this._frustumBottom));
            Matrix4 matrix44 = this._projection;
            double d16 = this._frustumRight;
            double d17 = this._frustumLeft;
            matrix44.setValue(2, 0, (d16 + d17) / (d16 - d17));
            Matrix4 matrix45 = this._projection;
            double d18 = this._frustumTop;
            double d19 = this._frustumBottom;
            matrix45.setValue(2, 1, (d18 + d19) / (d18 - d19));
            Matrix4 matrix46 = this._projection;
            double d20 = this._frustumFar;
            double d21 = this._frustumNear;
            matrix46.setValue(2, 2, (-(d20 + d21)) / (d20 - d21));
            this._projection.setValue(2, 3, -1.0d);
            Matrix4 matrix47 = this._projection;
            double d22 = this._frustumFar;
            double d23 = this._frustumNear;
            matrix47.setValue(3, 2, (-((2.0d * d22) * d23)) / (d22 - d23));
            this._projection.setValue(3, 3, -0.0d);
        }
        this._updatePMatrix = false;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._location, "location", new Vector3(Vector3.ZERO));
        outputCapsule.write(this._left, m.f88234c, new Vector3(Vector3.UNIT_X));
        outputCapsule.write(this._up, m.f88236e, new Vector3(Vector3.UNIT_Y));
        outputCapsule.write(this._direction, "direction", new Vector3(Vector3.UNIT_Z));
        outputCapsule.write(this._frustumNear, "frustumNear", 1.0d);
        outputCapsule.write(this._frustumFar, "frustumFar", 2.0d);
        outputCapsule.write(this._frustumLeft, "frustumLeft", -0.5d);
        outputCapsule.write(this._frustumRight, "frustumRight", 0.5d);
        outputCapsule.write(this._frustumTop, "frustumTop", 0.5d);
        outputCapsule.write(this._frustumBottom, "frustumBottom", -0.5d);
        outputCapsule.write(this._coeffLeft, "coeffLeft", new double[2]);
        outputCapsule.write(this._coeffRight, "coeffRight", new double[2]);
        outputCapsule.write(this._coeffBottom, "coeffBottom", new double[2]);
        outputCapsule.write(this._coeffTop, "coeffTop", new double[2]);
        outputCapsule.write(this._planeQuantity, "planeQuantity", 6);
        outputCapsule.write(this._viewPortLeft, "viewPortLeft", 0.0d);
        outputCapsule.write(this._viewPortRight, "viewPortRight", 1.0d);
        outputCapsule.write(this._viewPortTop, "viewPortTop", 1.0d);
        outputCapsule.write(this._viewPortBottom, "viewPortBottom", 0.0d);
        outputCapsule.write(this._width, "width", 0);
        outputCapsule.write(this._height, "height", 0);
        outputCapsule.write(this._depthRangeNear, "depthRangeNear", 0.0d);
        outputCapsule.write(this._depthRangeFar, "depthRangeFar", 1.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._location);
        objectOutput.writeObject(this._left);
        objectOutput.writeObject(this._up);
        objectOutput.writeObject(this._direction);
        objectOutput.writeDouble(this._frustumNear);
        objectOutput.writeDouble(this._frustumFar);
        objectOutput.writeDouble(this._frustumLeft);
        objectOutput.writeDouble(this._frustumRight);
        objectOutput.writeDouble(this._frustumTop);
        objectOutput.writeDouble(this._frustumBottom);
        objectOutput.writeObject(this._coeffLeft);
        objectOutput.writeObject(this._coeffRight);
        objectOutput.writeObject(this._coeffBottom);
        objectOutput.writeObject(this._coeffTop);
        objectOutput.writeInt(this._planeQuantity);
        objectOutput.writeDouble(this._viewPortLeft);
        objectOutput.writeDouble(this._viewPortRight);
        objectOutput.writeDouble(this._viewPortTop);
        objectOutput.writeDouble(this._viewPortBottom);
        objectOutput.writeInt(this._width);
        objectOutput.writeInt(this._height);
        objectOutput.writeDouble(this._depthRangeNear);
        objectOutput.writeDouble(this._depthRangeFar);
    }

    public Camera(int i10, int i11) {
        Vector3 vector3 = new Vector3();
        this._location = vector3;
        Vector3 vector32 = new Vector3();
        this._left = vector32;
        Vector3 vector33 = new Vector3();
        this._up = vector33;
        Vector3 vector34 = new Vector3();
        this._direction = vector34;
        this._fovY = Double.NaN;
        this._matrixBuffer = BufferUtils.createFloatBuffer(16);
        this._newDirection = new Vector3();
        this._projectionMode = ProjectionMode.Perspective;
        this._updateMVMatrix = true;
        this._updatePMatrix = true;
        this._updateMVPMatrix = true;
        this._updateInverseMVPMatrix = true;
        this._modelView = new Matrix4();
        this._projection = new Matrix4();
        this._modelViewProjection = new Matrix4();
        this._modelViewProjectionInverse = new Matrix4();
        this._transMatrix = new Matrix4();
        this._width = i10;
        this._height = i11;
        vector3.set(0.0d, 0.0d, 0.0d);
        vector32.set(1.0d, 0.0d, 0.0d);
        vector33.set(0.0d, 1.0d, 0.0d);
        vector34.set(0.0d, 0.0d, 1.0d);
        this._depthRangeNear = 0.0d;
        this._depthRangeFar = 1.0d;
        this._depthRangeDirty = true;
        this._frustumNear = 1.0d;
        this._frustumFar = 2.0d;
        this._frustumLeft = -0.5d;
        this._frustumRight = 0.5d;
        this._frustumTop = 0.5d;
        this._frustumBottom = -0.5d;
        this._coeffLeft = new double[2];
        this._coeffRight = new double[2];
        this._coeffBottom = new double[2];
        this._coeffTop = new double[2];
        this._viewPortLeft = 0.0d;
        this._viewPortRight = 1.0d;
        this._viewPortTop = 1.0d;
        this._viewPortBottom = 0.0d;
        this._planeQuantity = 6;
        this._worldPlane = new Plane[32];
        for (int i12 = 0; i12 < 32; i12++) {
            this._worldPlane[i12] = new Plane();
        }
        onFrustumChange();
        onViewPortChange();
        onFrameChange();
        _logger.fine("Camera created. W: " + i10 + "  H: " + i11);
    }

    public Vector3 getFrustumCoordinates(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        Vector3 normalizedDeviceCoordinates = getNormalizedDeviceCoordinates(readOnlyVector3, vector3);
        double x10 = normalizedDeviceCoordinates.getX() + 1.0d;
        double d10 = this._frustumRight;
        double d11 = this._frustumLeft;
        normalizedDeviceCoordinates.setX(((x10 * (d10 - d11)) / 2.0d) + d11);
        double y10 = normalizedDeviceCoordinates.getY() + 1.0d;
        double d12 = this._frustumTop;
        double d13 = this._frustumBottom;
        normalizedDeviceCoordinates.setY(((y10 * (d12 - d13)) / 2.0d) + d13);
        double z10 = normalizedDeviceCoordinates.getZ() + 1.0d;
        double d14 = this._frustumFar;
        double d15 = this._frustumNear;
        normalizedDeviceCoordinates.setZ(((z10 * (d14 - d15)) / 2.0d) + d15);
        return normalizedDeviceCoordinates;
    }

    public Vector3 getNormalizedDeviceCoordinates(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        checkModelViewProjection();
        Vector4 fetchTempInstance = Vector4.fetchTempInstance();
        fetchTempInstance.set(readOnlyVector3.getX(), readOnlyVector3.getY(), readOnlyVector3.getZ(), 1.0d);
        this._modelViewProjection.applyPre(fetchTempInstance, fetchTempInstance);
        fetchTempInstance.multiplyLocal(1.0d / fetchTempInstance.getW());
        vector3.setX(fetchTempInstance.getX());
        vector3.setY(fetchTempInstance.getY());
        vector3.setZ(fetchTempInstance.getZ());
        Vector4.releaseTempInstance(fetchTempInstance);
        return vector3;
    }

    public Vector3 getScreenCoordinates(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        Vector3 normalizedDeviceCoordinates = getNormalizedDeviceCoordinates(readOnlyVector3, vector3);
        normalizedDeviceCoordinates.setX((((normalizedDeviceCoordinates.getX() + 1.0d) * (this._viewPortRight - this._viewPortLeft)) / 2.0d) * getWidth());
        normalizedDeviceCoordinates.setY((((normalizedDeviceCoordinates.getY() + 1.0d) * (this._viewPortTop - this._viewPortBottom)) / 2.0d) * getHeight());
        normalizedDeviceCoordinates.setZ((normalizedDeviceCoordinates.getZ() + 1.0d) / 2.0d);
        return normalizedDeviceCoordinates;
    }

    public Vector3 getWorldCoordinates(ReadOnlyVector2 readOnlyVector2, double d10, Vector3 vector3) {
        Vector3 vector32 = vector3 == null ? new Vector3() : vector3;
        checkInverseModelViewProjection();
        Vector4 fetchTempInstance = Vector4.fetchTempInstance();
        double x10 = readOnlyVector2.getX() / getWidth();
        double d11 = this._viewPortLeft;
        double d12 = (((x10 - d11) / (this._viewPortRight - d11)) * 2.0d) - 1.0d;
        double y10 = readOnlyVector2.getY() / getHeight();
        double d13 = this._viewPortBottom;
        fetchTempInstance.set(d12, (((y10 - d13) / (this._viewPortTop - d13)) * 2.0d) - 1.0d, (d10 * 2.0d) - 1.0d, 1.0d);
        this._modelViewProjectionInverse.applyPre(fetchTempInstance, fetchTempInstance);
        fetchTempInstance.multiplyLocal(1.0d / fetchTempInstance.getW());
        vector32.setX(fetchTempInstance.getX());
        vector32.setY(fetchTempInstance.getY());
        vector32.setZ(fetchTempInstance.getZ());
        Vector4.releaseTempInstance(fetchTempInstance);
        return vector32;
    }

    public void lookAt(double d10, double d11, double d12, ReadOnlyVector3 readOnlyVector3) {
        this._newDirection.set(d10, d11, d12).subtractLocal(this._location).normalizeLocal();
        if (this._newDirection.equals(this._direction)) {
            return;
        }
        this._direction.set(this._newDirection);
        this._up.set(readOnlyVector3).normalizeLocal();
        Vector3 vector3 = this._up;
        ReadOnlyVector3 readOnlyVector32 = Vector3.ZERO;
        if (vector3.equals(readOnlyVector32)) {
            this._up.set(Vector3.UNIT_Y);
        }
        this._left.set(this._up).crossLocal(this._direction).normalizeLocal();
        if (this._left.equals(readOnlyVector32)) {
            if (this._direction.getX() != 0.0d) {
                this._left.set(this._direction.getY(), -this._direction.getX(), 0.0d);
            } else {
                this._left.set(0.0d, this._direction.getZ(), -this._direction.getY());
            }
        }
        this._up.set(this._direction).crossLocal(this._left).normalizeLocal();
        onFrameChange();
    }

    public void setLocation(double d10, double d11, double d12) {
        this._location.set(d10, d11, d12);
        onFrameChange();
    }

    public void setAxes(ReadOnlyMatrix3 readOnlyMatrix3) {
        readOnlyMatrix3.getColumn(0, this._left);
        readOnlyMatrix3.getColumn(1, this._up);
        readOnlyMatrix3.getColumn(2, this._direction);
        onFrameChange();
    }

    public void setFrame(ReadOnlyVector3 readOnlyVector3, ReadOnlyMatrix3 readOnlyMatrix3) {
        readOnlyMatrix3.getColumn(0, this._left);
        readOnlyMatrix3.getColumn(1, this._up);
        readOnlyMatrix3.getColumn(2, this._direction);
        this._location.set(readOnlyVector3);
        onFrameChange();
    }

    public Camera(Camera camera) {
        this._location = new Vector3();
        this._left = new Vector3();
        this._up = new Vector3();
        this._direction = new Vector3();
        this._fovY = Double.NaN;
        this._matrixBuffer = BufferUtils.createFloatBuffer(16);
        this._newDirection = new Vector3();
        this._projectionMode = ProjectionMode.Perspective;
        this._updateMVMatrix = true;
        this._updatePMatrix = true;
        this._updateMVPMatrix = true;
        this._updateInverseMVPMatrix = true;
        this._modelView = new Matrix4();
        this._projection = new Matrix4();
        this._modelViewProjection = new Matrix4();
        this._modelViewProjectionInverse = new Matrix4();
        this._transMatrix = new Matrix4();
        this._coeffLeft = new double[2];
        this._coeffRight = new double[2];
        this._coeffBottom = new double[2];
        this._coeffTop = new double[2];
        this._worldPlane = new Plane[32];
        for (int i10 = 0; i10 < 32; i10++) {
            this._worldPlane[i10] = new Plane();
        }
        set(camera);
        _logger.fine("Camera created. W: " + getWidth() + "  H: " + getHeight());
    }
}
