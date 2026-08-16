package com.threed.jpct;

public final class Interact2D {
    private static final float VIEWPLANE_Z_VALUE = 1.0f;
    private static Matrix workMat = new Matrix();

    private Interact2D() {
    }

    public static SimpleVector project3D2D(Camera camera, FrameBuffer frameBuffer, SimpleVector simpleVector) {
        return project3D2DInternal(camera, frameBuffer, simpleVector, null, null);
    }

    private static SimpleVector project3D2DInternal(Camera camera, FrameBuffer frameBuffer, SimpleVector simpleVector, Matrix matrix, SimpleVector simpleVector2) {
        Matrix matrix2;
        Matrix matrix3 = camera.backMatrix;
        if (simpleVector2 != null) {
            matrix2 = workMat;
            matrix2.setIdentity();
        } else {
            matrix2 = new Matrix();
            simpleVector2 = SimpleVector.create();
        }
        float[] fArr = matrix2.mat[3];
        fArr[0] = -camera.backBx;
        fArr[1] = -camera.backBy;
        fArr[2] = -camera.backBz;
        if (matrix != null) {
            matrix.matMul(matrix2);
        } else {
            matrix = matrix2;
        }
        matrix.matMul(matrix3);
        float[][] fArr2 = matrix.mat;
        float[] fArr3 = fArr2[2];
        float f10 = fArr3[2];
        float[] fArr4 = fArr2[1];
        float f11 = fArr4[2];
        float[] fArr5 = fArr2[0];
        float f12 = fArr5[2];
        float[] fArr6 = fArr2[3];
        float f13 = fArr6[2];
        float f14 = simpleVector.f83625x;
        float f15 = simpleVector.f83626y;
        float f16 = simpleVector.f83627z;
        float f17 = (f12 * f14) + (f11 * f15) + (f10 * f16) + f13;
        if (f17 <= 0.0f) {
            simpleVector2.set(0.0f, 0.0f, 0.0f);
            return null;
        }
        float f18 = fArr5[0];
        float f19 = fArr4[0];
        float f20 = fArr4[1];
        float f21 = fArr3[1];
        float f22 = fArr3[0];
        float f23 = fArr5[1];
        float f24 = (f18 * f14) + (f19 * f15) + (f22 * f16) + fArr6[0];
        float f25 = (f14 * f23) + (f15 * f20) + (f16 * f21) + fArr6[1];
        float f26 = frameBuffer.middleX;
        float f27 = f26 + (f26 * 2.0f * Config.viewportOffsetX);
        float f28 = frameBuffer.middleY;
        float f29 = f28 + (2.0f * f28 * Config.viewportOffsetY);
        camera.calcFOV(frameBuffer.width, frameBuffer.height);
        float f30 = 1.0f / f17;
        simpleVector2.set((camera.scaleX * f24 * f30) + f27, (camera.scaleY * f25 * f30) + f29, f30);
        return simpleVector2;
    }

    public static SimpleVector projectCenter3D2D(FrameBuffer frameBuffer, Object3D object3D) {
        return projectCenter3D2D(null, frameBuffer, object3D);
    }

    public static SimpleVector reproject2D3D(Camera camera, FrameBuffer frameBuffer, int i10, int i11) {
        return reproject2D3D(camera, frameBuffer, i10, i11, 1.0f);
    }

    public static SimpleVector reproject2D3DBlit(float f10, float f11, FrameBuffer frameBuffer, int i10, int i11, float f12, SimpleVector simpleVector) {
        if (simpleVector == null) {
            simpleVector = new SimpleVector();
        }
        float f13 = ((i10 - frameBuffer.middleX) * f12) / f10;
        float f14 = ((i11 - frameBuffer.middleY) * f12) / f11;
        simpleVector.f83625x = f13;
        simpleVector.f83626y = f14;
        simpleVector.f83627z = f12;
        return simpleVector;
    }

    public static SimpleVector reproject2D3DWS(Camera camera, FrameBuffer frameBuffer, int i10, int i11) {
        SimpleVector reproject2D3D = reproject2D3D(camera, frameBuffer, i10, i11, 1.0f);
        workMat.setIdentity();
        reproject2D3D.matMul(camera.backMatrix.invert3x3(workMat));
        return reproject2D3D;
    }

    public static synchronized SimpleVector project3D2D(Camera camera, FrameBuffer frameBuffer, SimpleVector simpleVector, SimpleVector simpleVector2) {
        SimpleVector project3D2DInternal;
        synchronized (Interact2D.class) {
            project3D2DInternal = project3D2DInternal(camera, frameBuffer, simpleVector, null, simpleVector2);
        }
        return project3D2DInternal;
    }

    public static SimpleVector projectCenter3D2D(Camera camera, FrameBuffer frameBuffer, Object3D object3D) {
        if (camera == null && object3D.myWorld == null) {
            Logger.log("Object doesn't belong to a world!", 0);
            return new SimpleVector();
        }
        if (camera == null) {
            camera = object3D.myWorld.camera;
        }
        return project3D2DInternal(camera, frameBuffer, object3D.getCenter(), object3D.getWorldTransformation(), null);
    }

    public static SimpleVector reproject2D3D(Camera camera, FrameBuffer frameBuffer, int i10, int i11, SimpleVector simpleVector) {
        return reproject2D3D(camera, frameBuffer, i10, i11, 1.0f, simpleVector);
    }

    public static SimpleVector reproject2D3D(Camera camera, FrameBuffer frameBuffer, int i10, int i11, float f10) {
        return reproject2D3D(camera, frameBuffer, i10, i11, f10, SimpleVector.create());
    }

    public static SimpleVector reproject2D3D(Camera camera, FrameBuffer frameBuffer, int i10, int i11, float f10, SimpleVector simpleVector) {
        camera.calcFOV(frameBuffer.width, frameBuffer.height);
        float f11 = frameBuffer.middleX;
        float f12 = f11 + (f11 * 2.0f * Config.viewportOffsetX);
        float f13 = frameBuffer.middleY;
        simpleVector.set(((i10 - f12) * f10) / camera.scaleX, ((i11 - (f13 + ((2.0f * f13) * Config.viewportOffsetY))) * f10) / camera.scaleY, f10);
        return simpleVector;
    }

    public static SimpleVector reproject2D3DWS(Camera camera, FrameBuffer frameBuffer, int i10, int i11, SimpleVector simpleVector) {
        SimpleVector reproject2D3D = reproject2D3D(camera, frameBuffer, i10, i11, 1.0f, simpleVector);
        workMat.setIdentity();
        reproject2D3D.matMul(camera.backMatrix.invert3x3(workMat));
        return reproject2D3D;
    }
}
