package com.threed.jpct;

import java.io.Serializable;
import java.lang.reflect.Array;

public final class Vectors implements Serializable {
    private static final long serialVersionUID = 1;
    float[] alpha;
    private Mesh baseMesh;
    int maxVectors;
    float[] nuOrg;
    float[] nvOrg;
    float[][] uMul;
    float[][] vMul;

    public Vectors(int i10, Mesh mesh) {
        this.baseMesh = mesh;
        this.maxVectors = i10;
        this.nuOrg = new float[i10];
        this.nvOrg = new float[i10];
    }

    public int addVertex(float f10, float f11, float f12) {
        Mesh mesh = this.baseMesh;
        int i10 = mesh.anzCoords;
        mesh.xOrg[i10] = f10;
        mesh.yOrg[i10] = f11;
        mesh.zOrg[i10] = f12;
        mesh.anzCoords = i10 + 1;
        return i10;
    }

    public int checkCoords(float f10, float f11, float f12) {
        Mesh mesh = this.baseMesh;
        float[] fArr = mesh.xOrg;
        float[] fArr2 = mesh.yOrg;
        float[] fArr3 = mesh.zOrg;
        for (int i10 = mesh.anzCoords - 1; i10 >= 0; i10--) {
            if (fArr[i10] == f10 && fArr2[i10] == f11 && fArr3[i10] == f12) {
                return i10;
            }
        }
        return -1;
    }

    public void createAlpha() {
        if (this.alpha == null) {
            this.alpha = new float[this.maxVectors];
            for (int i10 = 0; i10 < this.maxVectors; i10++) {
                this.alpha[i10] = 1.0f;
            }
        }
    }

    public void createMultiCoords() {
        if (this.uMul == null) {
            int[] iArr = {Config.maxTextureLayers - 1, this.maxVectors};
            Class<Float> cls = Float.TYPE;
            this.uMul = (float[][]) Array.newInstance(cls, iArr);
            this.vMul = (float[][]) Array.newInstance(cls, Config.maxTextureLayers - 1, this.maxVectors);
        }
    }

    public void killMultiCoords() {
        this.uMul = null;
        this.vMul = null;
    }

    public void setMesh(Mesh mesh) {
        this.baseMesh = mesh;
    }

    public void strip() {
        this.nuOrg = null;
        this.nvOrg = null;
        this.uMul = null;
        this.vMul = null;
        this.alpha = null;
    }
}
