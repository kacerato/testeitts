package com.threed.jpct;

import android.util.FloatMath;
import java.io.Serializable;

public class Camera implements Serializable {
    public static final int CAMERA_DONT_MOVE = 7;
    public static final int CAMERA_MOVEDOWN = 3;
    public static final int CAMERA_MOVEIN = 1;
    public static final int CAMERA_MOVELEFT = 6;
    public static final int CAMERA_MOVEOUT = 2;
    public static final int CAMERA_MOVERIGHT = 5;
    public static final int CAMERA_MOVEUP = 4;
    public static final boolean DONT_SLIDE = false;
    public static final int ELLIPSOID_ALIGNED = 0;
    public static final int ELLIPSOID_TRANSFORMED = 1;
    public static final boolean SLIDE = true;
    private static final long serialVersionUID = 1;
    protected float backBx;
    protected float backBy;
    protected float backBz;
    protected Matrix backMatrix = new Matrix();
    protected Matrix lookAtTmp = null;
    private int ellipsoidMode = 0;
    private float[] workMatrix = new float[16];
    private Matrix projectionMatrix = new Matrix();
    private float cameraFOV = Config.defaultCameraFOV;
    private float yFOV = -1.0f;
    float scaleX = 1.0f;
    float scaleY = 1.0f;
    float divx = 1.0f;
    float divy = 1.0f;
    private float lowerLimit = 0.5f;
    private float higherLimit = 1.5f;

    private void frustum(float[] fArr, float f10, float f11, float f12, float f13, float f14, float f15) {
        float f16 = 1.0f / (f11 - f10);
        float f17 = 1.0f / (f13 - f12);
        float f18 = 1.0f / (f14 - f15);
        float f19 = (f11 + f10) * f16 * 2.0f;
        fArr[0] = f14 * f16 * 2.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = f14 * f17 * 2.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = f19;
        fArr[9] = (f13 + f12) * f17;
        fArr[10] = (f15 + f14) * f18;
        fArr[11] = -1.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = f15 * f14 * f18 * 2.0f;
        fArr[15] = 0.0f;
    }

    private SimpleVector getVector(int i10) {
        return getVector(i10, SimpleVector.create());
    }

    public void align(Object3D object3D) {
        Matrix cloneMatrix = object3D.getRotationMatrix().cloneMatrix();
        cloneMatrix.scalarMul(1.0f / object3D.getScale());
        this.backMatrix = cloneMatrix.invert3x3();
    }

    public void calcFOV(int i10, int i11) {
        float f10 = this.cameraFOV / 2.0f;
        if (Config.autoMaintainAspectRatio && this.yFOV == -1.0f) {
            this.divx = f10;
            this.divy = f10 * (i11 / i10);
        } else {
            this.divx = f10;
            this.divy = f10;
            float f11 = this.yFOV;
            if (f11 != -1.0f) {
                this.divy = f11 / 2.0f;
            }
        }
        float f12 = this.divx;
        this.scaleX = i10 / (f12 * 2.0f);
        float f13 = i11;
        float f14 = this.divy;
        this.scaleY = f13 / (2.0f * f14);
        if (Config.glIgnoreNearPlane) {
            return;
        }
        float f15 = Config.nearPlane;
        this.divx = f12 / f15;
        this.divy = f14 / f15;
    }

    public float convertDEGAngleIntoFOV(float f10) {
        return (float) (Math.tan(((f10 / 180.0d) * 3.141592653589793d) / 2.0d) * 2.0d);
    }

    public float convertRADAngleIntoFOV(float f10) {
        return (float) (Math.tan(f10 / 2.0d) * 2.0d);
    }

    public void decreaseFOV(float f10) {
        float f11 = this.cameraFOV - f10;
        this.cameraFOV = f11;
        float f12 = this.higherLimit;
        if (f11 > f12) {
            this.cameraFOV = f12;
            return;
        }
        float f13 = this.lowerLimit;
        if (f11 < f13) {
            this.cameraFOV = f13;
        }
    }

    public Matrix getBack() {
        return this.backMatrix;
    }

    public SimpleVector getDirection() {
        return getVector(2);
    }

    public int getEllipsoidMode() {
        return this.ellipsoidMode;
    }

    public float getFOV() {
        return this.cameraFOV;
    }

    public float getMaxFOV() {
        return this.higherLimit;
    }

    public float getMinFOV() {
        return this.lowerLimit;
    }

    public SimpleVector getPosition() {
        return SimpleVector.create(this.backBx, this.backBy, this.backBz);
    }

    public Matrix getProjectionMatrix(FrameBuffer frameBuffer) {
        return getProjectionMatrix(frameBuffer, Config.glIgnoreNearPlane ? 1.0f : Config.nearPlane, Config.farPlane);
    }

    public SimpleVector getSideVector() {
        return getVector(0);
    }

    public SimpleVector getUpVector() {
        SimpleVector vector = getVector(1);
        vector.scalarMul(-1.0f);
        return vector;
    }

    public SimpleVector getXAxis() {
        return this.backMatrix.getXAxis();
    }

    public SimpleVector getYAxis() {
        return this.backMatrix.getYAxis();
    }

    public float getYFOV() {
        return this.yFOV;
    }

    public SimpleVector getZAxis() {
        return this.backMatrix.getZAxis();
    }

    public void increaseFOV(float f10) {
        float f11 = this.cameraFOV + f10;
        this.cameraFOV = f11;
        float f12 = this.higherLimit;
        if (f11 > f12) {
            this.cameraFOV = f12;
            return;
        }
        float f13 = this.lowerLimit;
        if (f11 < f13) {
            this.cameraFOV = f13;
        }
    }

    public void lookAt(SimpleVector simpleVector) {
        if (this.lookAtTmp == null) {
            this.lookAtTmp = new Matrix();
        }
        float f10 = simpleVector.f83625x - this.backBx;
        float f11 = simpleVector.f83626y - this.backBy;
        float f12 = simpleVector.f83627z - this.backBz;
        if (f10 == 0.0f && f12 == 0.0f) {
            f10 += 1.0E-20f;
        }
        float sqrt = FloatMath.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
        if (sqrt != 0.0f) {
            f10 /= sqrt;
            f11 /= sqrt;
            f12 /= sqrt;
        }
        Matrix matrix = this.lookAtTmp;
        matrix.setIdentity();
        float[][] fArr = matrix.mat;
        float[] fArr2 = fArr[0];
        fArr2[1] = 0.0f;
        float[] fArr3 = fArr[1];
        fArr3[1] = 1.0f;
        float[] fArr4 = fArr[2];
        fArr4[1] = 0.0f;
        fArr2[2] = f10;
        fArr3[2] = f11;
        fArr4[2] = f12;
        float f13 = f11 * 0.0f;
        float f14 = (f12 * 1.0f) - f13;
        float f15 = (f10 * 0.0f) - (f12 * 0.0f);
        float f16 = f13 - (1.0f * f10);
        float sqrt2 = FloatMath.sqrt((f14 * f14) + (f15 * f15) + (f16 * f16));
        if (sqrt2 != 0.0f) {
            f14 /= sqrt2;
            f15 /= sqrt2;
            f16 /= sqrt2;
        }
        float f17 = (f11 * f16) - (f12 * f15);
        float f18 = (f12 * f14) - (f10 * f16);
        float f19 = (f10 * f15) - (f11 * f14);
        float sqrt3 = FloatMath.sqrt((f17 * f17) + (f18 * f18) + (f19 * f19));
        if (sqrt3 != 0.0f) {
            f17 /= sqrt3;
            f18 /= sqrt3;
            f19 /= sqrt3;
        }
        float[] fArr5 = fArr[0];
        fArr5[0] = f14;
        float[] fArr6 = fArr[1];
        fArr6[0] = f15;
        float[] fArr7 = fArr[2];
        fArr7[0] = f16;
        fArr5[1] = f17;
        fArr6[1] = f18;
        fArr7[1] = f19;
        matrix.orthonormalize();
        this.backMatrix.setTo(matrix);
    }

    public void moveCamera(int i10, float f10) {
        float f11 = ((i10 & 1) == 1 ? 1.0f : -1.0f) * f10;
        int i11 = 2 - (((i10 + 1) / 2) - 1);
        float f12 = this.backBx;
        float[][] fArr = this.backMatrix.mat;
        this.backBx = f12 + (fArr[0][i11] * f11);
        this.backBy += fArr[1][i11] * f11;
        this.backBz += fArr[2][i11] * f11;
    }

    public void rotateAxis(SimpleVector simpleVector, float f10) {
        this.backMatrix.rotateAxis(simpleVector, f10);
    }

    public void rotateCameraAxis(SimpleVector simpleVector, float f10) {
        this.backMatrix.rotateAxis(simpleVector, -f10);
    }

    public void rotateCameraX(float f10) {
        this.backMatrix.rotateX(-f10);
    }

    public void rotateCameraY(float f10) {
        this.backMatrix.rotateY(-f10);
    }

    public void rotateCameraZ(float f10) {
        this.backMatrix.rotateZ(-f10);
    }

    public void rotateX(float f10) {
        this.backMatrix.rotateX(f10);
    }

    public void rotateY(float f10) {
        this.backMatrix.rotateY(f10);
    }

    public void rotateZ(float f10) {
        this.backMatrix.rotateZ(f10);
    }

    public void setBack(Matrix matrix) {
        this.backMatrix = matrix;
    }

    public void setEllipsoidMode(int i10) {
        this.ellipsoidMode = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000c, code lost:
    
        if (r3 < r0) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setFOV(float f10) {
        float f11 = this.higherLimit;
        if (f10 <= f11) {
            f11 = this.lowerLimit;
        }
        f10 = f11;
        this.cameraFOV = f10;
    }

    public void setFOVLimits(float f10, float f11) {
        this.lowerLimit = f10;
        this.higherLimit = f11;
    }

    public void setFOVtoDefault() {
        this.cameraFOV = Config.defaultCameraFOV;
    }

    public void setOrientation(SimpleVector simpleVector, SimpleVector simpleVector2) {
        simpleVector2.scalarMul(-1.0f);
        this.backMatrix.setOrientation(simpleVector, simpleVector2, false);
        simpleVector2.scalarMul(-1.0f);
    }

    public void setPosition(SimpleVector simpleVector) {
        this.backBx = simpleVector.f83625x;
        this.backBy = simpleVector.f83626y;
        this.backBz = simpleVector.f83627z;
    }

    public void setPositionToCenter(Object3D object3D) {
        SimpleVector transformedCenter = object3D.getTransformedCenter();
        this.backBx = transformedCenter.f83625x;
        this.backBy = transformedCenter.f83626y;
        this.backBz = transformedCenter.f83627z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
    
        if (r3 < r0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setYFOV(float f10) {
        if (f10 != -1.0f) {
            float f11 = this.higherLimit;
            if (f10 <= f11) {
                f11 = this.lowerLimit;
            }
            f10 = f11;
        }
        this.yFOV = f10;
    }

    public SimpleVector transform(SimpleVector simpleVector) {
        Matrix matrix = this.backMatrix;
        Matrix matrix2 = new Matrix();
        float[] fArr = matrix2.mat[3];
        fArr[0] = -this.backBx;
        fArr[1] = -this.backBy;
        fArr[2] = -this.backBz;
        matrix2.matMul(matrix);
        float[][] fArr2 = matrix2.mat;
        float[] fArr3 = fArr2[2];
        float f10 = fArr3[2];
        float[] fArr4 = fArr2[1];
        float f11 = fArr4[2];
        float[] fArr5 = fArr2[0];
        float f12 = fArr5[2];
        float f13 = fArr5[0];
        float f14 = fArr4[0];
        float f15 = fArr4[1];
        float f16 = fArr3[1];
        float f17 = fArr3[0];
        float f18 = fArr5[1];
        float[] fArr6 = fArr2[3];
        float f19 = fArr6[0];
        float f20 = fArr6[1];
        float f21 = fArr6[2];
        float f22 = simpleVector.f83625x;
        float f23 = simpleVector.f83626y;
        float f24 = simpleVector.f83627z;
        return SimpleVector.create((f13 * f22) + (f14 * f23) + (f17 * f24) + f19, (f18 * f22) + (f15 * f23) + (f16 * f24) + f20, (f22 * f12) + (f23 * f11) + (f24 * f10) + f21);
    }

    private SimpleVector getVector(int i10, SimpleVector simpleVector) {
        float[][] fArr = this.backMatrix.mat;
        float f10 = fArr[0][i10];
        float f11 = fArr[1][i10];
        float f12 = fArr[2][i10];
        float sqrt = 1.0f / FloatMath.sqrt(((f10 * f10) + (f11 * f11)) + (f12 * f12));
        simpleVector.set(f10 * sqrt, f11 * sqrt, f12 * sqrt);
        return simpleVector;
    }

    public SimpleVector getDirection(SimpleVector simpleVector) {
        return getVector(2, simpleVector);
    }

    public SimpleVector getPosition(SimpleVector simpleVector) {
        simpleVector.set(this.backBx, this.backBy, this.backBz);
        return simpleVector;
    }

    public Matrix getProjectionMatrix(FrameBuffer frameBuffer, float f10, float f11) {
        int i10;
        float height = frameBuffer.getHeight();
        float width = frameBuffer.getWidth();
        Texture texture = frameBuffer.renderTarget;
        if (texture != null) {
            int i11 = frameBuffer.virtualHeight;
            if (i11 <= 0 || (i10 = frameBuffer.virtualWidth) <= 0) {
                height = texture.height;
                i10 = texture.width;
            } else {
                height = i11;
            }
            width = i10;
        }
        float fov = getFOV();
        float f12 = Config.autoMaintainAspectRatio ? (height / width) * fov : fov;
        if (getYFOV() != -1.0f) {
            f12 = getYFOV();
        }
        float f13 = fov * f10;
        float f14 = f12 * f10;
        frustum(this.workMatrix, (-f13) * 0.5f, f13 * 0.5f, (-f14) * 0.5f, f14 * 0.5f, f10, f11);
        this.projectionMatrix.setDump(this.workMatrix);
        this.projectionMatrix.transformToGL();
        return this.projectionMatrix;
    }

    public void setPosition(float f10, float f11, float f12) {
        this.backBx = f10;
        this.backBy = f11;
        this.backBz = f12;
    }

    public void moveCamera(SimpleVector simpleVector, float f10) {
        this.backBx += simpleVector.f83625x * f10;
        this.backBy += simpleVector.f83626y * f10;
        this.backBz += simpleVector.f83627z * f10;
    }
}
