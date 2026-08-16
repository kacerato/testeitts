package com.jme3.renderer;

import androidx.constraintlayout.motion.widget.Key;
import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingVolume;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix4f;
import com.jme3.math.Plane;
import com.jme3.math.Quaternion;
import com.jme3.math.Ray;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Camera implements Savable, Cloneable {
    private static final int BOTTOM_PLANE = 2;
    private static final int FAR_PLANE = 4;
    private static final int FRUSTUM_PLANES = 6;
    private static final int LEFT_PLANE = 0;
    private static final int MAX_WORLD_PLANES = 6;
    private static final int NEAR_PLANE = 5;
    private static final int RIGHT_PLANE = 1;
    private static final int TOP_PLANE = 3;
    private static final Logger logger = Logger.getLogger(Camera.class.getName());
    protected float[] coeffBottom;
    protected float[] coeffLeft;
    protected float[] coeffRight;
    protected float[] coeffTop;
    protected float frustumBottom;
    protected float frustumFar;
    protected float frustumLeft;
    protected float frustumNear;
    protected float frustumRight;
    protected float frustumTop;
    private BoundingBox guiBounding;
    protected int height;
    protected Vector3f location;
    protected String name;
    private boolean overrideProjection;
    private boolean parallelProjection;
    private int planeState;
    protected Matrix4f projectionMatrix;
    protected Matrix4f projectionMatrixOverride;
    protected Quaternion rotation;
    protected Matrix4f viewMatrix;
    protected float viewPortBottom;
    protected float viewPortLeft;
    protected float viewPortRight;
    protected float viewPortTop;
    protected Matrix4f viewProjectionMatrix;
    protected boolean viewportChanged;
    protected int width;
    protected Plane[] worldPlane;

    public enum FrustumIntersect {
        Outside,
        Inside,
        Intersects
    }

    public Camera() {
        this.viewportChanged = true;
        this.parallelProjection = true;
        this.projectionMatrixOverride = new Matrix4f();
        this.viewMatrix = new Matrix4f();
        this.projectionMatrix = new Matrix4f();
        this.viewProjectionMatrix = new Matrix4f();
        this.guiBounding = new BoundingBox();
        this.worldPlane = new Plane[6];
        for (int i10 = 0; i10 < 6; i10++) {
            this.worldPlane[i10] = new Plane();
        }
    }

    private void setGuiBounding() {
        int i10 = this.width;
        float f10 = i10 * this.viewPortLeft;
        float f11 = i10 * this.viewPortRight;
        int i11 = this.height;
        float f12 = i11 * this.viewPortBottom;
        float f13 = i11 * this.viewPortTop;
        float max = Math.max(0.0f, (f11 - f10) / 2.0f);
        float max2 = Math.max(0.0f, (f13 - f12) / 2.0f);
        this.guiBounding.setCenter(f10 + max, f12 + max2, 0.0f);
        this.guiBounding.setXExtent(max);
        this.guiBounding.setYExtent(max2);
        this.guiBounding.setZExtent(Float.MAX_VALUE);
    }

    public void clearViewportChanged() {
        this.viewportChanged = false;
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
                if ((this.planeState & i11) != 0) {
                    continue;
                } else {
                    Plane.Side whichSide = boundingVolume.whichSide(this.worldPlane[checkPlane]);
                    if (whichSide == Plane.Side.Negative) {
                        boundingVolume.setCheckPlane(checkPlane);
                        return FrustumIntersect.Outside;
                    }
                    if (whichSide == Plane.Side.Positive) {
                        this.planeState |= i11;
                    } else {
                        frustumIntersect = FrustumIntersect.Intersects;
                    }
                }
            }
            i10--;
        }
        return frustumIntersect;
    }

    public boolean containsGui(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return true;
        }
        return this.guiBounding.intersects(boundingVolume);
    }

    public void copyFrom(Camera camera) {
        this.location.set(camera.location);
        this.rotation.set(camera.rotation);
        this.frustumNear = camera.frustumNear;
        this.frustumFar = camera.frustumFar;
        this.frustumLeft = camera.frustumLeft;
        this.frustumRight = camera.frustumRight;
        this.frustumTop = camera.frustumTop;
        this.frustumBottom = camera.frustumBottom;
        float[] fArr = this.coeffLeft;
        float[] fArr2 = camera.coeffLeft;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        float[] fArr3 = this.coeffRight;
        float[] fArr4 = camera.coeffRight;
        fArr3[0] = fArr4[0];
        fArr3[1] = fArr4[1];
        float[] fArr5 = this.coeffBottom;
        float[] fArr6 = camera.coeffBottom;
        fArr5[0] = fArr6[0];
        fArr5[1] = fArr6[1];
        float[] fArr7 = this.coeffTop;
        float[] fArr8 = camera.coeffTop;
        fArr7[0] = fArr8[0];
        fArr7[1] = fArr8[1];
        this.viewPortLeft = camera.viewPortLeft;
        this.viewPortRight = camera.viewPortRight;
        this.viewPortTop = camera.viewPortTop;
        this.viewPortBottom = camera.viewPortBottom;
        this.width = camera.width;
        this.height = camera.height;
        this.planeState = 0;
        this.viewportChanged = true;
        for (int i10 = 0; i10 < 6; i10++) {
            this.worldPlane[i10].setNormal(camera.worldPlane[i10].getNormal());
            this.worldPlane[i10].setConstant(camera.worldPlane[i10].getConstant());
        }
        this.parallelProjection = camera.parallelProjection;
        this.overrideProjection = camera.overrideProjection;
        this.projectionMatrixOverride.set(camera.projectionMatrixOverride);
        this.viewMatrix.set(camera.viewMatrix);
        this.projectionMatrix.set(camera.projectionMatrix);
        this.viewProjectionMatrix.set(camera.viewProjectionMatrix);
        this.guiBounding.setXExtent(camera.guiBounding.getXExtent());
        this.guiBounding.setYExtent(camera.guiBounding.getYExtent());
        this.guiBounding.setZExtent(camera.guiBounding.getZExtent());
        this.guiBounding.setCenter(camera.guiBounding.getCenter());
        this.guiBounding.setCheckPlane(camera.guiBounding.getCheckPlane());
        this.name = camera.name;
    }

    public float distanceToNearPlane(Vector3f vector3f) {
        return this.worldPlane[5].pseudoDistance(vector3f);
    }

    public float getAspect() {
        return (this.width * (this.viewPortRight - this.viewPortLeft)) / (this.height * (this.viewPortTop - this.viewPortBottom));
    }

    public Vector3f getDirection() {
        return this.rotation.getRotationColumn(2);
    }

    public float getFov() {
        if (this.parallelProjection) {
            return 0.0f;
        }
        return FastMath.atan(this.frustumTop / this.frustumNear) / 0.008726646f;
    }

    public float getFrustumBottom() {
        return this.frustumBottom;
    }

    public float getFrustumFar() {
        return this.frustumFar;
    }

    public float getFrustumLeft() {
        return this.frustumLeft;
    }

    public float getFrustumNear() {
        return this.frustumNear;
    }

    public float getFrustumRight() {
        return this.frustumRight;
    }

    public float getFrustumTop() {
        return this.frustumTop;
    }

    public int getHeight() {
        return this.height;
    }

    public Vector3f getLeft() {
        return this.rotation.getRotationColumn(0);
    }

    public Vector3f getLocation() {
        return this.location;
    }

    public String getName() {
        return this.name;
    }

    public int getPlaneState() {
        return this.planeState;
    }

    public Matrix4f getProjectionMatrix() {
        return this.overrideProjection ? this.projectionMatrixOverride : this.projectionMatrix;
    }

    public Quaternion getRotation() {
        return this.rotation;
    }

    public Vector3f getScreenCoordinates(Vector3f vector3f) {
        return getScreenCoordinates(vector3f, null);
    }

    public Vector3f getUp() {
        return this.rotation.getRotationColumn(1);
    }

    public Matrix4f getViewMatrix() {
        return this.viewMatrix;
    }

    public float getViewPortBottom() {
        return this.viewPortBottom;
    }

    public float getViewPortLeft() {
        return this.viewPortLeft;
    }

    public float getViewPortRight() {
        return this.viewPortRight;
    }

    public float getViewPortTop() {
        return this.viewPortTop;
    }

    public Matrix4f getViewProjectionMatrix() {
        return this.viewProjectionMatrix;
    }

    public float getViewToProjectionZ(float f10) {
        float frustumFar = getFrustumFar();
        float frustumNear = getFrustumNear();
        return (frustumFar / (frustumFar - frustumNear)) + (((frustumFar * frustumNear) / (frustumNear - frustumFar)) / f10);
    }

    public int getWidth() {
        return this.width;
    }

    public Vector3f getWorldCoordinates(Vector2f vector2f, float f10) {
        return getWorldCoordinates(vector2f, f10, null);
    }

    public Plane getWorldPlane(int i10) {
        return this.worldPlane[i10];
    }

    public boolean isParallelProjection() {
        return this.parallelProjection;
    }

    public boolean isViewportChanged() {
        return this.viewportChanged;
    }

    public void lookAt(Vector3f vector3f, Vector3f vector3f2) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f3 = tempVars.vect1;
        Vector3f vector3f4 = tempVars.vect2;
        Vector3f vector3f5 = tempVars.vect3;
        vector3f3.set(vector3f).subtractLocal(this.location).normalizeLocal();
        vector3f4.set(vector3f2).normalizeLocal();
        Vector3f vector3f6 = Vector3f.ZERO;
        if (vector3f4.equals(vector3f6)) {
            vector3f4.set(Vector3f.UNIT_Y);
        }
        vector3f5.set(vector3f4).crossLocal(vector3f3).normalizeLocal();
        if (vector3f5.equals(vector3f6)) {
            float f10 = vector3f3.f81611x;
            if (f10 != 0.0f) {
                vector3f5.set(vector3f3.f81612y, -f10, 0.0f);
            } else {
                vector3f5.set(0.0f, vector3f3.f81613z, -vector3f3.f81612y);
            }
        }
        vector3f4.set(vector3f3).crossLocal(vector3f5).normalizeLocal();
        this.rotation.fromAxes(vector3f5, vector3f4, vector3f3);
        this.rotation.normalizeLocal();
        tempVars.release();
        onFrameChange();
    }

    public void lookAtDirection(Vector3f vector3f, Vector3f vector3f2) {
        this.rotation.lookAt(vector3f, vector3f2);
        onFrameChange();
    }

    public void normalize() {
        this.rotation.normalizeLocal();
        onFrameChange();
    }

    public void onFrameChange() {
        TempVars tempVars = TempVars.get();
        Vector3f left = getLeft(tempVars.vect1);
        Vector3f direction = getDirection(tempVars.vect2);
        Vector3f up = getUp(tempVars.vect3);
        float dot = direction.dot(this.location);
        Vector3f normal = this.worldPlane[0].getNormal();
        float f10 = left.f81611x;
        float[] fArr = this.coeffLeft;
        float f11 = fArr[0];
        normal.f81611x = f10 * f11;
        normal.f81612y = left.f81612y * f11;
        normal.f81613z = left.f81613z * f11;
        float f12 = direction.f81611x;
        float f13 = fArr[1];
        normal.addLocal(f12 * f13, direction.f81612y * f13, direction.f81613z * f13);
        this.worldPlane[0].setConstant(this.location.dot(normal));
        Vector3f normal2 = this.worldPlane[1].getNormal();
        float f14 = left.f81611x;
        float[] fArr2 = this.coeffRight;
        float f15 = fArr2[0];
        normal2.f81611x = f14 * f15;
        normal2.f81612y = left.f81612y * f15;
        normal2.f81613z = left.f81613z * f15;
        float f16 = direction.f81611x;
        float f17 = fArr2[1];
        normal2.addLocal(f16 * f17, direction.f81612y * f17, direction.f81613z * f17);
        this.worldPlane[1].setConstant(this.location.dot(normal2));
        Vector3f normal3 = this.worldPlane[2].getNormal();
        float f18 = up.f81611x;
        float[] fArr3 = this.coeffBottom;
        float f19 = fArr3[0];
        normal3.f81611x = f18 * f19;
        normal3.f81612y = up.f81612y * f19;
        normal3.f81613z = up.f81613z * f19;
        float f20 = direction.f81611x;
        float f21 = fArr3[1];
        normal3.addLocal(f20 * f21, direction.f81612y * f21, direction.f81613z * f21);
        this.worldPlane[2].setConstant(this.location.dot(normal3));
        Vector3f normal4 = this.worldPlane[3].getNormal();
        float f22 = up.f81611x;
        float[] fArr4 = this.coeffTop;
        float f23 = fArr4[0];
        normal4.f81611x = f22 * f23;
        normal4.f81612y = up.f81612y * f23;
        normal4.f81613z = up.f81613z * f23;
        float f24 = direction.f81611x;
        float f25 = fArr4[1];
        normal4.addLocal(f24 * f25, direction.f81612y * f25, direction.f81613z * f25);
        this.worldPlane[3].setConstant(this.location.dot(normal4));
        if (isParallelProjection()) {
            Plane plane = this.worldPlane[0];
            plane.setConstant(plane.getConstant() + this.frustumLeft);
            Plane plane2 = this.worldPlane[1];
            plane2.setConstant(plane2.getConstant() - this.frustumRight);
            Plane plane3 = this.worldPlane[3];
            plane3.setConstant(plane3.getConstant() - this.frustumTop);
            Plane plane4 = this.worldPlane[2];
            plane4.setConstant(plane4.getConstant() + this.frustumBottom);
        }
        this.worldPlane[4].setNormal(left);
        this.worldPlane[4].setNormal(-direction.f81611x, -direction.f81612y, -direction.f81613z);
        this.worldPlane[4].setConstant(-(this.frustumFar + dot));
        this.worldPlane[5].setNormal(direction.f81611x, direction.f81612y, direction.f81613z);
        this.worldPlane[5].setConstant(dot + this.frustumNear);
        this.viewMatrix.fromFrame(this.location, direction, up, left);
        tempVars.release();
        updateViewProjection();
    }

    public void onFrustumChange() {
        if (isParallelProjection()) {
            float[] fArr = this.coeffLeft;
            fArr[0] = -1.0f;
            fArr[1] = 0.0f;
            float[] fArr2 = this.coeffRight;
            fArr2[0] = 1.0f;
            fArr2[1] = 0.0f;
            float[] fArr3 = this.coeffBottom;
            fArr3[0] = 1.0f;
            fArr3[1] = 0.0f;
            float[] fArr4 = this.coeffTop;
            fArr4[0] = -1.0f;
            fArr4[1] = 0.0f;
        } else {
            float f10 = this.frustumNear;
            float f11 = f10 * f10;
            float f12 = this.frustumLeft;
            float f13 = this.frustumRight;
            float f14 = this.frustumBottom;
            float f15 = this.frustumTop;
            float invSqrt = FastMath.invSqrt((f12 * f12) + f11);
            float[] fArr5 = this.coeffLeft;
            fArr5[0] = (-this.frustumNear) * invSqrt;
            fArr5[1] = (-this.frustumLeft) * invSqrt;
            float invSqrt2 = FastMath.invSqrt((f13 * f13) + f11);
            float[] fArr6 = this.coeffRight;
            fArr6[0] = this.frustumNear * invSqrt2;
            fArr6[1] = this.frustumRight * invSqrt2;
            float invSqrt3 = FastMath.invSqrt((f14 * f14) + f11);
            float[] fArr7 = this.coeffBottom;
            fArr7[0] = this.frustumNear * invSqrt3;
            fArr7[1] = (-this.frustumBottom) * invSqrt3;
            float invSqrt4 = FastMath.invSqrt(f11 + (f15 * f15));
            float[] fArr8 = this.coeffTop;
            fArr8[0] = (-this.frustumNear) * invSqrt4;
            fArr8[1] = this.frustumTop * invSqrt4;
        }
        this.projectionMatrix.fromFrustum(this.frustumNear, this.frustumFar, this.frustumLeft, this.frustumRight, this.frustumTop, this.frustumBottom, this.parallelProjection);
        onFrameChange();
    }

    public void onViewPortChange() {
        if (this.viewPortBottom >= this.viewPortTop) {
            throw new IllegalArgumentException("Viewport must have bottom < top");
        }
        if (this.viewPortLeft >= this.viewPortRight) {
            throw new IllegalArgumentException("Viewport must have left < right");
        }
        this.viewportChanged = true;
        setGuiBounding();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.location = (Vector3f) capsule.readSavable("location", Vector3f.ZERO.m1292clone());
        this.rotation = (Quaternion) capsule.readSavable(Key.ROTATION, Quaternion.DIRECTION_Z.m1285clone());
        this.frustumNear = capsule.readFloat("frustumNear", 1.0f);
        this.frustumFar = capsule.readFloat("frustumFar", 2.0f);
        this.frustumLeft = capsule.readFloat("frustumLeft", -0.5f);
        this.frustumRight = capsule.readFloat("frustumRight", 0.5f);
        this.frustumTop = capsule.readFloat("frustumTop", 0.5f);
        this.frustumBottom = capsule.readFloat("frustumBottom", -0.5f);
        this.coeffLeft = capsule.readFloatArray("coeffLeft", new float[2]);
        this.coeffRight = capsule.readFloatArray("coeffRight", new float[2]);
        this.coeffBottom = capsule.readFloatArray("coeffBottom", new float[2]);
        this.coeffTop = capsule.readFloatArray("coeffTop", new float[2]);
        this.viewPortLeft = capsule.readFloat("viewPortLeft", 0.0f);
        this.viewPortRight = capsule.readFloat("viewPortRight", 1.0f);
        this.viewPortTop = capsule.readFloat("viewPortTop", 1.0f);
        this.viewPortBottom = capsule.readFloat("viewPortBottom", 0.0f);
        this.width = capsule.readInt("width", 1);
        this.height = capsule.readInt("height", 1);
        this.name = capsule.readString("name", null);
        onFrustumChange();
        onViewPortChange();
        onFrameChange();
    }

    public void resize(int i10, int i11, boolean z10) {
        this.width = i10;
        this.height = i11;
        onViewPortChange();
        if (z10) {
            float f10 = this.frustumTop * ((i10 * (this.viewPortRight - this.viewPortLeft)) / (i11 * (this.viewPortTop - this.viewPortBottom)));
            this.frustumRight = f10;
            this.frustumLeft = -f10;
            onFrustumChange();
        }
    }

    public Ray screenPointToRay(Vector2f vector2f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        getWorldCoordinates(vector2f, 0.0f, vector3f);
        getWorldCoordinates(vector2f, 1.0f, vector3f2);
        Ray ray = new Ray(vector3f, vector3f2.subtractLocal(vector3f).normalizeLocal());
        tempVars.release();
        return ray;
    }

    public void setAxes(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        this.rotation.fromAxes(vector3f, vector3f2, vector3f3);
        onFrameChange();
    }

    public void setClipPlane(Plane plane, Plane.Side side) {
        float f10 = side == Plane.Side.Negative ? -1.0f : 1.0f;
        if (plane.whichSide(this.location) == side) {
            return;
        }
        TempVars tempVars = TempVars.get();
        try {
            Matrix4f matrix4f = this.projectionMatrixOverride.set(this.projectionMatrix);
            Matrix4f matrix4f2 = this.viewMatrix;
            Vector3f mult = matrix4f2.mult(plane.getNormal().mult(plane.getConstant(), tempVars.vect1), tempVars.vect2);
            Vector3f multNormal = matrix4f2.multNormal(plane.getNormal(), tempVars.vect3);
            Vector4f vector4f = tempVars.vect4f1.set(multNormal.f81611x * f10, multNormal.f81612y * f10, multNormal.f81613z * f10, (-mult.dot(multNormal)) * f10);
            Vector4f vector4f2 = tempVars.vect4f2.set(0.0f, 0.0f, 0.0f, 0.0f);
            vector4f2.f81615x = (Math.signum(vector4f.f81615x) + matrix4f.m02) / matrix4f.m00;
            vector4f2.f81616y = (Math.signum(vector4f.f81616y) + matrix4f.m12) / matrix4f.m11;
            vector4f2.f81617z = -1.0f;
            vector4f2.f81614w = (matrix4f.m22 + 1.0f) / matrix4f.m23;
            Vector4f multLocal = vector4f.multLocal(2.0f / vector4f.dot(vector4f2));
            matrix4f.m20 = multLocal.f81615x - matrix4f.m30;
            matrix4f.m21 = multLocal.f81616y - matrix4f.m31;
            matrix4f.m22 = multLocal.f81617z - matrix4f.m32;
            matrix4f.m23 = multLocal.f81614w - matrix4f.m33;
            setProjectionMatrix(matrix4f);
        } finally {
            tempVars.release();
        }
    }

    public void setFov(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Field of view must be greater than 0");
        }
        if (this.parallelProjection) {
            throw new IllegalArgumentException("Cannot set field of view on orthogonal camera");
        }
        float tan = FastMath.tan(f10 * 0.017453292f * 0.5f) * this.frustumNear;
        float aspect = getAspect() * tan;
        this.frustumLeft = -aspect;
        this.frustumRight = aspect;
        this.frustumBottom = -tan;
        this.frustumTop = tan;
        onFrustumChange();
    }

    public void setFrame(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        this.location = vector3f;
        this.rotation.fromAxes(vector3f2, vector3f3, vector3f4);
        onFrameChange();
    }

    public void setFrustum(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.frustumNear = f10;
        this.frustumFar = f11;
        this.frustumLeft = f12;
        this.frustumRight = f13;
        this.frustumTop = f14;
        this.frustumBottom = f15;
        onFrustumChange();
    }

    public void setFrustumBottom(float f10) {
        this.frustumBottom = f10;
        onFrustumChange();
    }

    public void setFrustumFar(float f10) {
        this.frustumFar = f10;
        onFrustumChange();
    }

    public void setFrustumLeft(float f10) {
        this.frustumLeft = f10;
        onFrustumChange();
    }

    public void setFrustumNear(float f10) {
        this.frustumNear = f10;
        onFrustumChange();
    }

    public void setFrustumPerspective(float f10, float f11, float f12, float f13) {
        if (Float.isNaN(f11) || Float.isInfinite(f11)) {
            logger.log(Level.WARNING, "Invalid aspect given to setFrustumPerspective: {0}", Float.valueOf(f11));
            return;
        }
        float tan = FastMath.tan(f10 * 0.017453292f * 0.5f) * f12;
        float f14 = f11 * tan;
        this.frustumLeft = -f14;
        this.frustumRight = f14;
        this.frustumBottom = -tan;
        this.frustumTop = tan;
        this.frustumNear = f12;
        this.frustumFar = f13;
        this.parallelProjection = false;
        onFrustumChange();
    }

    public void setFrustumRight(float f10) {
        this.frustumRight = f10;
        onFrustumChange();
    }

    public void setFrustumTop(float f10) {
        this.frustumTop = f10;
        onFrustumChange();
    }

    public void setLocation(Vector3f vector3f) {
        this.location.set(vector3f);
        onFrameChange();
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setParallelProjection(boolean z10) {
        this.parallelProjection = z10;
        onFrustumChange();
    }

    public void setPlaneState(int i10) {
        this.planeState = i10;
    }

    public void setProjectionMatrix(Matrix4f matrix4f) {
        if (matrix4f == null) {
            this.overrideProjection = false;
            this.projectionMatrixOverride.loadIdentity();
        } else {
            this.overrideProjection = true;
            this.projectionMatrixOverride.set(matrix4f);
        }
        updateViewProjection();
    }

    public void setRotation(Quaternion quaternion) {
        this.rotation.set(quaternion);
        onFrameChange();
    }

    public void setViewPort(float f10, float f11, float f12, float f13) {
        this.viewPortLeft = f10;
        this.viewPortRight = f11;
        this.viewPortBottom = f12;
        this.viewPortTop = f13;
        onViewPortChange();
    }

    public void setViewPortBottom(float f10) {
        this.viewPortBottom = f10;
        onViewPortChange();
    }

    public void setViewPortLeft(float f10) {
        this.viewPortLeft = f10;
        onViewPortChange();
    }

    public void setViewPortRight(float f10) {
        this.viewPortRight = f10;
        onViewPortChange();
    }

    public void setViewPortTop(float f10) {
        this.viewPortTop = f10;
        onViewPortChange();
    }

    public String toString() {
        return "Camera[location=" + ((Object) this.location) + "\ndirection=" + ((Object) getDirection()) + "\nres=" + this.width + "x" + this.height + ", parallel=" + this.parallelProjection + "\nnear=" + this.frustumNear + ", far=" + this.frustumFar + "]";
    }

    public void update() {
        onFrustumChange();
        onViewPortChange();
    }

    public void updateViewProjection() {
        if (this.overrideProjection) {
            this.viewProjectionMatrix.set(this.projectionMatrixOverride).multLocal(this.viewMatrix);
        } else {
            this.viewProjectionMatrix.set(this.projectionMatrix).multLocal(this.viewMatrix);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.location, "location", Vector3f.ZERO);
        capsule.write(this.rotation, Key.ROTATION, Quaternion.DIRECTION_Z);
        capsule.write(this.frustumNear, "frustumNear", 1.0f);
        capsule.write(this.frustumFar, "frustumFar", 2.0f);
        capsule.write(this.frustumLeft, "frustumLeft", -0.5f);
        capsule.write(this.frustumRight, "frustumRight", 0.5f);
        capsule.write(this.frustumTop, "frustumTop", 0.5f);
        capsule.write(this.frustumBottom, "frustumBottom", -0.5f);
        capsule.write(this.coeffLeft, "coeffLeft", new float[2]);
        capsule.write(this.coeffRight, "coeffRight", new float[2]);
        capsule.write(this.coeffBottom, "coeffBottom", new float[2]);
        capsule.write(this.coeffTop, "coeffTop", new float[2]);
        capsule.write(this.viewPortLeft, "viewPortLeft", 0.0f);
        capsule.write(this.viewPortRight, "viewPortRight", 1.0f);
        capsule.write(this.viewPortTop, "viewPortTop", 1.0f);
        capsule.write(this.viewPortBottom, "viewPortBottom", 0.0f);
        capsule.write(this.width, "width", 0);
        capsule.write(this.height, "height", 0);
        capsule.write(this.name, "name", (String) null);
    }

    public Camera m1294clone() {
        try {
            Camera camera = (Camera) super.clone();
            camera.viewportChanged = true;
            int i10 = 0;
            camera.planeState = 0;
            camera.worldPlane = new Plane[6];
            while (true) {
                Plane[] planeArr = this.worldPlane;
                if (i10 >= planeArr.length) {
                    break;
                }
                camera.worldPlane[i10] = planeArr[i10].m1284clone();
                i10++;
            }
            camera.coeffLeft = new float[2];
            camera.coeffRight = new float[2];
            camera.coeffBottom = new float[2];
            camera.coeffTop = new float[2];
            camera.location = this.location.m1292clone();
            camera.rotation = this.rotation.m1285clone();
            Matrix4f matrix4f = this.projectionMatrixOverride;
            if (matrix4f != null) {
                camera.projectionMatrixOverride = matrix4f.m1283clone();
            }
            camera.viewMatrix = this.viewMatrix.m1283clone();
            camera.projectionMatrix = this.projectionMatrix.m1283clone();
            camera.viewProjectionMatrix = this.viewProjectionMatrix.m1283clone();
            camera.guiBounding = (BoundingBox) this.guiBounding.m1264clone();
            camera.update();
            return camera;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector3f getDirection(Vector3f vector3f) {
        return this.rotation.getRotationColumn(2, vector3f);
    }

    public Vector3f getLeft(Vector3f vector3f) {
        return this.rotation.getRotationColumn(0, vector3f);
    }

    public Vector3f getScreenCoordinates(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        vector3f2.divideLocal(this.viewProjectionMatrix.multProj(vector3f, vector3f2));
        float f10 = vector3f2.f81611x + 1.0f;
        float f11 = this.viewPortRight;
        float f12 = this.viewPortLeft;
        vector3f2.f81611x = (((f10 * (f11 - f12)) / 2.0f) + f12) * getWidth();
        float f13 = vector3f2.f81612y + 1.0f;
        float f14 = this.viewPortTop;
        float f15 = this.viewPortBottom;
        vector3f2.f81612y = (((f13 * (f14 - f15)) / 2.0f) + f15) * getHeight();
        vector3f2.f81613z = (vector3f2.f81613z + 1.0f) / 2.0f;
        return vector3f2;
    }

    public Vector3f getUp(Vector3f vector3f) {
        return this.rotation.getRotationColumn(1, vector3f);
    }

    public Vector3f getWorldCoordinates(Vector2f vector2f, float f10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        Matrix4f matrix4f = new Matrix4f(this.viewProjectionMatrix);
        matrix4f.invertLocal();
        float width = vector2f.f81609x / getWidth();
        float f11 = this.viewPortLeft;
        float f12 = (((width - f11) / (this.viewPortRight - f11)) * 2.0f) - 1.0f;
        float height = vector2f.f81610y / getHeight();
        float f13 = this.viewPortBottom;
        vector3f.set(f12, (((height - f13) / (this.viewPortTop - f13)) * 2.0f) - 1.0f, (f10 * 2.0f) - 1.0f);
        vector3f.multLocal(1.0f / matrix4f.multProj(vector3f, vector3f));
        return vector3f;
    }

    public void setAxes(Quaternion quaternion) {
        this.rotation.set(quaternion);
        onFrameChange();
    }

    public void setFrame(Vector3f vector3f, Quaternion quaternion) {
        this.location = vector3f;
        this.rotation.set(quaternion);
        onFrameChange();
    }

    public Camera(int i10, int i11) {
        this();
        this.location = new Vector3f();
        this.rotation = new Quaternion();
        this.frustumNear = 1.0f;
        this.frustumFar = 2.0f;
        this.frustumLeft = -0.5f;
        this.frustumRight = 0.5f;
        this.frustumTop = 0.5f;
        this.frustumBottom = -0.5f;
        this.coeffLeft = new float[2];
        this.coeffRight = new float[2];
        this.coeffBottom = new float[2];
        this.coeffTop = new float[2];
        this.viewPortLeft = 0.0f;
        this.viewPortRight = 1.0f;
        this.viewPortTop = 1.0f;
        this.viewPortBottom = 0.0f;
        this.width = i10;
        this.height = i11;
        onFrustumChange();
        onViewPortChange();
        onFrameChange();
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Camera created (W: {0}, H: {1})", new Object[]{Integer.valueOf(i10), Integer.valueOf(i11)});
        }
    }

    public void setClipPlane(Plane plane) {
        setClipPlane(plane, plane.whichSide(this.location));
    }
}
