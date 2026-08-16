package com.threed.jpct;

import java.io.Serializable;

public class Lights implements Serializable {
    private static final String ERROR_MESSAGE = "Tried to modify a nonexistent light-source!";
    private static final long serialVersionUID = -9015402026145033787L;
    float[] attenuation;
    float[] bOrg;
    float[] discardDistance;
    float[] distanceOverride;
    float[] gOrg;
    boolean[] isVisible;
    int maxLights;
    float[] rOrg;
    Matrix[] transform;
    float[] xOrg;
    float[] xTr;
    float[] yOrg;
    float[] yTr;
    float[] zOrg;
    float[] zTr;
    private Matrix mat5 = new Matrix();
    int rgbScale = 1;
    int lightCnt = 0;

    public Lights(int i10) {
        this.maxLights = i10;
        this.xOrg = new float[i10];
        this.yOrg = new float[i10];
        this.zOrg = new float[i10];
        this.xTr = new float[i10];
        this.yTr = new float[i10];
        this.zTr = new float[i10];
        this.bOrg = new float[i10];
        this.gOrg = new float[i10];
        this.rOrg = new float[i10];
        this.transform = new Matrix[i10];
        this.isVisible = new boolean[i10];
        this.attenuation = new float[i10];
        this.discardDistance = new float[i10];
        this.distanceOverride = new float[i10];
        for (int i11 = 0; i11 < this.maxLights; i11++) {
            this.attenuation[i11] = -2.0f;
            this.discardDistance[i11] = -2.0f;
            this.distanceOverride[i11] = -1.0f;
        }
    }

    private boolean isFine(int i10) {
        if (i10 < this.lightCnt) {
            return true;
        }
        logError();
        return false;
    }

    private void logError() {
        Logger.log(ERROR_MESSAGE, 0);
    }

    public int addLight(float f10, float f11, float f12, float f13, float f14, float f15) {
        int i10 = this.lightCnt;
        if (i10 < this.maxLights) {
            this.xOrg[i10] = f10;
            this.yOrg[i10] = f11;
            this.zOrg[i10] = f12;
            this.rOrg[i10] = f13;
            this.gOrg[i10] = f14;
            this.bOrg[i10] = f15;
            this.isVisible[i10] = true;
            this.transform[i10] = new Matrix();
            Logger.log("Adding Lightsource: " + this.lightCnt, 2);
            this.lightCnt = this.lightCnt + 1;
        } else {
            Logger.log("Maximum number of Lightsources reached...ignoring additional ones!", 1);
        }
        return this.lightCnt - 1;
    }

    public float getAttenuation(int i10) {
        if (isFine(i10)) {
            return this.attenuation[i10];
        }
        return 0.0f;
    }

    public float getDiscardDistance(int i10) {
        if (isFine(i10)) {
            return this.discardDistance[i10];
        }
        return 0.0f;
    }

    public float getDistanceOverride(int i10) {
        return this.distanceOverride[i10];
    }

    public SimpleVector getIntensity(int i10) {
        return !isFine(i10) ? SimpleVector.create() : SimpleVector.create(this.rOrg[i10], this.gOrg[i10], this.bOrg[i10]);
    }

    public SimpleVector getPosition(int i10, SimpleVector simpleVector) {
        if (isFine(i10)) {
            simpleVector.f83627z = this.zOrg[i10];
            simpleVector.f83625x = this.xOrg[i10];
            simpleVector.f83626y = this.yOrg[i10];
        }
        return simpleVector;
    }

    public void setAttenuation(int i10, float f10) {
        if (isFine(i10)) {
            if (f10 < -1.0f) {
                f10 = -1.0f;
            }
            if (f10 == 0.0f) {
                f10 = 1.0f;
            }
            this.attenuation[i10] = f10;
        }
    }

    public void setDiscardDistance(int i10, float f10) {
        if (isFine(i10)) {
            if (f10 < -1.0f) {
                f10 = -2.0f;
            }
            this.discardDistance[i10] = f10;
        }
    }

    public void setDistanceOverride(int i10, float f10) {
        if (isFine(i10)) {
            this.distanceOverride[i10] = f10;
        }
    }

    public void setLightIntensity(int i10, float f10, float f11, float f12) {
        if (isFine(i10)) {
            this.rOrg[i10] = f10;
            this.gOrg[i10] = f11;
            this.bOrg[i10] = f12;
        }
    }

    public void setPosition(int i10, float f10, float f11, float f12) {
        if (isFine(i10)) {
            this.zOrg[i10] = f12;
            this.xOrg[i10] = f10;
            this.yOrg[i10] = f11;
        }
    }

    public void setRGBScale(int i10) {
        if (i10 > 0 && i10 < 5 && i10 != 3) {
            this.rgbScale = i10;
            return;
        }
        Logger.log("This RGB scaling (" + i10 + ") is not supported!", 1);
    }

    public void setVisibility(int i10, boolean z10) {
        if (isFine(i10)) {
            this.isVisible[i10] = z10;
        }
    }

    public void transformLights(Camera camera) {
        Matrix matrix;
        Camera camera2 = camera;
        Matrix matrix2 = camera2.backMatrix;
        char c10 = 0;
        int i10 = 0;
        while (i10 < this.lightCnt) {
            if (this.isVisible[i10]) {
                this.mat5.setIdentity();
                this.mat5.translate(-camera2.backBx, -camera2.backBy, -camera2.backBz);
                this.mat5.matMul(matrix2);
                float[][] fArr = this.mat5.mat;
                float[] fArr2 = fArr[c10];
                float f10 = fArr2[c10];
                float[] fArr3 = fArr[1];
                float f11 = fArr3[c10];
                float f12 = fArr3[1];
                float[] fArr4 = fArr[2];
                float f13 = fArr4[1];
                float f14 = fArr4[2];
                float f15 = fArr3[2];
                float f16 = fArr4[c10];
                float f17 = fArr2[2];
                float f18 = fArr2[1];
                float[] fArr5 = fArr[3];
                float f19 = fArr5[c10];
                float f20 = fArr5[1];
                float f21 = fArr5[2];
                float f22 = this.xOrg[i10];
                float f23 = this.yOrg[i10];
                float f24 = this.zOrg[i10];
                matrix = matrix2;
                this.xTr[i10] = (f10 * f22) + (f11 * f23) + (f16 * f24) + f19;
                this.yTr[i10] = (f18 * f22) + (f12 * f23) + (f13 * f24) + f20;
                this.zTr[i10] = (f22 * f17) + (f23 * f15) + (f24 * f14) + f21;
            } else {
                matrix = matrix2;
            }
            i10++;
            camera2 = camera;
            matrix2 = matrix;
            c10 = 0;
        }
    }
}
