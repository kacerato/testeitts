package com.threed.jpct;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.Vector;
import w2.C15883c;
import yd.C16175g;
import yd.C16179k;

public final class Loader {
    private static final int DEFAULT_BUFFER = 8192;
    private static final int MAX_CACHE_SIZE = 20000;
    private static String lastFileData = "";
    private static String lastFilename = "";
    private static boolean optimize = true;

    private Loader() {
    }

    public static void clearCache() {
        lastFileData = null;
        lastFilename = null;
    }

    private static int countOcc(String str, String str2) {
        int length = str2.length();
        int i10 = 0;
        int i11 = 0;
        do {
            i10 = str.indexOf(str2, i10 + length);
            if (i10 != -1) {
                i11++;
            }
        } while (i10 != -1);
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object3D create3DSObject(String str, float[][] fArr, int i10, int[][] iArr, int i11, String[] strArr, String[] strArr2, float[][] fArr2, String[] strArr3, RGBColor[] rGBColorArr, int[] iArr2, int i12) {
        int[] iArr3;
        int[] iArr4;
        int i13;
        String str2;
        int i14;
        float f10;
        float f11;
        float f12;
        float f13;
        int i15;
        int i16;
        TextureManager textureManager;
        Object3D object3D;
        int i17;
        char c10 = 3;
        int i18 = 0;
        if (optimize) {
            iArr3 = null;
            iArr4 = null;
        } else {
            int length = fArr.length;
            iArr3 = new int[length];
            int[] iArr5 = new int[3];
            for (int i19 = 0; i19 < length; i19++) {
                iArr3[i19] = -1;
            }
            iArr4 = iArr5;
        }
        Object3D object3D2 = new Object3D(i11);
        if (!optimize) {
            object3D2.disableVertexSharing();
        }
        TextureManager textureManager2 = TextureManager.getInstance();
        int textureID = textureManager2.getTextureID("--dummy--");
        int i20 = 100;
        String str3 = "**hurzigurzi**";
        int i21 = -1;
        int i22 = 0;
        while (i22 < i11) {
            int[] iArr6 = iArr[i22];
            int i23 = iArr6[i18];
            int i24 = iArr6[1];
            int i25 = iArr6[2];
            float[] fArr3 = fArr[i23];
            float f14 = fArr3[i18];
            float f15 = fArr3[1];
            float f16 = fArr3[2];
            float[] fArr4 = fArr[i24];
            float f17 = fArr4[i18];
            float f18 = fArr4[1];
            float f19 = fArr4[2];
            float[] fArr5 = fArr[i25];
            float f20 = fArr5[i18];
            float f21 = fArr5[1];
            float f22 = fArr5[2];
            String str4 = strArr3[i22];
            if (str4 != null) {
                if (str4.equals(str3)) {
                    int textureID2 = textureManager2.getTextureID(strArr2[i21]);
                    float[] fArr6 = fArr2[i21];
                    f12 = fArr6[i18];
                    f13 = fArr6[1];
                    f11 = fArr6[2];
                    float f23 = fArr6[c10];
                    i13 = i20;
                    str2 = str3;
                    i14 = i21;
                    i15 = textureID2;
                    f10 = f23;
                } else {
                    for (int i26 = i18; i26 < i12; i26++) {
                        String str5 = strArr[i26];
                        if (str5 != null && str5.equals(strArr3[i22])) {
                            i13 = iArr2[i26];
                            if (i13 == 1000 || i20 == -1) {
                                i13 = -1;
                            }
                            String str6 = strArr2[i26];
                            if (str6 != null) {
                                String str7 = strArr[i26];
                                int textureID3 = textureManager2.getTextureID(str6);
                                float[] fArr7 = fArr2[i26];
                                f12 = fArr7[0];
                                f13 = fArr7[1];
                                float f24 = fArr7[2];
                                f10 = fArr7[3];
                                i14 = i26;
                                i15 = textureID3;
                                str2 = str7;
                                f11 = f24;
                            } else {
                                String str8 = "__3ds-Color:" + rGBColorArr[i26].getRed() + "/" + rGBColorArr[i26].getGreen() + "/" + rGBColorArr[i26].getBlue();
                                if (textureManager2.containsTexture(str8)) {
                                    i15 = textureManager2.getTextureID(str8);
                                    str2 = str3;
                                    i14 = i21;
                                } else {
                                    textureManager2.addTexture(str8, Texture.createSingleColoredTexture(rGBColorArr[i26]));
                                    int textureID4 = textureManager2.getTextureID(str8);
                                    strArr2[i26] = str8;
                                    i14 = i26;
                                    str2 = strArr[i26];
                                    i15 = textureID4;
                                }
                                f10 = 0.0f;
                                f11 = 0.0f;
                                f12 = 1.0f;
                                f13 = 1.0f;
                            }
                        }
                    }
                }
                float[] fArr8 = fArr[i23];
                float f25 = (fArr8[3] * f12) + f11;
                float f26 = (fArr8[4] * f13) + f10;
                float[] fArr9 = fArr[i24];
                float f27 = (fArr9[3] * f12) + f11;
                float f28 = (fArr9[4] * f13) + f10;
                float[] fArr10 = fArr[i25];
                float f29 = (fArr10[3] * f12) + f11;
                float f30 = (fArr10[4] * f13) + f10;
                if (optimize) {
                    i16 = i22;
                    textureManager = textureManager2;
                    object3D = object3D2;
                    iArr4[0] = iArr3[i23];
                    iArr4[1] = iArr3[i24];
                    iArr4[2] = iArr3[i25];
                    object3D.addTriangle(f14, f15, f16, f25, 1.0f - f26, f17, f18, f19, f27, 1.0f - f28, f20, f21, f22, f29, 1.0f - f30, i15, 0, false, iArr4);
                    if (iArr3[i23] == -1) {
                        i17 = 0;
                        iArr3[i23] = iArr4[0];
                    } else {
                        i17 = 0;
                    }
                    if (iArr3[i24] == -1) {
                        iArr3[i24] = iArr4[1];
                    }
                    if (iArr3[i25] == -1) {
                        iArr3[i25] = iArr4[2];
                    }
                } else {
                    i16 = i22;
                    textureManager = textureManager2;
                    object3D = object3D2;
                    object3D2.addTriangle(f14, f15, f16, f25, 1.0f - f26, f17, f18, f19, f27, 1.0f - f28, f20, f21, f22, f29, 1.0f - f30, i15);
                    i17 = 0;
                }
                i22 = i16 + 1;
                str3 = str2;
                i21 = i14;
                c10 = 3;
                textureManager2 = textureManager;
                object3D2 = object3D;
                int i27 = i17;
                i20 = i13;
                i18 = i27;
            }
            i13 = i20;
            str2 = str3;
            i14 = i21;
            f10 = 0.0f;
            f11 = 0.0f;
            f12 = 1.0f;
            f13 = 1.0f;
            i15 = textureID;
            float[] fArr82 = fArr[i23];
            float f252 = (fArr82[3] * f12) + f11;
            float f262 = (fArr82[4] * f13) + f10;
            float[] fArr92 = fArr[i24];
            float f272 = (fArr92[3] * f12) + f11;
            float f282 = (fArr92[4] * f13) + f10;
            float[] fArr102 = fArr[i25];
            float f292 = (fArr102[3] * f12) + f11;
            float f302 = (fArr102[4] * f13) + f10;
            if (optimize) {
            }
            i22 = i16 + 1;
            str3 = str2;
            i21 = i14;
            c10 = 3;
            textureManager2 = textureManager;
            object3D2 = object3D;
            int i272 = i17;
            i20 = i13;
            i18 = i272;
        }
        object3D2.setName(String.valueOf(str) + "_jPCT" + object3D2.getID());
        object3D2.getMesh().compress();
        if (i20 != 1000 && i20 != -1) {
            object3D2.setTransparency(i20);
        }
        Logger.log("Object '" + object3D2.name + "' created using " + object3D2.getMesh().anzTri + " polygons and " + object3D2.getMesh().anzCoords + " vertices.", 2);
        return object3D2;
    }

    private static Object3D createOBJObject(HashMap<String, Object[]> hashMap, int[][][] iArr, float[][] fArr, float[][] fArr2, String str, String[] strArr, int i10, int i11, int i12, int i13, int[] iArr2, int[] iArr3, float[][] fArr3) {
        float[][] fArr4;
        boolean z10;
        String str2;
        int i14;
        boolean z11;
        char c10;
        int i15;
        int i16;
        int i17;
        int i18;
        float[][] fArr5;
        Object3D object3D;
        int i19;
        int i20;
        TextureManager textureManager;
        char c11;
        int i21;
        String str3;
        char c12;
        Mesh mesh;
        int textureID;
        RGBColor rGBColor;
        int i22 = i10;
        float[][] fArr6 = fArr3;
        Object3D object3D2 = new Object3D((i22 - i11) + i13);
        String str4 = str == null ? "noname" : str;
        int i23 = 2;
        char c13 = 0;
        char c14 = 1;
        if (i12 == 0) {
            fArr4 = (float[][]) Array.newInstance(Float.TYPE, 1, 2);
            z10 = true;
        } else {
            fArr4 = fArr2;
            z10 = false;
        }
        TextureManager textureManager2 = TextureManager.getInstance();
        boolean z12 = optimize && !Config.useNormalsFromOBJ && fArr6 == null;
        if (!z12) {
            object3D2.disableVertexSharing();
        }
        int i24 = -1;
        String str5 = "jkkjkljdldld----";
        int i25 = i11;
        int i26 = -1;
        boolean z13 = false;
        while (i25 < i22) {
            String str6 = strArr[i25];
            if (str6 == null || str6.equals(str5)) {
                str2 = str5;
                i14 = i26;
                z11 = z13;
            } else {
                Object[] objArr = hashMap.get(str6);
                if (objArr == null) {
                    textureID = textureManager2.getTextureID(str6);
                } else {
                    Object obj = objArr[c14];
                    textureID = obj != null ? textureManager2.getTextureID((String) obj) : i24;
                    if (textureID == i24 && (rGBColor = (RGBColor) objArr[c13]) != null) {
                        String str7 = "__obj-Color:" + rGBColor.getRed() + "/" + rGBColor.getGreen() + "/" + rGBColor.getBlue();
                        if (textureManager2.containsTexture(str7)) {
                            textureID = textureManager2.getTextureID(str7);
                        } else {
                            textureManager2.addTexture(str7, Texture.createSingleColoredTexture(rGBColor));
                            textureID = textureManager2.getTextureID(str7);
                        }
                    }
                    Object obj2 = objArr[i23];
                    if (obj2 != null) {
                        object3D2.setTransparency((int) (((Float) obj2).floatValue() * 10.0f));
                        i14 = textureID;
                        str2 = str6;
                        z11 = true;
                    } else if (z13) {
                        object3D2.setTransparency(i24);
                    }
                }
                i14 = textureID;
                z11 = z13;
                str2 = str6;
            }
            int[][] iArr4 = iArr[i25];
            int[] iArr5 = iArr4[0];
            int i27 = iArr5[0] - 1;
            int[] iArr6 = iArr4[1];
            int i28 = iArr6[0] - 1;
            int[] iArr7 = iArr4[i23];
            int i29 = iArr7[0] - 1;
            int[] iArr8 = iArr4[3];
            int i30 = iArr8[0] - 1;
            int i31 = iArr5[i23] - 1;
            int i32 = iArr6[i23] - 1;
            int i33 = iArr7[i23] - 1;
            int i34 = iArr8[i23] - 1;
            if (z10) {
                c10 = 0;
                i15 = 0;
                i16 = 0;
                i17 = 0;
                i18 = 0;
            } else {
                c10 = 0;
                int max = Math.max(0, iArr5[1] - 1);
                i15 = Math.max(0, iArr[i25][1][1] - 1);
                i16 = max;
                i17 = Math.max(0, iArr[i25][i23][1] - 1);
                i18 = Math.max(0, iArr[i25][3][1] - 1);
            }
            if (i29 < 0 || i28 < 0) {
                fArr5 = fArr6;
                object3D = object3D2;
                i19 = i25;
                i20 = i24;
                textureManager = textureManager2;
                c11 = c10;
                i21 = i23;
                str3 = str4;
            } else {
                if (z12) {
                    float[] fArr7 = fArr[i27];
                    float f10 = fArr7[c10];
                    float f11 = fArr7[1];
                    float f12 = fArr7[i23];
                    float[] fArr8 = fArr4[i16];
                    float f13 = fArr8[c10];
                    float f14 = 1.0f - fArr8[1];
                    float[] fArr9 = fArr[i28];
                    float f15 = fArr9[c10];
                    float f16 = fArr9[1];
                    i19 = i25;
                    float f17 = fArr9[i23];
                    float[] fArr10 = fArr4[i15];
                    float f18 = fArr10[c10];
                    textureManager = textureManager2;
                    float f19 = 1.0f - fArr10[1];
                    char c15 = c10;
                    float[] fArr11 = fArr[i29];
                    float f20 = fArr11[c15];
                    c11 = c15;
                    float f21 = fArr11[1];
                    i21 = i23;
                    float f22 = fArr11[i21];
                    str3 = str4;
                    float[] fArr12 = fArr4[i17];
                    object3D = object3D2;
                    object3D2.addTriangle(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, fArr12[c11], 1.0f - fArr12[1], i14);
                    if (i30 >= 0) {
                        float[] fArr13 = fArr[i27];
                        float f23 = fArr13[c11];
                        float f24 = fArr13[1];
                        float f25 = fArr13[i21];
                        float[] fArr14 = fArr4[i16];
                        float f26 = fArr14[c11];
                        float f27 = 1.0f - fArr14[1];
                        float[] fArr15 = fArr[i29];
                        float f28 = fArr15[c11];
                        float f29 = fArr15[1];
                        float f30 = fArr15[i21];
                        float[] fArr16 = fArr4[i17];
                        float f31 = fArr16[c11];
                        float f32 = 1.0f - fArr16[1];
                        float[] fArr17 = fArr[i30];
                        float f33 = fArr17[c11];
                        float f34 = fArr17[1];
                        float f35 = fArr17[i21];
                        float[] fArr18 = fArr4[i18];
                        object3D.addTriangle(f23, f24, f25, f26, f27, f28, f29, f30, f31, f32, f33, f34, f35, fArr18[c11], 1.0f - fArr18[1], i14);
                    }
                    i20 = -1;
                    float[][] fArr19 = fArr6;
                    c12 = 1;
                    fArr5 = fArr19;
                } else {
                    object3D = object3D2;
                    i19 = i25;
                    textureManager = textureManager2;
                    c11 = c10;
                    i21 = i23;
                    str3 = str4;
                    iArr3[c11] = iArr2[i27];
                    iArr3[1] = iArr2[i28];
                    iArr3[i21] = iArr2[i29];
                    Mesh mesh2 = object3D.getMesh();
                    if (fArr6 != null && fArr6.length > 0) {
                        int i35 = iArr3[c11];
                        if (i35 != -1) {
                            float f36 = mesh2.nxOrg[i35];
                            float[] fArr20 = fArr6[i31];
                            if (f36 != fArr20[c11] || mesh2.nyOrg[i35] != fArr20[1] || mesh2.nzOrg[i35] != fArr20[i21]) {
                                iArr3[c11] = -1;
                            }
                        }
                        int i36 = iArr3[1];
                        if (i36 != -1) {
                            float f37 = mesh2.nxOrg[i36];
                            float[] fArr21 = fArr6[i32];
                            if (f37 != fArr21[c11] || mesh2.nyOrg[i36] != fArr21[1] || mesh2.nzOrg[i36] != fArr21[i21]) {
                                iArr3[1] = -1;
                            }
                        }
                        int i37 = iArr3[i21];
                        if (i37 != -1) {
                            float f38 = mesh2.nxOrg[i37];
                            float[] fArr22 = fArr6[i33];
                            if (f38 != fArr22[c11] || mesh2.nyOrg[i37] != fArr22[1] || mesh2.nzOrg[i37] != fArr22[i21]) {
                                iArr3[i21] = -1;
                            }
                        }
                    }
                    float[] fArr23 = fArr[i27];
                    float f39 = fArr23[c11];
                    float f40 = fArr23[1];
                    float f41 = fArr23[i21];
                    float[] fArr24 = fArr4[i16];
                    float f42 = fArr24[c11];
                    float f43 = 1.0f - fArr24[1];
                    float[] fArr25 = fArr[i28];
                    float f44 = fArr25[c11];
                    float f45 = fArr25[1];
                    float f46 = fArr25[i21];
                    float[] fArr26 = fArr4[i15];
                    float f47 = fArr26[c11];
                    float f48 = 1.0f - fArr26[1];
                    float[] fArr27 = fArr[i29];
                    float f49 = fArr27[c11];
                    float f50 = fArr27[1];
                    float f51 = fArr27[i21];
                    float[] fArr28 = fArr4[i17];
                    fArr5 = fArr6;
                    object3D.addTriangle(f39, f40, f41, f42, f43, f44, f45, f46, f47, f48, f49, f50, f51, fArr28[c11], 1.0f - fArr28[1], i14, 0, false, iArr3);
                    if (fArr5 == null || fArr5.length <= 0) {
                        mesh = mesh2;
                    } else {
                        mesh = mesh2;
                        mesh.normalsCalculated = true;
                        float[] fArr29 = mesh.nxOrg;
                        int i38 = iArr3[c11];
                        float[] fArr30 = fArr5[i31];
                        fArr29[i38] = fArr30[c11];
                        float[] fArr31 = mesh.nyOrg;
                        fArr31[i38] = fArr30[1];
                        float[] fArr32 = mesh.nzOrg;
                        fArr32[i38] = fArr30[i21];
                        int i39 = iArr3[1];
                        float[] fArr33 = fArr5[i32];
                        fArr29[i39] = fArr33[c11];
                        fArr31[i39] = fArr33[1];
                        fArr32[i39] = fArr33[i21];
                        int i40 = iArr3[i21];
                        float[] fArr34 = fArr5[i33];
                        fArr29[i40] = fArr34[c11];
                        fArr31[i40] = fArr34[1];
                        fArr32[i40] = fArr34[i21];
                    }
                    if (iArr2[i27] == -1) {
                        iArr2[i27] = iArr3[c11];
                    }
                    if (iArr2[i28] == -1) {
                        iArr2[i28] = iArr3[1];
                    }
                    if (iArr2[i29] == -1) {
                        iArr2[i29] = iArr3[i21];
                    }
                    if (i30 >= 0) {
                        int i41 = iArr2[i27];
                        iArr3[c11] = i41;
                        int i42 = iArr2[i29];
                        iArr3[1] = i42;
                        int i43 = iArr2[i30];
                        iArr3[i21] = i43;
                        if (fArr5 != null && fArr5.length > 0) {
                            if (i41 != -1) {
                                float f52 = mesh.nxOrg[i41];
                                float[] fArr35 = fArr5[i31];
                                if (f52 != fArr35[c11] || mesh.nyOrg[i41] != fArr35[1] || mesh.nzOrg[i41] != fArr35[i21]) {
                                    iArr3[c11] = -1;
                                }
                            }
                            if (i42 != -1) {
                                float f53 = mesh.nxOrg[i42];
                                float[] fArr36 = fArr5[i33];
                                if (f53 != fArr36[c11] || mesh.nyOrg[i42] != fArr36[1] || mesh.nzOrg[i42] != fArr36[i21]) {
                                    iArr3[1] = -1;
                                }
                            }
                            if (i43 != -1) {
                                float f54 = mesh.nxOrg[i43];
                                float[] fArr37 = fArr5[i34];
                                if (f54 != fArr37[c11] || mesh.nyOrg[i43] != fArr37[1] || mesh.nzOrg[i43] != fArr37[i21]) {
                                    iArr3[i21] = -1;
                                }
                            }
                        }
                        float[] fArr38 = fArr[i27];
                        float f55 = fArr38[c11];
                        float f56 = fArr38[1];
                        float f57 = fArr38[i21];
                        float[] fArr39 = fArr4[i16];
                        float f58 = fArr39[c11];
                        float f59 = 1.0f - fArr39[1];
                        float[] fArr40 = fArr[i29];
                        float f60 = fArr40[c11];
                        float f61 = fArr40[1];
                        float f62 = fArr40[i21];
                        float[] fArr41 = fArr4[i17];
                        float f63 = fArr41[c11];
                        float f64 = 1.0f - fArr41[1];
                        float[] fArr42 = fArr[i30];
                        float f65 = fArr42[c11];
                        float f66 = fArr42[1];
                        float f67 = fArr42[i21];
                        float[] fArr43 = fArr4[i18];
                        Mesh mesh3 = mesh;
                        object3D.addTriangle(f55, f56, f57, f58, f59, f60, f61, f62, f63, f64, f65, f66, f67, fArr43[c11], 1.0f - fArr43[1], i14, 0, false, iArr3);
                        if (fArr5 != null && fArr5.length > 0) {
                            mesh3.normalsCalculated = true;
                            float[] fArr44 = mesh3.nxOrg;
                            int i44 = iArr3[c11];
                            float[] fArr45 = fArr5[i31];
                            fArr44[i44] = fArr45[c11];
                            float[] fArr46 = mesh3.nyOrg;
                            fArr46[i44] = fArr45[1];
                            float[] fArr47 = mesh3.nzOrg;
                            fArr47[i44] = fArr45[i21];
                            int i45 = iArr3[1];
                            float[] fArr48 = fArr5[i33];
                            fArr44[i45] = fArr48[c11];
                            fArr46[i45] = fArr48[1];
                            fArr47[i45] = fArr48[i21];
                            int i46 = iArr3[i21];
                            float[] fArr49 = fArr5[i34];
                            fArr44[i46] = fArr49[c11];
                            fArr46[i46] = fArr49[1];
                            fArr47[i46] = fArr49[i21];
                        }
                        i20 = -1;
                        if (iArr2[i27] == -1) {
                            iArr2[i27] = iArr3[c11];
                        }
                        if (iArr2[i29] == -1) {
                            c12 = 1;
                            iArr2[i29] = iArr3[1];
                        } else {
                            c12 = 1;
                        }
                        if (iArr2[i30] == -1) {
                            iArr2[i30] = iArr3[i21];
                        }
                    } else {
                        i20 = -1;
                    }
                }
                i25 = i19 + 1;
                c14 = c12;
                i24 = i20;
                str5 = str2;
                i26 = i14;
                z13 = z11;
                textureManager2 = textureManager;
                c13 = c11;
                i23 = i21;
                str4 = str3;
                object3D2 = object3D;
                fArr6 = fArr5;
                i22 = i10;
            }
            c12 = 1;
            i25 = i19 + 1;
            c14 = c12;
            i24 = i20;
            str5 = str2;
            i26 = i14;
            z13 = z11;
            textureManager2 = textureManager;
            c13 = c11;
            i23 = i21;
            str4 = str3;
            object3D2 = object3D;
            fArr6 = fArr5;
            i22 = i10;
        }
        object3D2.setName(str4 + "_jPCT" + object3D2.getID());
        object3D2.getMesh().compress();
        Logger.log("Object '" + object3D2.getName() + "' created using " + object3D2.getMesh().anzTri + " polygons and " + object3D2.getMesh().anzCoords + " vertices.", i23);
        return object3D2;
    }

    private static void getChunkHeader(byte[] bArr, int i10, int[] iArr) {
        iArr[0] = getShortInt(bArr, i10);
        iArr[1] = getInt(bArr, i10 + 2);
    }

    private static int getInt(byte[] bArr, int i10) {
        int i11 = i10 + 3;
        if (i11 >= bArr.length) {
            return -1;
        }
        return unsignedByteToInt(bArr[i10]) + (unsignedByteToInt(bArr[i10 + 1]) << 8) + (unsignedByteToInt(bArr[i10 + 2]) << 16) + (unsignedByteToInt(bArr[i11]) << 24);
    }

    private static String getSequenceName(String str) {
        StringBuffer stringBuffer = new StringBuffer(16);
        String lowerCase = str.toLowerCase();
        for (int i10 = 0; i10 < lowerCase.length(); i10++) {
            char charAt = lowerCase.charAt(i10);
            if (charAt >= 'a' && charAt <= 'z') {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    private static int getShortInt(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        if (i11 < bArr.length) {
            return unsignedByteToInt(bArr[i10]) + (unsignedByteToInt(bArr[i11]) << 8);
        }
        return -1;
    }

    private static int getUnsignedByte(byte[] bArr, int i10) {
        if (i10 < bArr.length) {
            return unsignedByteToInt(bArr[i10]);
        }
        return -1;
    }

    public static Object3D[] load3DS(InputStream inputStream, float f10) {
        return load3DS(null, null, inputStream, f10);
    }

    public static Object3D loadASC(InputStream inputStream, float f10, boolean z10) {
        return loadASC(null, null, inputStream, f10, z10);
    }

    private static byte[] loadBinaryFile(URL url, String str, InputStream inputStream, int i10) {
        return loadBinaryFile(url, str, inputStream, i10, null);
    }

    public static Object3D loadMD2(InputStream inputStream, float f10) {
        return loadMD2(null, null, inputStream, f10);
    }

    public static Object3D[] loadOBJ(InputStream inputStream, InputStream inputStream2, float f10) {
        return loadOBJ(null, null, null, inputStream, inputStream2, f10);
    }

    public static Object3D loadSerializedObject(InputStream inputStream) {
        return new DeSerializer().deserialize(inputStream)[0];
    }

    public static Object3D[] loadSerializedObjectArray(InputStream inputStream) {
        return new DeSerializer().deserialize(inputStream);
    }

    public static String loadTextFile(InputStream inputStream) {
        return loadTextFile(null, null, inputStream);
    }

    public static String[] readTextureNames3DS(InputStream inputStream) {
        return readTextureNames3DS(null, null, inputStream);
    }

    private static String removeBogusData(String str) {
        int indexOf = str.indexOf("-s");
        int indexOf2 = str.indexOf("-o");
        if (indexOf == -1 && indexOf2 == -1) {
            return str;
        }
        Logger.log("This .mtl-file contains bogus(?) data in the map_K? line...skipping this data!", 3);
        if (indexOf2 > indexOf) {
            indexOf = indexOf2;
        }
        String substring = str.substring(indexOf + 3);
        int i10 = 0;
        int i11 = -1;
        do {
            i11 = substring.indexOf(32, i11 + 1);
            i10++;
            if (i10 >= 3) {
                break;
            }
        } while (i11 != -1);
        return i11 != -1 ? substring.substring(i11).trim() : substring;
    }

    public static void setVertexOptimization(boolean z10) {
        optimize = z10;
    }

    private static int unsignedByteToInt(byte b10) {
        return b10 & 255;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:271:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0604 A[LOOP:17: B:286:0x0601->B:287:0x0604, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object3D[] load3DS(URL url, String str, InputStream inputStream, float f10) {
        ArrayList arrayList;
        HashMap hashMap;
        float[][] fArr;
        String[] strArr;
        String[] strArr2;
        RGBColor[] rGBColorArr;
        int[] iArr;
        String str2;
        float[][] fArr2;
        int[][] iArr2;
        String[] strArr3;
        int i10;
        int i11;
        int i12;
        ArrayList arrayList2;
        int size;
        int i13;
        HashMap hashMap2;
        ArrayList arrayList3;
        HashMap hashMap3;
        boolean z10;
        int[] iArr3;
        String str3;
        String str4;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z11;
        boolean z12;
        String[] strArr4;
        ArrayList arrayList4;
        String str5;
        HashMap hashMap4;
        int i18;
        int unsignedByte;
        byte[] loadBinaryFile = loadBinaryFile(url, str, inputStream, 8192);
        int i19 = 2;
        int[] iArr4 = new int[2];
        int[] iArr5 = new int[2];
        ArrayList arrayList5 = new ArrayList();
        char c10 = 1;
        char c11 = 4;
        int i20 = 0;
        float[][] fArr3 = (float[][]) Array.newInstance(Float.TYPE, 10, 4);
        String[] strArr5 = new String[10];
        String[] strArr6 = new String[10];
        RGBColor[] rGBColorArr2 = new RGBColor[10];
        int[] iArr6 = new int[10];
        int i21 = 0;
        while (i21 < 10) {
            int[] iArr7 = iArr4;
            float[] fArr4 = fArr3[i21];
            fArr4[0] = 1.0f;
            fArr4[1] = 1.0f;
            fArr4[2] = 0.0f;
            fArr4[3] = 0.0f;
            iArr6[i21] = 1000;
            i21++;
            iArr4 = iArr7;
            arrayList5 = arrayList5;
            i19 = 2;
            i20 = 0;
            c10 = 1;
            c11 = c11;
        }
        HashMap hashMap5 = new HashMap();
        String str6 = "";
        if (loadBinaryFile != null) {
            getChunkHeader(loadBinaryFile, i20, iArr4);
            int i22 = iArr4[i20];
            if (i22 == 19789) {
                int i23 = i20;
                int i24 = i23;
                int i25 = i24;
                int i26 = i25;
                String str7 = "";
                float[][] fArr5 = null;
                int[][] iArr8 = null;
                String[] strArr7 = null;
                int i27 = 6;
                String str8 = str7;
                while (i22 >= 0 && i27 < loadBinaryFile.length && i27 >= 0) {
                    getChunkHeader(loadBinaryFile, i27, iArr4);
                    i27 += 6;
                    int i28 = iArr4[i20];
                    int i29 = iArr4[c10];
                    if (i28 < 0 || i27 >= loadBinaryFile.length) {
                        arrayList3 = arrayList5;
                        hashMap3 = hashMap5;
                        iArr8 = iArr8;
                        fArr5 = fArr5;
                        i22 = i28;
                        iArr4 = iArr4;
                    } else {
                        if (i28 == 16640) {
                            if (i25 != 0) {
                                arrayList5.add(create3DSObject(str6, fArr5, i24, iArr8, i25, strArr5, strArr6, fArr3, strArr7, rGBColorArr2, iArr6, i26));
                            }
                            Logger.log("Processing object from 3DS-file: " + str7, i19);
                            z10 = false;
                            i23 = 0;
                            i24 = 0;
                            i25 = 0;
                        } else {
                            z10 = true;
                        }
                        if (i28 == 45072) {
                            StringBuilder sb2 = new StringBuilder(40);
                            while (true) {
                                int unsignedByte2 = getUnsignedByte(loadBinaryFile, i27);
                                int i30 = i27 + 1;
                                iArr3 = iArr4;
                                if (unsignedByte2 > 0) {
                                    sb2.append((char) ((byte) unsignedByte2));
                                }
                                if (i30 >= loadBinaryFile.length) {
                                    unsignedByte2 = -1;
                                }
                                if (unsignedByte2 <= 0) {
                                    break;
                                }
                                i27 = i30;
                                iArr4 = iArr3;
                            }
                            str3 = sb2.toString();
                            Logger.log("Name in hierarchy found: " + str3, 2);
                            i27 += 7;
                            z10 = false;
                        } else {
                            iArr3 = iArr4;
                            str3 = str8;
                        }
                        if (i28 == 45088) {
                            float intBitsToFloat = Float.intBitsToFloat(getInt(loadBinaryFile, i27 + 20));
                            float intBitsToFloat2 = Float.intBitsToFloat(getInt(loadBinaryFile, i27 + 24));
                            float intBitsToFloat3 = Float.intBitsToFloat(getInt(loadBinaryFile, i27 + 28));
                            i27 += 32;
                            hashMap5.put(str3, SimpleVector.create(intBitsToFloat, intBitsToFloat2, intBitsToFloat3));
                            z10 = false;
                        }
                        if (i28 == 16384) {
                            StringBuilder sb3 = new StringBuilder(40);
                            do {
                                unsignedByte = getUnsignedByte(loadBinaryFile, i27);
                                i27++;
                                if (unsignedByte > 0) {
                                    sb3.append((char) ((byte) unsignedByte));
                                }
                                if (i27 >= loadBinaryFile.length) {
                                    unsignedByte = -1;
                                }
                            } while (unsignedByte > 0);
                            str6 = str7;
                            z10 = false;
                            str7 = sb3.toString();
                        }
                        if (i28 == 16656) {
                            int shortInt = getShortInt(loadBinaryFile, i27);
                            float[][] fArr6 = fArr5;
                            fArr5 = (fArr6 == null || fArr6.length < shortInt) ? (float[][]) Array.newInstance(Float.TYPE, shortInt, 5) : fArr6;
                            i27 += 2;
                            int i31 = 0;
                            while (i31 < shortInt) {
                                float intBitsToFloat4 = Float.intBitsToFloat(getInt(loadBinaryFile, i27)) * f10;
                                String str9 = str3;
                                float intBitsToFloat5 = Float.intBitsToFloat(getInt(loadBinaryFile, i27 + 4)) * f10;
                                int i32 = shortInt;
                                float intBitsToFloat6 = Float.intBitsToFloat(getInt(loadBinaryFile, i27 + 8)) * f10;
                                i27 += 12;
                                float[] fArr7 = fArr5[i24];
                                fArr7[0] = intBitsToFloat4;
                                fArr7[1] = intBitsToFloat5;
                                fArr7[2] = intBitsToFloat6;
                                i24++;
                                i31++;
                                str3 = str9;
                                shortInt = i32;
                            }
                            str8 = str3;
                            z10 = false;
                        } else {
                            str8 = str3;
                        }
                        if (i28 == 16672) {
                            int shortInt2 = getShortInt(loadBinaryFile, i27);
                            int[][] iArr9 = iArr8;
                            if (iArr9 == null || iArr9.length < shortInt2) {
                                iArr8 = (int[][]) Array.newInstance(Integer.TYPE, shortInt2, 3);
                                strArr4 = new String[shortInt2];
                            } else {
                                iArr8 = iArr9;
                                strArr4 = strArr7;
                            }
                            int i33 = i27 + 2;
                            int i34 = 0;
                            while (i34 < shortInt2) {
                                ArrayList arrayList6 = arrayList5;
                                String str10 = str7;
                                HashMap hashMap6 = hashMap5;
                                int shortInt3 = getShortInt(loadBinaryFile, i33);
                                int shortInt4 = getShortInt(loadBinaryFile, i33 + 2);
                                int shortInt5 = getShortInt(loadBinaryFile, i33 + 4);
                                i33 += 8;
                                int[] iArr10 = iArr8[i25];
                                iArr10[0] = shortInt3;
                                iArr10[1] = shortInt4;
                                iArr10[2] = shortInt5;
                                i25++;
                                i34++;
                                str7 = str10;
                                hashMap5 = hashMap6;
                                arrayList5 = arrayList6;
                            }
                            while (i33 < (i27 + i29) - 6 && i33 < loadBinaryFile.length) {
                                getChunkHeader(loadBinaryFile, i33, iArr5);
                                int i35 = i33 + 6;
                                int i36 = iArr5[0];
                                int i37 = iArr5[1];
                                if (i36 == 16688) {
                                    StringBuilder sb4 = new StringBuilder(40);
                                    int i38 = i35;
                                    str5 = str7;
                                    while (true) {
                                        int unsignedByte3 = getUnsignedByte(loadBinaryFile, i38);
                                        hashMap4 = hashMap5;
                                        i18 = i38 + 1;
                                        arrayList4 = arrayList5;
                                        if (unsignedByte3 > 0) {
                                            sb4.append((char) ((byte) unsignedByte3));
                                        }
                                        if (i18 >= loadBinaryFile.length) {
                                            unsignedByte3 = -1;
                                        }
                                        if (unsignedByte3 <= 0) {
                                            break;
                                        }
                                        i38 = i18;
                                        hashMap5 = hashMap4;
                                        arrayList5 = arrayList4;
                                    }
                                    int shortInt6 = getShortInt(loadBinaryFile, i18);
                                    int i39 = i38 + 3;
                                    String sb5 = sb4.toString();
                                    for (int i40 = 0; i40 < shortInt6; i40++) {
                                        int shortInt7 = getShortInt(loadBinaryFile, i39);
                                        i39 += 2;
                                        strArr4[shortInt7] = sb5;
                                    }
                                } else {
                                    arrayList4 = arrayList5;
                                    str5 = str7;
                                    hashMap4 = hashMap5;
                                }
                                i33 = i35 + (i37 - 6);
                                str7 = str5;
                                hashMap5 = hashMap4;
                                arrayList5 = arrayList4;
                            }
                            arrayList3 = arrayList5;
                            str4 = str7;
                            hashMap3 = hashMap5;
                            strArr7 = strArr4;
                            z10 = true;
                        } else {
                            arrayList3 = arrayList5;
                            str4 = str7;
                            hashMap3 = hashMap5;
                        }
                        if (i28 == 16704) {
                            int shortInt8 = getShortInt(loadBinaryFile, i27);
                            i27 += 2;
                            for (int i41 = 0; i41 < shortInt8; i41++) {
                                float intBitsToFloat7 = Float.intBitsToFloat(getInt(loadBinaryFile, i27));
                                float intBitsToFloat8 = Float.intBitsToFloat(getInt(loadBinaryFile, i27 + 4));
                                i27 += 8;
                                float[] fArr8 = fArr5[i23];
                                fArr8[3] = intBitsToFloat7;
                                fArr8[4] = intBitsToFloat8;
                                i23++;
                            }
                            z10 = false;
                        }
                        if (i28 == 45055) {
                            int i42 = i27;
                            while (i42 < (i27 + i29) - 6 && i42 < loadBinaryFile.length) {
                                getChunkHeader(loadBinaryFile, i42, iArr5);
                                int i43 = i42 + 6;
                                int i44 = iArr5[0];
                                int i45 = 1;
                                int i46 = iArr5[1];
                                if (i44 == 40960) {
                                    StringBuilder sb6 = new StringBuilder(40);
                                    int i47 = i43;
                                    i16 = i27;
                                    while (true) {
                                        int unsignedByte4 = getUnsignedByte(loadBinaryFile, i47);
                                        i47 += i45;
                                        if (unsignedByte4 > 0) {
                                            sb6.append((char) ((byte) unsignedByte4));
                                        }
                                        if (i47 >= loadBinaryFile.length) {
                                            unsignedByte4 = -1;
                                        }
                                        if (unsignedByte4 <= 0) {
                                            break;
                                        }
                                        i45 = 1;
                                    }
                                    strArr5[i26] = sb6.toString();
                                    Logger.log("Processing new material " + strArr5[i26] + "!", 2);
                                } else {
                                    i16 = i27;
                                }
                                if (i44 == 40992) {
                                    int i48 = i42 + 12;
                                    if (i46 == 24 && !Config.oldStyle3DSLoader) {
                                        int intBitsToFloat9 = (int) (Float.intBitsToFloat(getInt(loadBinaryFile, i48)) * 255.0f);
                                        int intBitsToFloat10 = (int) (Float.intBitsToFloat(getInt(loadBinaryFile, i42 + 16)) * 255.0f);
                                        int intBitsToFloat11 = (int) (Float.intBitsToFloat(getInt(loadBinaryFile, i42 + 20)) * 255.0f);
                                        if (intBitsToFloat9 < 0) {
                                            intBitsToFloat9 = 0;
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (intBitsToFloat10 < 0) {
                                            intBitsToFloat10 = 0;
                                            z11 = true;
                                        }
                                        if (intBitsToFloat11 < 0) {
                                            intBitsToFloat11 = 0;
                                            z12 = true;
                                        } else {
                                            z12 = z11;
                                        }
                                        if (intBitsToFloat9 > 255) {
                                            intBitsToFloat9 = 255;
                                            z12 = true;
                                        }
                                        if (intBitsToFloat10 > 255) {
                                            intBitsToFloat10 = 255;
                                            z12 = true;
                                        }
                                        if (intBitsToFloat11 > 255) {
                                            intBitsToFloat11 = 255;
                                            z12 = true;
                                        }
                                        if (z12) {
                                            i17 = i28;
                                            Logger.log("Error reading material's diffuse color...try Config.oldStyle3DSLoader=true!", 1);
                                        } else {
                                            i17 = i28;
                                        }
                                        rGBColorArr2[i26] = new RGBColor(intBitsToFloat9, intBitsToFloat10, intBitsToFloat11);
                                    } else {
                                        i17 = i28;
                                        rGBColorArr2[i26] = new RGBColor(getUnsignedByte(loadBinaryFile, i48), getUnsignedByte(loadBinaryFile, i42 + 13), getUnsignedByte(loadBinaryFile, i42 + 14));
                                    }
                                } else {
                                    i17 = i28;
                                }
                                if (i44 == 41040) {
                                    int shortInt9 = 100 - getShortInt(loadBinaryFile, i42 + 12);
                                    if (shortInt9 < 0) {
                                        shortInt9 = 0;
                                    }
                                    if (shortInt9 > 100) {
                                        shortInt9 = 100;
                                    }
                                    iArr6[i26] = shortInt9 == 100 ? -1 : shortInt9 / 10;
                                }
                                if (i44 == 41472) {
                                    int i49 = i43;
                                    while (i49 < (i43 + i29) - 6 && i49 < loadBinaryFile.length) {
                                        getChunkHeader(loadBinaryFile, i49, iArr5);
                                        int i50 = i49 + 6;
                                        int i51 = iArr5[0];
                                        int i52 = 1;
                                        int i53 = iArr5[1];
                                        if (i51 == 41728) {
                                            StringBuilder sb7 = new StringBuilder(40);
                                            int i54 = i50;
                                            while (true) {
                                                int unsignedByte5 = getUnsignedByte(loadBinaryFile, i54);
                                                i54 += i52;
                                                if (unsignedByte5 > 0) {
                                                    sb7.append((char) ((byte) unsignedByte5));
                                                }
                                                if (i54 >= loadBinaryFile.length) {
                                                    unsignedByte5 = -1;
                                                }
                                                if (unsignedByte5 <= 0) {
                                                    break;
                                                }
                                                i52 = 1;
                                            }
                                            String sb8 = sb7.toString();
                                            if (!TextureManager.getInstance().containsTexture(sb8)) {
                                                TextureManager.getInstance().addTexture(sb8);
                                                Logger.log("Texture named " + sb8 + " added to TextureManager!", 2);
                                            }
                                            strArr6[i26] = sb8;
                                        }
                                        if (i51 == 41812) {
                                            fArr3[i26][0] = Float.intBitsToFloat(getInt(loadBinaryFile, i50));
                                        }
                                        if (i51 == 41814) {
                                            fArr3[i26][1] = Float.intBitsToFloat(getInt(loadBinaryFile, i50));
                                        }
                                        if (i51 == 41816) {
                                            fArr3[i26][2] = Float.intBitsToFloat(getInt(loadBinaryFile, i50));
                                        }
                                        if (i51 == 41818) {
                                            fArr3[i26][3] = Float.intBitsToFloat(getInt(loadBinaryFile, i50));
                                        }
                                        i49 = i50 + (i53 - 6);
                                    }
                                }
                                i42 = i43 + (i46 - 6);
                                i27 = i16;
                                i28 = i17;
                            }
                            i14 = i27;
                            i15 = i28;
                            int i55 = i26 + 1;
                            if (i55 >= strArr5.length) {
                                int length = strArr5.length + 10;
                                String[] strArr8 = new String[length];
                                String[] strArr9 = new String[length];
                                RGBColor[] rGBColorArr3 = new RGBColor[length];
                                int[] iArr11 = new int[length];
                                int i56 = 0;
                                float[][] fArr9 = (float[][]) Array.newInstance(Float.TYPE, length, 4);
                                System.arraycopy(strArr5, 0, strArr8, 0, i55);
                                System.arraycopy(strArr6, 0, strArr9, 0, i55);
                                System.arraycopy(rGBColorArr2, 0, rGBColorArr3, 0, i55);
                                System.arraycopy(iArr6, 0, iArr11, 0, i55);
                                int i57 = 0;
                                while (i57 < fArr3.length) {
                                    System.arraycopy(fArr3[i57], i56, fArr9[i57], i56, 4);
                                    i57++;
                                    i56 = 0;
                                }
                                for (int i58 = i55; i58 < fArr9.length; i58++) {
                                    float[] fArr10 = fArr9[i58];
                                    fArr10[i56] = 1.0f;
                                    fArr10[1] = 1.0f;
                                    fArr10[2] = 0.0f;
                                    fArr10[3] = 0.0f;
                                    iArr11[i58] = 1000;
                                }
                                fArr3 = fArr9;
                                strArr5 = strArr8;
                                strArr6 = strArr9;
                                rGBColorArr2 = rGBColorArr3;
                                iArr6 = iArr11;
                            }
                            i26 = i55;
                            z10 = true;
                        } else {
                            i14 = i27;
                            i15 = i28;
                        }
                        int i59 = i15;
                        if (i59 == 15677 || i59 == 45056 || i59 == 45058) {
                            z10 = false;
                        }
                        if (z10) {
                            i27 = (i14 + i29) - 6 >= loadBinaryFile.length ? loadBinaryFile.length : i14 + (i29 - 6);
                            i22 = i59;
                            iArr4 = iArr3;
                        } else {
                            i22 = i59;
                            iArr4 = iArr3;
                            i27 = i14;
                        }
                        str7 = str4;
                    }
                    hashMap5 = hashMap3;
                    arrayList5 = arrayList3;
                    i19 = 2;
                    c10 = 1;
                    i20 = 0;
                }
                arrayList = arrayList5;
                hashMap = hashMap5;
                iArr2 = iArr8;
                fArr = fArr3;
                str2 = str7;
                fArr2 = fArr5;
                strArr = strArr5;
                strArr2 = strArr6;
                rGBColorArr = rGBColorArr2;
                iArr = iArr6;
                i10 = i24;
                i11 = i25;
                strArr3 = strArr7;
                i12 = i26;
                if (i10 != 0 || i11 == 0) {
                    arrayList2 = arrayList;
                } else {
                    arrayList2 = arrayList;
                    arrayList2.add(create3DSObject(str2, fArr2, i10, iArr2, i11, strArr, strArr2, fArr, strArr3, rGBColorArr, iArr, i12));
                }
                if (Config.useRotationPivotFrom3DS) {
                    int i60 = 0;
                    while (i60 < arrayList2.size()) {
                        Object3D object3D = (Object3D) arrayList2.get(i60);
                        String name = object3D.getName();
                        int indexOf = name.indexOf("_jPCT");
                        if (indexOf != -1) {
                            hashMap2 = hashMap;
                            SimpleVector simpleVector = (SimpleVector) hashMap2.get(name.substring(0, indexOf));
                            if (simpleVector != null) {
                                object3D.setRotationPivot(simpleVector);
                                object3D.skipPivot = true;
                                Logger.log("Setting rotation pivot of object " + name + " to " + ((Object) simpleVector), 2);
                            }
                        } else {
                            hashMap2 = hashMap;
                        }
                        i60++;
                        hashMap = hashMap2;
                    }
                }
                size = arrayList2.size();
                Object3D[] object3DArr = new Object3D[size];
                for (i13 = 0; i13 < size; i13++) {
                    object3DArr[i13] = (Object3D) arrayList2.get(i13);
                }
                return object3DArr;
            }
            Logger.log("Not a valid 3DS file!", i20);
        }
        arrayList = arrayList5;
        hashMap = hashMap5;
        fArr = fArr3;
        strArr = strArr5;
        strArr2 = strArr6;
        rGBColorArr = rGBColorArr2;
        iArr = iArr6;
        str2 = "";
        fArr2 = null;
        iArr2 = null;
        strArr3 = null;
        i10 = 0;
        i11 = 0;
        i12 = 0;
        if (i10 != 0) {
        }
        arrayList2 = arrayList;
        if (Config.useRotationPivotFrom3DS) {
        }
        size = arrayList2.size();
        Object3D[] object3DArr2 = new Object3D[size];
        while (i13 < size) {
        }
        return object3DArr2;
    }

    private static Object3D loadASC(URL url, String str, InputStream inputStream, float f10, boolean z10) {
        float[] fArr;
        float[] fArr2;
        boolean z11;
        String str2;
        boolean z12;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        String trim;
        int i10 = -1;
        Object3D object3D = new Object3D(-1);
        int i11 = Config.loadMaxVerticesASC;
        float[] fArr3 = new float[i11];
        float[] fArr4 = new float[i11];
        float[] fArr5 = new float[i11];
        int i12 = Config.loadMaxTrianglesASC;
        int[] iArr = new int[i12];
        int[] iArr2 = new int[i12];
        int[] iArr3 = new int[i12];
        float[] fArr6 = new float[1];
        float[] fArr7 = new float[1];
        String loadTextFile = loadTextFile(url, str, inputStream);
        if (!loadTextFile.endsWith("\n")) {
            loadTextFile = loadTextFile + "\n";
        }
        if (loadTextFile.equals("error")) {
            return null;
        }
        Logger.log("Parsing Objectfile!", 2);
        int i13 = 0;
        if (loadTextFile.indexOf("U:") != -1) {
            int i14 = Config.loadMaxTrianglesASC;
            Logger.log("Objectfile contains additional Texture coordinates!", 2);
            fArr2 = new float[i14];
            fArr = new float[i14];
            z11 = true;
        } else {
            fArr = fArr6;
            fArr2 = fArr7;
            z11 = false;
        }
        int indexOf = loadTextFile.indexOf("\n", loadTextFile.indexOf("Vertex list") + 10);
        String str3 = "";
        boolean z13 = z11;
        String str4 = "U:";
        int i15 = 1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        String str5 = "";
        while (true) {
            str2 = " / Vertices: ";
            String str6 = str5;
            int i20 = 8;
            if (indexOf == i10) {
                break;
            }
            int[] iArr4 = iArr2;
            int[] iArr5 = iArr;
            String str7 = " / Vertices: ";
            float[] fArr8 = fArr5;
            float[] fArr9 = fArr4;
            int i21 = i16;
            int i22 = i17;
            int[] iArr6 = iArr3;
            float[] fArr10 = fArr3;
            Object3D object3D2 = object3D;
            String str8 = str6;
            while (indexOf != i10) {
                int i23 = i15;
                String str9 = str7;
                int i24 = indexOf + 1;
                indexOf = loadTextFile.indexOf("\n", i24);
                int i25 = indexOf + 1;
                String substring = loadTextFile.substring(i24, i25);
                if (substring.indexOf("X:") != -1) {
                    int indexOf2 = substring.indexOf("X:", i20) + 2;
                    int indexOf3 = substring.indexOf("Y:", indexOf2);
                    String trim2 = substring.substring(indexOf2, indexOf3).trim();
                    int i26 = indexOf3 + 2;
                    int indexOf4 = substring.indexOf("Z:", i26);
                    String trim3 = substring.substring(i26, indexOf4).trim();
                    int i27 = indexOf4 + 2;
                    String str10 = str4;
                    int indexOf5 = substring.indexOf(str10, i27);
                    if (indexOf5 != -1) {
                        trim = substring.substring(i27, indexOf5).trim();
                        int i28 = indexOf5 + 2;
                        int indexOf6 = substring.indexOf("V:", i28);
                        str3 = substring.substring(i28, indexOf6).trim();
                        int i29 = indexOf6 + 2;
                        str8 = substring.substring(i29, substring.indexOf("\n", i29)).trim();
                        z13 = true;
                    } else {
                        trim = substring.substring(i27, substring.indexOf("\n", i27)).trim();
                        z13 = false;
                    }
                    if (z10) {
                        Float valueOf = Float.valueOf(trim2);
                        Float valueOf2 = Float.valueOf(trim3);
                        Float valueOf3 = Float.valueOf(trim);
                        fArr10[i16] = valueOf.floatValue() * f10;
                        fArr9[i16] = (-valueOf3.floatValue()) * f10;
                        fArr8[i16] = valueOf2.floatValue() * f10;
                    } else {
                        Float valueOf4 = Float.valueOf(trim2);
                        Float valueOf5 = Float.valueOf(trim3);
                        Float valueOf6 = Float.valueOf(trim);
                        fArr10[i16] = valueOf4.floatValue() * f10;
                        fArr9[i16] = (-valueOf5.floatValue()) * f10;
                        fArr8[i16] = (-valueOf6.floatValue()) * f10;
                    }
                    if (z13) {
                        fArr[i16] = Float.valueOf(str3).floatValue();
                        fArr2[i16] = Float.valueOf(str8).floatValue();
                    }
                    i16++;
                    i19 = i24;
                    str4 = str10;
                    i18 = i25;
                    i15 = i23;
                    str7 = str9;
                    i10 = -1;
                } else {
                    i19 = i24;
                    str4 = str4;
                    i18 = i25;
                    i15 = i23;
                    str7 = str9;
                    if (substring.indexOf("Face list") != -1) {
                        i10 = -1;
                        indexOf = -1;
                    } else {
                        i10 = -1;
                    }
                }
                i20 = 8;
            }
            int i30 = i18 - 1;
            int i31 = i19;
            i17 = i22;
            while (i30 != i10) {
                int i32 = i15;
                String str11 = str7;
                i31 = i30 + 1;
                i30 = loadTextFile.indexOf("\n", i31);
                int i33 = i30 + 1;
                String substring2 = loadTextFile.substring(i31, i33);
                if (substring2.indexOf("A:") != i10) {
                    int indexOf7 = substring2.indexOf("A:", 5) + 2;
                    int indexOf8 = substring2.indexOf("B:", indexOf7);
                    String trim4 = substring2.substring(indexOf7, indexOf8).trim();
                    int i34 = indexOf8 + 2;
                    int indexOf9 = substring2.indexOf("C:", i34);
                    String trim5 = substring2.substring(i34, indexOf9).trim();
                    int i35 = indexOf9 + 2;
                    String trim6 = substring2.substring(i35, substring2.indexOf("AB:", i35)).trim();
                    Integer valueOf7 = Integer.valueOf(trim4);
                    Integer valueOf8 = Integer.valueOf(trim5);
                    Integer valueOf9 = Integer.valueOf(trim6);
                    iArr5[i17] = valueOf7.intValue() + i21;
                    iArr4[i17] = valueOf8.intValue() + i21;
                    iArr6[i17] = valueOf9.intValue() + i21;
                    i17++;
                    i15 = i32;
                    i18 = i33;
                    str7 = str11;
                } else {
                    if (substring2.indexOf("Vertex list") != -1) {
                        i30 = -1;
                    }
                    i15 = i32;
                    i18 = i33;
                    str7 = str11;
                    if (i33 >= loadTextFile.length()) {
                        i10 = -1;
                        i30 = -1;
                    }
                }
                i10 = -1;
            }
            StringBuilder sb2 = new StringBuilder("Part: ");
            int i36 = i15;
            sb2.append(i36);
            sb2.append(" / Faces: ");
            sb2.append(i17);
            sb2.append(str7);
            sb2.append(i16);
            Logger.log(sb2.toString(), 2);
            i15 = i36 + 1;
            indexOf = loadTextFile.indexOf("Vertex list", i31);
            str5 = str8;
            i19 = i31;
            fArr3 = fArr10;
            object3D = object3D2;
            iArr3 = iArr6;
            iArr2 = iArr4;
            iArr = iArr5;
            fArr5 = fArr8;
            fArr4 = fArr9;
        }
        Mesh mesh = new Mesh((((i17 * 2) + 1) * 3) + 8);
        object3D.objMesh = mesh;
        int i37 = i17 + 1;
        object3D.objVectors = new Vectors((i37 * 3) + 8, mesh);
        object3D.texture = new int[i37];
        if (!optimize) {
            object3D.disableVertexSharing();
        }
        int i38 = 0;
        while (i38 < i17) {
            if (z13) {
                z12 = true;
                int i39 = iArr[i38];
                float f17 = fArr[i39] * 1.0f;
                float f18 = 1.0f - (fArr2[i39] * 1.0f);
                int i40 = iArr2[i38];
                float f19 = fArr[i40] * 1.0f;
                float f20 = 1.0f - (fArr2[i40] * 1.0f);
                int i41 = iArr3[i38];
                float f21 = fArr[i41] * 1.0f;
                float f22 = 1.0f - (fArr2[i41] * 1.0f);
                if (f17 < 0.0f) {
                    f17 = 0.0f;
                }
                if (f17 > 1.0f) {
                    f17 = 1.0f;
                }
                if (f18 < 0.0f) {
                    f18 = 0.0f;
                }
                if (f18 > 1.0f) {
                    f18 = 1.0f;
                }
                if (f19 < 0.0f) {
                    f19 = 0.0f;
                }
                if (f19 > 1.0f) {
                    f19 = 1.0f;
                }
                if (f20 < 0.0f) {
                    f20 = 0.0f;
                }
                if (f20 > 1.0f) {
                    f20 = 1.0f;
                }
                if (f21 < 0.0f) {
                    f21 = 0.0f;
                }
                if (f21 > 1.0f) {
                    f21 = 1.0f;
                }
                float f23 = f22 >= 0.0f ? f22 : 0.0f;
                f11 = f23 > 1.0f ? 1.0f : f23;
                f12 = f17;
                f13 = f20;
                f14 = f19;
                f15 = f21;
                f16 = f18;
            } else {
                z12 = true;
                if ((i38 & 1) == 1) {
                    f14 = 1.0f;
                    f11 = 1.0f;
                    f12 = 0.0f;
                    f16 = 0.0f;
                    f13 = 0.0f;
                    f15 = 0.0f;
                } else {
                    f12 = 1.0f;
                    f14 = 1.0f;
                    f13 = 1.0f;
                    f11 = 1.0f;
                    f16 = 0.0f;
                    f15 = 0.0f;
                }
            }
            int i42 = iArr[i38];
            float f24 = fArr3[i42];
            float f25 = fArr4[i42];
            float f26 = fArr5[i42];
            int i43 = iArr2[i38];
            float f27 = fArr3[i43];
            float f28 = fArr4[i43];
            float f29 = fArr5[i43];
            int i44 = iArr3[i38];
            float[] fArr11 = fArr4;
            i13 = object3D.addTriangle(f24, f25, f26, f12, f16, f27, f28, f29, f14, f13, fArr3[i44], fArr4[i44], fArr5[i44], f15, f11, 0, 0, false);
            i38++;
            fArr3 = fArr3;
            object3D = object3D;
            str2 = str2;
            i16 = i16;
            i17 = i17;
            iArr3 = iArr3;
            iArr2 = iArr2;
            iArr = iArr;
            fArr5 = fArr5;
            fArr4 = fArr11;
        }
        Logger.log("Loaded Object3D: Faces: " + i17 + str2 + i16, 2);
        Logger.log("Optimized Object3D: Faces: " + (i13 + 1) + str2 + object3D.objMesh.anzCoords, 2);
        return object3D;
    }

    private static byte[] loadBinaryFile(URL url, String str, InputStream inputStream, int i10, String[] strArr) {
        int read;
        int i11;
        int read2;
        byte[] bArr = new byte[i10];
        if (str == null) {
            str = "from InputStream";
        }
        try {
            try {
                Logger.log("Loading file " + str, 2);
                if (inputStream == null) {
                    if (url == null) {
                        inputStream = new FileInputStream(new File(str));
                    } else {
                        inputStream = new URL(url, str).openStream();
                    }
                }
                if (strArr == null) {
                    byte[] bArr2 = bArr;
                    i11 = 0;
                    int i12 = 0;
                    int i13 = i10;
                    do {
                        read2 = inputStream.read(bArr2, i11, i10 - i11);
                        if (read2 > 0) {
                            i11 += read2;
                        }
                        if (read2 != -1 && i11 >= i10) {
                            i12++;
                            if (i12 == 10) {
                                i13 *= 10;
                            }
                            i10 += i13;
                            byte[] bArr3 = new byte[i10];
                            System.arraycopy(bArr2, 0, bArr3, 0, i10 - i13);
                            Logger.log("Expanding buffers..." + i10 + " bytes", 2);
                            bArr2 = bArr3;
                        }
                    } while (read2 > 0);
                    Logger.log("File " + str + " loaded..." + i11 + " bytes", 2);
                    bArr = bArr2;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    do {
                        read = inputStream.read(bArr, 0, i10);
                        if (read > 0) {
                            sb2.append(new String(bArr, 0, read));
                        }
                    } while (read > 0);
                    strArr[0] = sb2.toString();
                    Logger.log("Text file " + str + " loaded..." + sb2.length() + " bytes", 2);
                    i11 = 0;
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                }
                if (strArr != null) {
                    return null;
                }
                byte[] bArr4 = new byte[i11];
                System.arraycopy(bArr, 0, bArr4, 0, i11);
                return bArr4;
            } catch (Throwable unused2) {
                Logger.log("Couldn't read file " + str, 0);
                byte[] bArr5 = new byte[0];
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                return bArr5;
            }
        } catch (Throwable th2) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused4) {
                }
            }
            throw th2;
        }
    }

    private static Object3D loadMD2(URL url, String str, InputStream inputStream, float f10) {
        Vector[] vectorArr;
        byte[] loadBinaryFile = loadBinaryFile(url, str, inputStream, 8192);
        if (loadBinaryFile == null) {
            return null;
        }
        int i10 = getInt(loadBinaryFile, 0);
        if (i10 != 844121161) {
            Logger.log("Not a valid MD2-file!", 0);
        }
        int i11 = getInt(loadBinaryFile, 4);
        int i12 = getInt(loadBinaryFile, 8);
        int i13 = getInt(loadBinaryFile, 12);
        int i14 = getInt(loadBinaryFile, 16);
        int i15 = getInt(loadBinaryFile, 20);
        int i16 = getInt(loadBinaryFile, 24);
        int i17 = getInt(loadBinaryFile, 28);
        int i18 = getInt(loadBinaryFile, 32);
        int i19 = getInt(loadBinaryFile, 36);
        int i20 = getInt(loadBinaryFile, 40);
        int i21 = getInt(loadBinaryFile, 48);
        int i22 = getInt(loadBinaryFile, 52);
        int i23 = getInt(loadBinaryFile, 56);
        Logger.log("Magic number: " + i10, 2);
        Logger.log("Version: " + i11, 2);
        Logger.log("Skin width: " + i12, 2);
        Logger.log("Skin height: " + i13, 2);
        Logger.log("Frame size: " + i14, 2);
        Logger.log("Number of skins: " + i15, 2);
        Logger.log("Number of Vertices: " + i16, 2);
        Logger.log("Number of Texture coordinates: " + i17, 2);
        Logger.log("Number of triangles: " + i18, 2);
        Logger.log("Number of GL-commands: " + i19, 2);
        Logger.log("Number of Frames: " + i20, 2);
        char c10 = 1;
        Class<Integer> cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance(cls, i17, 2);
        int i24 = 3;
        int[][] iArr2 = (int[][]) Array.newInstance(cls, i18, 3);
        int i25 = 2;
        int[][] iArr3 = (int[][]) Array.newInstance(cls, i18, 3);
        Logger.log("Reading Texture coordinates...", 2);
        int i26 = 0;
        while (i26 < i17) {
            int[][] iArr4 = iArr;
            int i27 = i12;
            int i28 = i13;
            int i29 = i23;
            int i30 = i25;
            int i31 = i24;
            byte[] bArr = loadBinaryFile;
            int i32 = i21 + (i26 * 4);
            int shortInt = getShortInt(bArr, i32);
            int shortInt2 = getShortInt(bArr, i32 + i30);
            int[] iArr5 = iArr4[i26];
            iArr5[0] = shortInt;
            iArr5[1] = shortInt2;
            i26++;
            loadBinaryFile = bArr;
            i24 = i31;
            c10 = 1;
            i25 = i30;
            i14 = i14;
            i23 = i29;
            iArr = iArr4;
            i12 = i27;
            i13 = i28;
        }
        String str2 = "Done!";
        Logger.log("Done!", i25);
        Logger.log("Reading polygonal data...", i25);
        int i33 = 0;
        while (i33 < i18) {
            int i34 = i24;
            int i35 = i12;
            int i36 = i13;
            int i37 = i23;
            int i38 = i14;
            String str3 = str2;
            int i39 = i18;
            byte[] bArr2 = loadBinaryFile;
            int i40 = i22 + (i33 * 12);
            int shortInt3 = getShortInt(bArr2, i40);
            int shortInt4 = getShortInt(bArr2, i40 + 2);
            int shortInt5 = getShortInt(bArr2, i40 + 4);
            int shortInt6 = getShortInt(bArr2, i40 + 6);
            int shortInt7 = getShortInt(bArr2, i40 + 8);
            int shortInt8 = getShortInt(bArr2, i40 + 10);
            int[] iArr6 = iArr2[i33];
            iArr6[0] = shortInt3;
            iArr6[1] = shortInt4;
            iArr6[2] = shortInt5;
            int[] iArr7 = iArr3[i33];
            iArr7[0] = shortInt6;
            iArr7[1] = shortInt7;
            iArr7[2] = shortInt8;
            i33++;
            loadBinaryFile = bArr2;
            i24 = i34;
            i25 = 2;
            i14 = i38;
            i23 = i37;
            iArr = iArr;
            str2 = str3;
            i12 = i35;
            i13 = i36;
            i18 = i39;
            i20 = i20;
            c10 = 1;
        }
        Logger.log(str2, i25);
        int[] iArr8 = new int[i25];
        iArr8[c10] = i24;
        iArr8[0] = i20;
        Class<Float> cls2 = Float.TYPE;
        float[][] fArr = (float[][]) Array.newInstance(cls2, iArr8);
        int[] iArr9 = new int[i25];
        iArr9[c10] = 3;
        iArr9[0] = i20;
        float[][] fArr2 = (float[][]) Array.newInstance(cls2, iArr9);
        String[] strArr = new String[i20];
        byte[] bArr3 = loadBinaryFile;
        int[] iArr10 = new int[3];
        int i41 = i23;
        int i42 = 2;
        iArr10[2] = 3;
        iArr10[c10] = i16;
        iArr10[0] = i20;
        int[][][] iArr11 = (int[][][]) Array.newInstance(Integer.TYPE, iArr10);
        Logger.log("Reading keyframes...", 2);
        int i43 = 0;
        while (i43 < i20) {
            int[][][] iArr12 = iArr11;
            float[][] fArr3 = fArr2;
            int i44 = i12;
            int i45 = i13;
            String str4 = str2;
            int i46 = i18;
            int i47 = i20;
            int i48 = (i43 * i14) + i41;
            byte[] bArr4 = bArr3;
            float intBitsToFloat = Float.intBitsToFloat(getInt(bArr4, i48));
            float intBitsToFloat2 = Float.intBitsToFloat(getInt(bArr4, i48 + 4));
            float intBitsToFloat3 = Float.intBitsToFloat(getInt(bArr4, i48 + 8));
            float intBitsToFloat4 = Float.intBitsToFloat(getInt(bArr4, i48 + 12));
            float intBitsToFloat5 = Float.intBitsToFloat(getInt(bArr4, i48 + 16));
            float intBitsToFloat6 = Float.intBitsToFloat(getInt(bArr4, i48 + 20));
            int i49 = i14;
            int[][] iArr13 = iArr;
            String str5 = new String(bArr4, i48 + 24, 16);
            float[] fArr4 = fArr[i43];
            fArr4[0] = intBitsToFloat;
            fArr4[1] = intBitsToFloat2;
            fArr4[2] = intBitsToFloat3;
            float[] fArr5 = fArr3[i43];
            fArr5[0] = intBitsToFloat4;
            fArr5[1] = intBitsToFloat5;
            fArr5[2] = intBitsToFloat6;
            strArr[i43] = str5;
            int i50 = i48 + 40;
            for (int i51 = 0; i51 < i16; i51++) {
                int i52 = (i51 * 4) + i50;
                int unsignedByte = getUnsignedByte(bArr4, i52);
                int unsignedByte2 = getUnsignedByte(bArr4, i52 + 1);
                int unsignedByte3 = getUnsignedByte(bArr4, i52 + 2);
                int[] iArr14 = iArr12[i43][i51];
                iArr14[0] = unsignedByte;
                iArr14[1] = unsignedByte2;
                iArr14[2] = unsignedByte3;
            }
            i43++;
            i14 = i49;
            iArr = iArr13;
            iArr11 = iArr12;
            str2 = str4;
            i12 = i44;
            i13 = i45;
            i18 = i46;
            i20 = i47;
            i42 = 2;
            bArr3 = bArr4;
            fArr2 = fArr3;
        }
        Logger.log(str2, i42);
        Logger.log("Coverting MD2-format into jPCT-format...", i42);
        int i53 = i18 + 1;
        Object3D object3D = new Object3D(i53);
        Object3D object3D2 = new Object3D(i53);
        Animation animation = new Animation(i20);
        int[][][] iArr15 = iArr11;
        float[][] fArr6 = fArr2;
        Object obj = "dummy";
        Vector[] vectorArr2 = null;
        int i54 = 0;
        while (i54 < i20) {
            object3D2.clearObject();
            String str6 = str2;
            int i55 = 0;
            while (i55 < i16) {
                Vector[] vectorArr3 = vectorArr2;
                Object obj2 = obj;
                Animation animation2 = animation;
                int i56 = i12;
                int i57 = i13;
                int i58 = i18;
                int i59 = i20;
                float f11 = iArr15[i54][i55][0];
                float[] fArr7 = fArr[i54];
                float f12 = f11 * fArr7[0];
                float[] fArr8 = fArr6[i54];
                float f13 = (f12 + fArr8[0]) * f10;
                float f14 = ((r0[1] * fArr7[1]) + fArr8[1]) * f10;
                float f15 = -(((r0[2] * fArr7[2]) + fArr8[2]) * f10);
                object3D2.objVectors.addVertex(f13, f15, f14);
                if (i54 == 0) {
                    object3D.objVectors.addVertex(f13, f15, f14);
                }
                i55++;
                animation = animation2;
                vectorArr2 = vectorArr3;
                obj = obj2;
                i12 = i56;
                i13 = i57;
                i18 = i58;
                i20 = i59;
            }
            int i60 = 0;
            while (i60 < i18) {
                int[] iArr16 = iArr2[i60];
                int i61 = iArr16[0];
                int i62 = iArr16[2];
                int i63 = iArr16[1];
                int[] iArr17 = iArr3[i60];
                int i64 = iArr17[0];
                int i65 = iArr17[2];
                int i66 = iArr17[1];
                int[] iArr18 = iArr[i64];
                Vector[] vectorArr4 = vectorArr2;
                Object obj3 = obj;
                float f16 = i12;
                float f17 = iArr18[0] / f16;
                Animation animation3 = animation;
                int i67 = i12;
                float f18 = i13;
                float f19 = iArr18[1] / f18;
                int[] iArr19 = iArr[i65];
                int i68 = i13;
                float f20 = iArr19[0] / f16;
                int i69 = i18;
                float f21 = iArr19[1] / f18;
                int[] iArr20 = iArr[i66];
                int i70 = i20;
                float f22 = iArr20[0] / f16;
                float f23 = iArr20[1] / f18;
                if (i54 == 0) {
                    object3D.addMD2Triangle(i61, f17, f19, i62, f20, f21, i63, f22, f23);
                }
                object3D2.addMD2Triangle(i61, f17, f19, i62, f20, f21, i63, f22, f23);
                i60++;
                animation = animation3;
                vectorArr2 = vectorArr4;
                obj = obj3;
                i12 = i67;
                i13 = i68;
                i18 = i69;
                i20 = i70;
            }
            object3D2.calcBoundingBox();
            Vector[] calcNormalsMD2 = object3D2.objMesh.calcNormalsMD2(vectorArr2);
            String sequenceName = getSequenceName(strArr[i54]);
            if (sequenceName.equals(obj)) {
                vectorArr = calcNormalsMD2;
            } else {
                vectorArr = calcNormalsMD2;
                Logger.log("Processing: " + sequenceName + "...", 2);
                animation.createSubSequence(sequenceName);
                obj = sequenceName;
            }
            animation.addKeyFrame(object3D2.getMesh().cloneMesh(true));
            i54++;
            vectorArr2 = vectorArr;
            str2 = str6;
        }
        object3D.calcBoundingBox();
        object3D.setAnimationSequence(animation);
        Logger.log(str2, 2);
        return object3D;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04e3 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x069d  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0478  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object3D[] loadOBJ(URL url, String str, String str2, InputStream inputStream, InputStream inputStream2, float f10) {
        String replace;
        String str3;
        HashMap hashMap;
        float[][] fArr;
        int[] iArr;
        int[] iArr2;
        int i10;
        String str4;
        String str5;
        String str6;
        String str7;
        int i11;
        int i12;
        float[][] fArr2;
        String str8;
        int i13;
        String str9;
        String str10;
        StringTokenizer stringTokenizer;
        String str11;
        String[] strArr;
        int i14;
        int i15;
        String str12;
        int i16;
        int i17;
        int i18;
        boolean z10;
        boolean z11;
        int i19;
        boolean z12;
        StringTokenizer stringTokenizer2;
        String str13;
        int i20;
        int i21;
        StringTokenizer stringTokenizer3;
        RGBColor rGBColor;
        String str14;
        Float f11;
        HashMap hashMap2;
        float f12;
        char c10 = C15883c.f126249O;
        char c11 = '\t';
        if (str2 == null && inputStream2 == null) {
            replace = "";
        } else {
            replace = loadTextFile(url, str2, inputStream2).replace('\t', C15883c.f126249O);
        }
        HashMap hashMap3 = new HashMap();
        StringTokenizer stringTokenizer4 = new StringTokenizer(replace, "\n");
        float[] fArr3 = new float[3];
        TextureManager textureManager = TextureManager.getInstance();
        String str15 = null;
        String str16 = null;
        RGBColor rGBColor2 = null;
        String str17 = null;
        Float f13 = null;
        boolean z13 = true;
        boolean z14 = false;
        while (true) {
            str3 = " ";
            if (!stringTokenizer4.hasMoreTokens()) {
                break;
            }
            String str18 = replace;
            HashMap hashMap4 = hashMap3;
            if (z13) {
                str15 = stringTokenizer4.nextToken().trim();
            }
            if (z14) {
                if (z14) {
                    String lowerCase = str15.toLowerCase();
                    if (lowerCase.startsWith("kd ")) {
                        StringTokenizer stringTokenizer5 = new StringTokenizer(lowerCase.substring(3).trim(), " ");
                        int i22 = 0;
                        for (int i23 = 3; stringTokenizer5.hasMoreTokens() && i22 < i23; i23 = 3) {
                            try {
                                fArr3[i22] = Float.valueOf(stringTokenizer5.nextToken()).floatValue();
                            } catch (Exception unused) {
                                fArr3[i22] = 1.0f;
                                Logger.log("Error in MTL-file near: " + str15, 0);
                            }
                            i22++;
                        }
                        rGBColor = new RGBColor((int) (fArr3[0] * 255.0f), (int) (fArr3[1] * 255.0f), (int) (fArr3[2] * 255.0f));
                    } else if ((lowerCase.startsWith("map_kd") || lowerCase.startsWith("map_ka")) && str15.length() > 7) {
                        if (lowerCase.startsWith("map_kd")) {
                            String removeBogusData = removeBogusData(str15.substring(7).trim());
                            if (!textureManager.containsTexture(removeBogusData)) {
                                textureManager.addTexture(removeBogusData);
                                Logger.log("Texture named " + removeBogusData + " added to TextureManager!", 2);
                            }
                            str14 = removeBogusData;
                            rGBColor = rGBColor2;
                            f11 = f13;
                            if (z13 || !stringTokenizer4.hasMoreTokens()) {
                                hashMap2 = hashMap4;
                                hashMap2.put(str16, new Object[]{rGBColor, str14, f11});
                            } else {
                                hashMap2 = hashMap4;
                            }
                            rGBColor2 = rGBColor;
                            str17 = str14;
                            f13 = f11;
                            hashMap3 = hashMap2;
                            replace = str18;
                            c10 = C15883c.f126249O;
                            c11 = '\t';
                        } else {
                            String removeBogusData2 = removeBogusData(str15.substring(7).trim());
                            if (!textureManager.containsTexture(removeBogusData2)) {
                                textureManager.addTexture(removeBogusData2);
                                Logger.log("Texture named " + removeBogusData2 + " added to TextureManager!", 2);
                            }
                        }
                    } else if (lowerCase.startsWith("d ")) {
                        try {
                            f12 = Float.parseFloat(str15.substring(2).trim());
                        } catch (Exception unused2) {
                            f12 = -1.0f;
                        }
                        if (f12 != -1.0f && f12 != 1.0f) {
                            f13 = Float.valueOf(f12);
                        }
                    } else if (lowerCase.startsWith(C16175g.f130187d)) {
                        rGBColor = rGBColor2;
                        str14 = str17;
                        f11 = f13;
                        z13 = false;
                        z14 = false;
                        if (z13) {
                        }
                        hashMap2 = hashMap4;
                        hashMap2.put(str16, new Object[]{rGBColor, str14, f11});
                        rGBColor2 = rGBColor;
                        str17 = str14;
                        f13 = f11;
                        hashMap3 = hashMap2;
                        replace = str18;
                        c10 = C15883c.f126249O;
                        c11 = '\t';
                    }
                }
                rGBColor = rGBColor2;
            } else {
                if (str15.startsWith("newmtl ")) {
                    str16 = str15.substring(7).trim();
                    Logger.log("Processing new material " + str16 + "!", 2);
                    rGBColor = null;
                    str14 = null;
                    f11 = null;
                    z13 = true;
                    z14 = true;
                    if (z13) {
                    }
                    hashMap2 = hashMap4;
                    hashMap2.put(str16, new Object[]{rGBColor, str14, f11});
                    rGBColor2 = rGBColor;
                    str17 = str14;
                    f13 = f11;
                    hashMap3 = hashMap2;
                    replace = str18;
                    c10 = C15883c.f126249O;
                    c11 = '\t';
                }
                rGBColor = rGBColor2;
            }
            str14 = str17;
            f11 = f13;
            if (z13) {
            }
            hashMap2 = hashMap4;
            hashMap2.put(str16, new Object[]{rGBColor, str14, f11});
            rGBColor2 = rGBColor;
            str17 = str14;
            f13 = f11;
            hashMap3 = hashMap2;
            replace = str18;
            c10 = C15883c.f126249O;
            c11 = '\t';
        }
        String replace2 = loadTextFile(url, str, inputStream).replace(c11, c10);
        if (replace2.indexOf("o ") == -1 && replace2.indexOf("g ") == -1 && replace2.indexOf("g\n") == -1 && replace2.indexOf("o\n") == -1) {
            replace2 = "o jPCT_generated\n" + replace2;
        }
        String str19 = "v ";
        int countOcc = countOcc(replace2, "v ");
        String str20 = "vt ";
        int countOcc2 = countOcc(replace2, "vt ");
        String str21 = "f ";
        int countOcc3 = countOcc(replace2, "f ");
        int[] iArr3 = {countOcc, 3};
        Class<Float> cls = Float.TYPE;
        float[][] fArr4 = (float[][]) Array.newInstance(cls, iArr3);
        String str22 = "vn ";
        if (Config.useNormalsFromOBJ) {
            hashMap = hashMap3;
            fArr = (float[][]) Array.newInstance(cls, countOcc(replace2, "vn "), 3);
        } else {
            hashMap = hashMap3;
            fArr = null;
        }
        float[][] fArr5 = (float[][]) Array.newInstance(cls, countOcc2, 2);
        int[][][] iArr4 = (int[][][]) Array.newInstance(Integer.TYPE, countOcc3, 4, 3);
        String[] strArr2 = new String[countOcc3];
        if (optimize && fArr == null) {
            iArr = null;
            iArr2 = null;
        } else {
            int length = fArr4.length;
            int[] iArr5 = new int[length];
            int[] iArr6 = new int[3];
            int i24 = 0;
            while (i24 < length) {
                iArr5[i24] = -1;
                i24++;
                replace = replace;
                str22 = str22;
            }
            iArr = iArr5;
            iArr2 = iArr6;
        }
        StringTokenizer stringTokenizer6 = new StringTokenizer(replace2, "\n");
        ArrayList arrayList = new ArrayList();
        String str23 = null;
        String str24 = null;
        int i25 = 0;
        int i26 = 0;
        boolean z15 = false;
        boolean z16 = false;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        while (stringTokenizer6.hasMoreTokens()) {
            String trim = stringTokenizer6.nextToken().trim();
            if (trim.startsWith(str19)) {
                StringTokenizer stringTokenizer7 = new StringTokenizer(trim.substring(2).trim(), str3);
                for (int i31 = 0; stringTokenizer7.hasMoreTokens() && i31 < 3; i31++) {
                    try {
                        fArr4[i28][i31] = Float.valueOf(stringTokenizer7.nextToken()).floatValue() * f10;
                    } catch (Exception unused3) {
                        fArr4[i28][i31] = 0.0f;
                    }
                }
                i28++;
            } else if (trim.startsWith(str22) && Config.useNormalsFromOBJ) {
                StringTokenizer stringTokenizer8 = new StringTokenizer(trim.substring(2).trim(), str3);
                for (int i32 = 0; stringTokenizer8.hasMoreTokens() && i32 < 3; i32++) {
                    try {
                        fArr[i30][i32] = Float.valueOf(stringTokenizer8.nextToken()).floatValue();
                    } catch (Exception unused4) {
                        fArr[i30][i32] = 0.0f;
                    }
                }
                i30++;
            } else {
                if (trim.startsWith(str20)) {
                    str4 = replace;
                    StringTokenizer stringTokenizer9 = new StringTokenizer(trim.substring(3).trim(), str3);
                    fArr5[i27][1] = 0.0f;
                    int i33 = 0;
                    while (true) {
                        str5 = str19;
                        if (!stringTokenizer9.hasMoreTokens() || i33 >= 2) {
                            break;
                        }
                        try {
                            fArr5[i27][i33] = Float.valueOf(stringTokenizer9.nextToken()).floatValue();
                            stringTokenizer3 = stringTokenizer9;
                        } catch (Exception unused5) {
                            fArr5[i27][i33] = 0.0f;
                            stringTokenizer3 = stringTokenizer9;
                            Logger.log("Error in OBJ-file near: " + trim, 0);
                        }
                        i33++;
                        str19 = str5;
                        stringTokenizer9 = stringTokenizer3;
                    }
                    i27++;
                } else {
                    str4 = replace;
                    str5 = str19;
                    if (trim.startsWith(C16179k.f130223i) && trim.length() > 6) {
                        str24 = trim.substring(7).trim();
                    } else {
                        if (trim.startsWith(str21)) {
                            StringTokenizer stringTokenizer10 = new StringTokenizer(trim.substring(2).trim(), str3);
                            int i34 = i26;
                            boolean z17 = z15;
                            int i35 = 0;
                            while (true) {
                                z12 = z17;
                                if (!stringTokenizer10.hasMoreTokens()) {
                                    str6 = str22;
                                    stringTokenizer2 = stringTokenizer6;
                                    str13 = str21;
                                    i20 = 4;
                                    break;
                                }
                                i20 = 4;
                                if (i35 >= 4) {
                                    str6 = str22;
                                    stringTokenizer2 = stringTokenizer6;
                                    str13 = str21;
                                    break;
                                }
                                if (i35 == 3) {
                                    i34++;
                                }
                                String nextToken = stringTokenizer10.nextToken();
                                String str25 = str22;
                                StringTokenizer stringTokenizer11 = stringTokenizer6;
                                int indexOf = nextToken.indexOf("/");
                                String str26 = str21;
                                int i36 = -1;
                                if (indexOf == -1) {
                                    indexOf = nextToken.length();
                                    i21 = -1;
                                } else {
                                    i36 = nextToken.indexOf("/", indexOf + 1);
                                    i21 = -1;
                                }
                                if (i36 == i21) {
                                    i36 = nextToken.length();
                                }
                                String substring = nextToken.substring(0, indexOf);
                                int i37 = indexOf + 1;
                                String substring2 = i37 < i36 ? nextToken.substring(i37, i36) : null;
                                String substring3 = (i36 == nextToken.length() || i36 == -1) ? null : nextToken.substring(i36 + 1);
                                try {
                                    iArr4[i25][i35][0] = Integer.valueOf(substring).intValue();
                                    if (substring2 == null) {
                                        substring2 = "1";
                                    }
                                    iArr4[i25][i35][1] = Integer.valueOf(substring2).intValue();
                                    if (substring3 != null) {
                                        iArr4[i25][i35][2] = Integer.valueOf(substring3).intValue();
                                    }
                                } catch (Exception unused6) {
                                    int[] iArr7 = iArr4[i25][i35];
                                    iArr7[0] = 1;
                                    iArr7[1] = 1;
                                    iArr7[2] = 1;
                                    Logger.log("Error in OBJ-file near: " + trim, 0);
                                }
                                i35++;
                                if (i35 == 4 && stringTokenizer10.hasMoreTokens()) {
                                    str22 = str25;
                                    stringTokenizer6 = stringTokenizer11;
                                    str21 = str26;
                                    z17 = true;
                                } else {
                                    z17 = z12;
                                    str22 = str25;
                                    stringTokenizer6 = stringTokenizer11;
                                    str21 = str26;
                                }
                            }
                            for (int i38 = i35; i38 < i20; i38++) {
                                int[] iArr8 = iArr4[i25][i35];
                                iArr8[0] = -9999;
                                iArr8[1] = -9999;
                                iArr8[2] = -9999;
                            }
                            strArr2[i25] = str24;
                            i14 = i25 + 1;
                            fArr2 = fArr4;
                            str9 = str3;
                            str10 = str20;
                            i19 = i34;
                            str12 = str24;
                            stringTokenizer = stringTokenizer2;
                            str11 = str13;
                            strArr = strArr2;
                            i17 = i30;
                            i18 = i29;
                            i15 = i28;
                            i16 = i27;
                            z10 = z16;
                            z11 = z12;
                            i11 = i20;
                            str8 = str23;
                        } else {
                            str6 = str22;
                            StringTokenizer stringTokenizer12 = stringTokenizer6;
                            String str27 = str21;
                            boolean startsWith = trim.startsWith(C16179k.f130221g);
                            if (!startsWith && !trim.startsWith("g")) {
                                if (z16 || !(trim.startsWith("p ") || trim.startsWith("l ") || trim.startsWith("curv") || trim.startsWith("surf"))) {
                                    i11 = 4;
                                    str8 = str23;
                                    i14 = i25;
                                    fArr2 = fArr4;
                                    str9 = str3;
                                    str10 = str20;
                                    str12 = str24;
                                    stringTokenizer = stringTokenizer12;
                                    str11 = str27;
                                    strArr = strArr2;
                                    i17 = i30;
                                    i18 = i29;
                                    i15 = i28;
                                    i16 = i27;
                                    z10 = z16;
                                    z11 = z15;
                                    i19 = i26;
                                } else {
                                    i11 = 4;
                                    str8 = str23;
                                    i14 = i25;
                                    fArr2 = fArr4;
                                    str9 = str3;
                                    str10 = str20;
                                    z11 = z15;
                                    str12 = str24;
                                    stringTokenizer = stringTokenizer12;
                                    str11 = str27;
                                    strArr = strArr2;
                                    i19 = i26;
                                    i17 = i30;
                                    i18 = i29;
                                    i15 = i28;
                                    i16 = i27;
                                    z10 = true;
                                }
                            } else {
                                String trim2 = trim.substring(1).trim();
                                if (trim2.length() == 0 && (str23 == null || str23.length() == 0)) {
                                    trim2 = "noname";
                                } else if (trim2.length() <= 0) {
                                    str7 = str23;
                                    if (i25 - i29 <= 0) {
                                        i12 = i25;
                                        stringTokenizer = stringTokenizer12;
                                        fArr2 = fArr4;
                                        i11 = 4;
                                        str8 = str7;
                                        strArr = strArr2;
                                        i13 = 2;
                                        str11 = str27;
                                        str9 = str3;
                                        str10 = str20;
                                        arrayList.add(createOBJObject(hashMap, iArr4, fArr4, fArr5, str23 != null ? str23 : str7, strArr2, i12, i29, i27, i26, iArr, iArr2, fArr));
                                    } else {
                                        i11 = 4;
                                        i12 = i25;
                                        fArr2 = fArr4;
                                        str8 = str7;
                                        i13 = 2;
                                        str9 = str3;
                                        str10 = str20;
                                        stringTokenizer = stringTokenizer12;
                                        str11 = str27;
                                        strArr = strArr2;
                                    }
                                    int i39 = i12;
                                    if (startsWith) {
                                        for (int i40 = i29; i40 < i39; i40++) {
                                            strArr[i40] = null;
                                        }
                                    }
                                    Logger.log("Processing object from OBJ-file: " + str8, i13);
                                    i14 = i39;
                                    i15 = i28;
                                    str12 = str24;
                                    i16 = i27;
                                    i17 = i30;
                                    i18 = i14;
                                    z10 = z16;
                                    z11 = z15;
                                    i19 = 0;
                                }
                                str7 = trim2;
                                if (i25 - i29 <= 0) {
                                }
                                int i392 = i12;
                                if (startsWith) {
                                }
                                Logger.log("Processing object from OBJ-file: " + str8, i13);
                                i14 = i392;
                                i15 = i28;
                                str12 = str24;
                                i16 = i27;
                                i17 = i30;
                                i18 = i14;
                                z10 = z16;
                                z11 = z15;
                                i19 = 0;
                            }
                        }
                        if (stringTokenizer.hasMoreTokens() && i14 - i18 > 0) {
                            arrayList.add(createOBJObject(hashMap, iArr4, fArr2, fArr5, str8, strArr, i14, i18, i16, i19, iArr, iArr2, fArr));
                        }
                        i25 = i14;
                        str23 = str8;
                        str20 = str10;
                        stringTokenizer6 = stringTokenizer;
                        fArr4 = fArr2;
                        i26 = i19;
                        z15 = z11;
                        z16 = z10;
                        i27 = i16;
                        i28 = i15;
                        i29 = i18;
                        i30 = i17;
                        replace = str4;
                        str22 = str6;
                        strArr2 = strArr;
                        str24 = str12;
                        str21 = str11;
                        str3 = str9;
                        str19 = str5;
                    }
                }
                str6 = str22;
                str8 = str23;
                i14 = i25;
                stringTokenizer = stringTokenizer6;
                fArr2 = fArr4;
                strArr = strArr2;
                str11 = str21;
                str9 = str3;
                str10 = str20;
                str12 = str24;
                i11 = 4;
                i17 = i30;
                i18 = i29;
                i15 = i28;
                i16 = i27;
                z10 = z16;
                z11 = z15;
                i19 = i26;
                if (stringTokenizer.hasMoreTokens()) {
                    arrayList.add(createOBJObject(hashMap, iArr4, fArr2, fArr5, str8, strArr, i14, i18, i16, i19, iArr, iArr2, fArr));
                }
                i25 = i14;
                str23 = str8;
                str20 = str10;
                stringTokenizer6 = stringTokenizer;
                fArr4 = fArr2;
                i26 = i19;
                z15 = z11;
                z16 = z10;
                i27 = i16;
                i28 = i15;
                i29 = i18;
                i30 = i17;
                replace = str4;
                str22 = str6;
                strArr2 = strArr;
                str24 = str12;
                str21 = str11;
                str3 = str9;
                str19 = str5;
            }
            str4 = replace;
            str5 = str19;
            str6 = str22;
            str8 = str23;
            i14 = i25;
            stringTokenizer = stringTokenizer6;
            fArr2 = fArr4;
            strArr = strArr2;
            str11 = str21;
            str9 = str3;
            str10 = str20;
            str12 = str24;
            i11 = 4;
            i17 = i30;
            i18 = i29;
            i15 = i28;
            i16 = i27;
            z10 = z16;
            z11 = z15;
            i19 = i26;
            if (stringTokenizer.hasMoreTokens()) {
            }
            i25 = i14;
            str23 = str8;
            str20 = str10;
            stringTokenizer6 = stringTokenizer;
            fArr4 = fArr2;
            i26 = i19;
            z15 = z11;
            z16 = z10;
            i27 = i16;
            i28 = i15;
            i29 = i18;
            i30 = i17;
            replace = str4;
            str22 = str6;
            strArr2 = strArr;
            str24 = str12;
            str21 = str11;
            str3 = str9;
            str19 = str5;
        }
        if (z16) {
            i10 = 1;
            Logger.log("This OBJ-file contains unsupported geometry data. This data has been skipped!", 1);
        } else {
            i10 = 1;
        }
        if (z15) {
            Logger.log("This OBJ-file contains n-polygons with n>4! These polygons wont be displayed correctly!", i10);
        }
        Object3D[] object3DArr = new Object3D[arrayList.size()];
        for (int i41 = 0; i41 < arrayList.size(); i41++) {
            object3DArr[i41] = (Object3D) arrayList.get(i41);
        }
        if (replace != null) {
            clearCache();
        }
        return object3DArr;
    }

    private static String loadTextFile(URL url, String str, InputStream inputStream) {
        String str2;
        if (str != null && (str2 = lastFilename) != null && str2.equals(str)) {
            Logger.log("Reading file " + str + " from cache", 2);
            return lastFileData;
        }
        clearCache();
        String[] strArr = new String[1];
        loadBinaryFile(url, str, inputStream, 8192, strArr);
        String str3 = strArr[0];
        if (str3 != null) {
            if (str3.length() <= 20000 && str != null) {
                lastFilename = str;
                lastFileData = strArr[0];
            }
            return strArr[0];
        }
        Logger.log("Couldn't load text-file!", 0);
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        if (r5 == 16384) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
    
        r10 = getUnsignedByte(r0, r7);
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
    
        if (r10 > 0) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0068, code lost:
    
        r10 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006b, code lost:
    
        if (r5 != 16656) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
    
        r11 = getShortInt(r0, r7);
        r7 = r7 + 2;
        r10 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0074, code lost:
    
        if (r10 < r11) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0078, code lost:
    
        r7 = r7 + 12;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0076, code lost:
    
        r10 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007f, code lost:
    
        if (r5 != 16672) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        r10 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0085, code lost:
    
        if (r5 != 45055) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0087, code lost:
    
        r10 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008b, code lost:
    
        if (r10 >= ((r7 + r9) - 6)) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008e, code lost:
    
        if (r10 < r0.length) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0091, code lost:
    
        getChunkHeader(r0, r10, r1);
        r10 = r10 + 6;
        r11 = r1[r4];
        r12 = r1[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009d, code lost:
    
        if (r11 != 41472) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x009f, code lost:
    
        r11 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a3, code lost:
    
        if (r11 >= ((r10 + r9) - 6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a6, code lost:
    
        if (r11 < r0.length) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a9, code lost:
    
        getChunkHeader(r0, r11, r1);
        r11 = r11 + 6;
        r13 = r1[r4];
        r14 = r1[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b5, code lost:
    
        if (r13 != 41728) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b7, code lost:
    
        r13 = new java.lang.StringBuilder(40);
        r15 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00bf, code lost:
    
        r4 = getUnsignedByte(r0, r15);
        r15 = r15 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c4, code lost:
    
        if (r4 <= 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c6, code lost:
    
        r13.append((char) ((byte) r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00cc, code lost:
    
        if (r15 < r0.length) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ce, code lost:
    
        r4 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00cf, code lost:
    
        if (r4 > 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00df, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d1, code lost:
    
        r4 = r13.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d9, code lost:
    
        if (r3.contains(r4) != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00db, code lost:
    
        r3.add(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00e1, code lost:
    
        r11 = r11 + (r14 - 6);
        r4 = 0;
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e6, code lost:
    
        r10 = r10 + (r12 - 6);
        r4 = 0;
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00eb, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f0, code lost:
    
        if (r5 == 15677) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f5, code lost:
    
        if (r5 == 45056) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00fa, code lost:
    
        if (r5 != 45058) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00fd, code lost:
    
        if (r8 == 0) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0103, code lost:
    
        if (((r7 + r9) - 6) < r0.length) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0105, code lost:
    
        r7 = r0.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0109, code lost:
    
        r7 = r7 + (r9 - 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00fc, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00ed, code lost:
    
        r8 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String[] readTextureNames3DS(URL url, String str, InputStream inputStream) {
        int i10;
        byte[] loadBinaryFile = loadBinaryFile(url, str, inputStream, 8192);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        if (loadBinaryFile != null) {
            getChunkHeader(loadBinaryFile, 0, iArr);
            int i12 = iArr[0];
            if (i12 != 19789) {
                Logger.log("Not a valid 3DS file!", 0);
            } else {
                int i13 = 6;
                while (i12 >= 0 && i13 < loadBinaryFile.length) {
                    getChunkHeader(loadBinaryFile, i13, iArr);
                    i13 += 6;
                    i12 = iArr[i11];
                    int i14 = 1;
                    int i15 = iArr[1];
                    if (i12 >= 0 && i13 < loadBinaryFile.length) {
                        if (i12 == 45072) {
                            while (true) {
                                int i16 = i13 + 1;
                                if (getUnsignedByte(loadBinaryFile, i13) <= 0) {
                                    break;
                                }
                                i13 = i16;
                            }
                            i13 += 7;
                            i10 = i11;
                        } else {
                            i10 = 1;
                        }
                        if (i12 == 45088) {
                            i13 += 32;
                            i10 = i11;
                        }
                    }
                    i11 = 0;
                }
            }
        }
        int size = arrayList.size();
        String[] strArr = new String[size];
        for (int i17 = 0; i17 < size; i17++) {
            strArr[i17] = (String) arrayList.get(i17);
        }
        return strArr;
    }
}
