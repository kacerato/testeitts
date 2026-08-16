package com.threed.jpct;

import java.lang.reflect.Array;

public class PolygonManager {
    Object3D myObj;

    public PolygonManager(Object3D object3D) {
        this.myObj = object3D;
    }

    private boolean outOfBounds(int i10) {
        if (i10 >= 0 && i10 < this.myObj.objMesh.anzTri) {
            return false;
        }
        Logger.log("No such polygon!", 0);
        return true;
    }

    public void addTexture(int i10, int i11, int i12) {
        boolean z10;
        Object3D object3D;
        Object3D object3D2;
        Object3D object3D3 = this.myObj;
        if (object3D3.hasBeenStripped) {
            return;
        }
        if (object3D3.multiTex == null) {
            if (Logger.isDebugEnabled()) {
                Logger.log("Creating texture arrays of size " + (Config.maxTextureLayers - 1), 3);
            }
            Object3D object3D4 = this.myObj;
            int[] iArr = {Config.maxTextureLayers - 1, object3D4.texture.length};
            Class<Integer> cls = Integer.TYPE;
            object3D4.multiTex = (int[][]) Array.newInstance(cls, iArr);
            Object3D object3D5 = this.myObj;
            object3D5.multiMode = (int[][]) Array.newInstance(cls, Config.maxTextureLayers - 1, object3D5.texture.length);
            int i13 = 0;
            while (true) {
                object3D2 = this.myObj;
                if (i13 >= object3D2.texture.length) {
                    break;
                }
                for (int i14 = 0; i14 < Config.maxTextureLayers - 1; i14++) {
                    this.myObj.multiTex[i14][i13] = -1;
                }
                i13++;
            }
            object3D2.objVectors.createMultiCoords();
        }
        int i15 = 0;
        while (true) {
            int[][] iArr2 = this.myObj.multiTex;
            if (i15 >= iArr2.length) {
                z10 = false;
                break;
            }
            if (iArr2[i15][i10] == -1) {
                if (Logger.isDebugEnabled()) {
                    Logger.log("Found empty stage at " + i15, 3);
                }
                Object3D object3D6 = this.myObj;
                object3D6.multiTex[i15][i10] = i11;
                object3D6.multiMode[i15][i10] = i12;
                object3D6.maxStagesUsed = Math.max(object3D6.maxStagesUsed, i15 + 2);
                z10 = true;
            } else {
                if (Logger.isDebugEnabled()) {
                    Logger.log("Stage " + i15 + " not empty: " + this.myObj.multiTex[i15][i10], 3);
                }
                i15++;
            }
        }
        if (!z10 && this.myObj.multiTex.length < Config.maxTextureLayers - 1) {
            Logger.log("Expanding texture arrays (" + this.myObj.multiTex.length + "->" + (this.myObj.multiTex.length + 1) + ")...");
            Object3D object3D7 = this.myObj;
            int[] iArr3 = {object3D7.multiTex.length + 1, object3D7.texture.length};
            Class<Integer> cls2 = Integer.TYPE;
            int[][] iArr4 = (int[][]) Array.newInstance(cls2, iArr3);
            Object3D object3D8 = this.myObj;
            int[][] iArr5 = (int[][]) Array.newInstance(cls2, object3D8.multiMode.length + 1, object3D8.texture.length);
            Vectors vectors = this.myObj.objVectors;
            int[] iArr6 = {vectors.uMul.length + 1, vectors.maxVectors};
            Class<Float> cls3 = Float.TYPE;
            float[][] fArr = (float[][]) Array.newInstance(cls3, iArr6);
            Vectors vectors2 = this.myObj.objVectors;
            float[][] fArr2 = (float[][]) Array.newInstance(cls3, vectors2.vMul.length + 1, vectors2.maxVectors);
            int i16 = 0;
            while (true) {
                int[][] iArr7 = this.myObj.multiTex;
                if (i16 >= iArr7.length) {
                    break;
                }
                int[] iArr8 = iArr7[i16];
                int[] iArr9 = iArr4[i16];
                System.arraycopy(iArr8, 0, iArr9, 0, iArr9.length);
                int[] iArr10 = this.myObj.multiMode[i16];
                int[] iArr11 = iArr5[i16];
                System.arraycopy(iArr10, 0, iArr11, 0, iArr11.length);
                i16++;
            }
            int i17 = 0;
            while (true) {
                object3D = this.myObj;
                Vectors vectors3 = object3D.objVectors;
                float[][] fArr3 = vectors3.uMul;
                if (i17 >= fArr3.length) {
                    break;
                }
                System.arraycopy(fArr3[i17], 0, fArr[i17], 0, vectors3.maxVectors);
                Vectors vectors4 = this.myObj.objVectors;
                System.arraycopy(vectors4.vMul[i17], 0, fArr2[i17], 0, vectors4.maxVectors);
                i17++;
            }
            int length = object3D.texture.length;
            for (int i18 = 0; i18 < length; i18++) {
                iArr4[this.myObj.multiTex.length][i18] = -1;
            }
            int i19 = this.myObj.objVectors.maxVectors;
            for (int i20 = 0; i20 < i19; i20++) {
                Vectors vectors5 = this.myObj.objVectors;
                fArr[vectors5.uMul.length][i20] = vectors5.nuOrg[i20];
                fArr2[vectors5.vMul.length][i20] = vectors5.nvOrg[i20];
            }
            Object3D object3D9 = this.myObj;
            object3D9.multiTex = iArr4;
            object3D9.multiMode = iArr5;
            Vectors vectors6 = object3D9.objVectors;
            vectors6.uMul = fArr;
            vectors6.vMul = fArr2;
            iArr4[iArr4.length - 1][i10] = i11;
            iArr5[iArr5.length - 1][i10] = i12;
            object3D9.maxStagesUsed = Math.max(object3D9.maxStagesUsed, iArr4.length + 1);
            z10 = true;
        }
        if (z10) {
            Object3D object3D10 = this.myObj;
            object3D10.usesMultiTexturing = true;
            int i21 = object3D10.maxStagesUsed;
            int i22 = Config.maxTextureLayers;
            if (i21 > i22) {
                object3D10.maxStagesUsed = i22;
                return;
            }
            return;
        }
        Logger.log("No further texture stage available (" + this.myObj.maxStagesUsed + "/" + this.myObj.multiTex.length + "/" + Config.maxTextureLayers + ")!", 1);
    }

    public int getMaxPolygonID() {
        return this.myObj.objMesh.anzTri;
    }

    public int getPolygonTexture(int i10) {
        if (outOfBounds(i10)) {
            return -1;
        }
        return this.myObj.texture[i10];
    }

    public int[] getPolygonTextures(int i10) {
        if (outOfBounds(i10)) {
            return null;
        }
        Object3D object3D = this.myObj;
        int[][] iArr = object3D.multiTex;
        int i11 = 0;
        int[] iArr2 = new int[(iArr != null ? iArr.length : 0) + 1];
        iArr2[0] = object3D.texture[i10];
        if (iArr != null) {
            while (true) {
                int[][] iArr3 = this.myObj.multiTex;
                if (i11 >= iArr3.length) {
                    break;
                }
                int i12 = i11 + 1;
                iArr2[i12] = iArr3[i11][i10];
                i11 = i12;
            }
        }
        return iArr2;
    }

    public SimpleVector getTextureUV(int i10, int i11) {
        if (this.myObj.hasBeenStripped || outOfBounds(i10) || i11 < 0 || i11 > 2) {
            return null;
        }
        Object3D object3D = this.myObj;
        int i12 = object3D.objMesh.points[i10][i11];
        Vectors vectors = object3D.objVectors;
        SimpleVector simpleVector = new SimpleVector();
        simpleVector.f83625x = vectors.nuOrg[i12];
        simpleVector.f83626y = vectors.nvOrg[i12];
        return simpleVector;
    }

    public SimpleVector getTransformedNormal(int i10) {
        if (outOfBounds(i10)) {
            return null;
        }
        Matrix worldTransformation = this.myObj.getWorldTransformation();
        SimpleVector simpleVector = new SimpleVector();
        Mesh mesh = this.myObj.objMesh;
        int[] iArr = mesh.coords;
        int[] iArr2 = mesh.points[i10];
        int i11 = iArr[iArr2[0]];
        int i12 = iArr[iArr2[1]];
        int i13 = iArr[iArr2[2]];
        simpleVector.f83625x = mesh.xOrg[i13];
        simpleVector.f83626y = mesh.yOrg[i13];
        simpleVector.f83627z = mesh.zOrg[i13];
        simpleVector.matMul(worldTransformation);
        float f10 = simpleVector.f83625x;
        float f11 = simpleVector.f83626y;
        float f12 = simpleVector.f83627z;
        simpleVector.f83625x = mesh.xOrg[i12];
        simpleVector.f83626y = mesh.yOrg[i12];
        simpleVector.f83627z = mesh.zOrg[i12];
        simpleVector.matMul(worldTransformation);
        float f13 = simpleVector.f83625x;
        float f14 = simpleVector.f83626y;
        float f15 = simpleVector.f83627z;
        simpleVector.f83625x = mesh.xOrg[i11];
        simpleVector.f83626y = mesh.yOrg[i11];
        simpleVector.f83627z = mesh.zOrg[i11];
        simpleVector.matMul(worldTransformation);
        float f16 = simpleVector.f83625x - f10;
        float f17 = simpleVector.f83626y - f11;
        float f18 = simpleVector.f83627z - f12;
        float f19 = f13 - f10;
        float f20 = f14 - f11;
        float f21 = f15 - f12;
        simpleVector.f83625x = (f17 * f21) - (f18 * f20);
        simpleVector.f83626y = (f18 * f19) - (f21 * f16);
        simpleVector.f83627z = (f16 * f20) - (f17 * f19);
        return simpleVector.normalize();
    }

    public SimpleVector getTransformedVertex(int i10, int i11) {
        if (outOfBounds(i10) || i11 < 0 || i11 > 2) {
            return null;
        }
        Matrix worldTransformation = this.myObj.getWorldTransformation();
        SimpleVector simpleVector = new SimpleVector();
        Mesh mesh = this.myObj.objMesh;
        int i12 = mesh.coords[mesh.points[i10][i11]];
        simpleVector.f83625x = mesh.xOrg[i12];
        simpleVector.f83626y = mesh.yOrg[i12];
        simpleVector.f83627z = mesh.zOrg[i12];
        simpleVector.matMul(worldTransformation);
        return simpleVector;
    }

    public void setPolygonTexture(int i10, int i11) {
        if (this.myObj.hasBeenStripped || outOfBounds(i10)) {
            return;
        }
        this.myObj.texture[i10] = i11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r5 > 1.0f) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setVertexAlpha(int i10, int i11, float f10) {
        if (this.myObj.hasBeenStripped || outOfBounds(i10) || i11 < 0 || i11 > 2) {
            return;
        }
        Object3D object3D = this.myObj;
        int i12 = object3D.objMesh.points[i10][i11];
        Vectors vectors = object3D.objVectors;
        vectors.createAlpha();
        float f11 = f10 >= 0.0f ? 1.0f : 0.0f;
        f10 = f11;
        vectors.alpha[i12] = f10;
    }

    public void setPolygonTexture(int i10, TextureInfo textureInfo) {
        int i11;
        Object3D object3D;
        Object3D object3D2 = this.myObj;
        if (object3D2.hasBeenStripped || textureInfo == null) {
            return;
        }
        if (object3D2.multiTex == null && textureInfo.stageCnt > 1) {
            int[] iArr = {Config.maxTextureLayers - 1, object3D2.texture.length};
            Class<Integer> cls = Integer.TYPE;
            object3D2.multiTex = (int[][]) Array.newInstance(cls, iArr);
            Object3D object3D3 = this.myObj;
            object3D3.multiMode = (int[][]) Array.newInstance(cls, Config.maxTextureLayers - 1, object3D3.texture.length);
            int i12 = 0;
            while (true) {
                object3D = this.myObj;
                if (i12 >= object3D.texture.length) {
                    break;
                }
                for (int i13 = 0; i13 < Config.maxTextureLayers - 1; i13++) {
                    this.myObj.multiTex[i13][i12] = -1;
                }
                i12++;
            }
            object3D.objVectors.createMultiCoords();
            this.myObj.usesMultiTexturing = true;
        }
        Object3D object3D4 = this.myObj;
        Vectors vectors = object3D4.objVectors;
        float[] fArr = {textureInfo.f83628u0[0], textureInfo.f83629u1[0], textureInfo.f83630u2[0]};
        float[] fArr2 = {textureInfo.f83631v0[0], textureInfo.f83632v1[0], textureInfo.f83633v2[0]};
        int i14 = textureInfo.textures[0];
        int i15 = object3D4.maxStagesUsed;
        int i16 = textureInfo.stageCnt;
        if (i15 < i16) {
            object3D4.maxStagesUsed = i16;
        }
        boolean z10 = object3D4.usesMultiTexturing;
        object3D4.texture[i10] = i14;
        if (z10) {
            int i17 = 0;
            while (true) {
                i11 = textureInfo.stageCnt;
                if (i17 >= i11 - 1) {
                    break;
                }
                Object3D object3D5 = this.myObj;
                int i18 = i17 + 1;
                object3D5.multiTex[i17][i10] = textureInfo.textures[i18];
                object3D5.multiMode[i17][i10] = textureInfo.mode[i18];
                i17 = i18;
            }
            for (int i19 = i11 - 1; i19 < Config.maxTextureLayers - 1; i19++) {
                this.myObj.multiTex[i19][i10] = -1;
            }
        }
        float[] fArr3 = null;
        float[] fArr4 = null;
        for (int i20 = 0; i20 < 3; i20++) {
            int i21 = this.myObj.objMesh.points[i10][i20];
            vectors.nuOrg[i21] = fArr[i20];
            vectors.nvOrg[i21] = fArr2[i20];
            if (i20 == 0) {
                fArr3 = textureInfo.f83628u0;
                fArr4 = textureInfo.f83631v0;
            } else if (i20 == 1) {
                fArr3 = textureInfo.f83629u1;
                fArr4 = textureInfo.f83632v1;
            } else if (i20 == 2) {
                fArr3 = textureInfo.f83630u2;
                fArr4 = textureInfo.f83633v2;
            }
            int i22 = 0;
            while (i22 < textureInfo.stageCnt - 1) {
                int i23 = i22 + 1;
                vectors.uMul[i22][i21] = fArr3[i23];
                vectors.vMul[i22][i21] = fArr4[i23];
                i22 = i23;
            }
        }
    }
}
