package com.threed.jpct;

import android.icu.text.DateFormat;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;

public class CompiledInstanceFP extends CompiledInstance {
    protected static float[] smallBufferOneF;
    protected static float[] smallBufferTwoF;
    protected float[] ncoords;
    protected FloatBufferWrapper normals;
    protected float[] vcoords;
    protected FloatBufferWrapper vertices;

    static {
        int i10 = CompiledInstance.BUFFER_SIZE;
        smallBufferOneF = new float[i10];
        smallBufferTwoF = new float[i10];
    }

    public CompiledInstanceFP(Object3D object3D, int i10, int i11) {
        super(object3D, i10, i11);
        this.vertices = null;
        this.normals = null;
        this.vcoords = null;
        this.ncoords = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0417  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void _fill() {
        boolean z10;
        boolean z11;
        Animation animation;
        float[][] fArr;
        int i10;
        int i11;
        IntList intList;
        int[][] iArr;
        Mesh mesh;
        float[] fArr2;
        float[] fArr3;
        int i12;
        Vectors vectors;
        GenericContainer genericContainer;
        int i13;
        int i14;
        float[] fArr4;
        float[] fArr5;
        int i15;
        int i16;
        char c10;
        IntBuffer intBuffer;
        int i17;
        boolean z12;
        char c11;
        IntBuffer intBuffer2;
        int i18;
        int i19;
        int i20;
        CompiledInstance.sbPosOne = 0;
        CompiledInstance.sbPosTwo = 0;
        CompiledInstance.sbPosThree = 0;
        if (this.obj.shareWith != null) {
            return;
        }
        if (this.useStrip == 0) {
            checkStrips();
        }
        long j10 = 0;
        long currentTimeMillis = Logger.isDebugEnabled() ? System.currentTimeMillis() : 0L;
        this.hasBeenRefilled = true;
        IntList intList2 = this.tris;
        if (intList2 != null) {
            int size = intList2.size();
            if (this.normals == null) {
                long currentTimeMillis2 = System.currentTimeMillis();
                int i21 = size * 9;
                this.normals = new FloatBufferWrapper(i21);
                this.vertices = new FloatBufferWrapper(i21);
                if (this.obj.hasVertexAlpha()) {
                    this.colors = ByteBuffer.allocateDirect(size * 48).order(ByteOrder.nativeOrder()).asIntBuffer();
                }
                if (this.obj.objMesh.tangentVectors != null) {
                    this.tangents = ByteBuffer.allocateDirect(size * 48).order(ByteOrder.nativeOrder()).asIntBuffer();
                }
                if (this.indexed) {
                    this.indices = ByteBuffer.allocateDirect(size * 12).order(ByteOrder.nativeOrder()).asShortBuffer();
                    this.vertex2index = new HashMap<>();
                }
                if (this.obj.multiTex != null) {
                    int i22 = 0;
                    i20 = 1;
                    while (true) {
                        int[][] iArr2 = this.obj.multiTex;
                        if (i22 >= iArr2.length || iArr2[i22][this.polyIndex] == -1) {
                            break;
                        }
                        i20++;
                        i22++;
                    }
                } else {
                    i20 = 1;
                }
                this.endStage = i20;
                int i23 = Config.glStageCount;
                if (i20 > i23) {
                    this.endStage = i23;
                }
                this.multiTextures = new IntBuffer[this.endStage];
                for (int i24 = 0; i24 < this.endStage; i24++) {
                    this.multiTextures[i24] = ByteBuffer.allocateDirect(size * 24).order(ByteOrder.nativeOrder()).asIntBuffer();
                }
                z11 = true;
                j10 = currentTimeMillis2;
            } else {
                z11 = false;
            }
            Mesh mesh2 = this.obj.objMesh;
            float[] fArr6 = mesh2.xOrg;
            float[] fArr7 = mesh2.yOrg;
            float[] fArr8 = mesh2.zOrg;
            float[] fArr9 = mesh2.nxOrg;
            float[] fArr10 = mesh2.nyOrg;
            float[] fArr11 = mesh2.nzOrg;
            this.cnt = 0;
            HashMap<GenericContainer, Integer> hashMap = this.vertex2index;
            if (hashMap != null) {
                hashMap.clear();
            }
            int size2 = this.tris.size();
            IntList intList3 = (this.dynamic && z11 && this.colors == null && this.coordMapper == null) ? new IntList() : null;
            int[] iArr3 = this.coordMapper;
            long j11 = currentTimeMillis;
            if (iArr3 == null || !this.staticUV) {
                Vectors vectors2 = this.obj.objVectors;
                float[] fArr12 = vectors2.nuOrg;
                int[][] iArr4 = mesh2.points;
                Vectors vectors3 = vectors2;
                int i25 = 0;
                while (i25 < 4) {
                    CompiledInstance.sbPosMT[i25] = 0;
                    i25++;
                    iArr4 = iArr4;
                    fArr6 = fArr6;
                    intList3 = intList3;
                }
                float[][] fArr13 = this.obj.objMesh.tangentVectors;
                int i26 = 0;
                while (i26 < size2) {
                    long j12 = j10;
                    int i27 = this.tris.get(i26);
                    if (i26 > 0) {
                        fArr = fArr13;
                        if (this.useStrip == 1) {
                            i10 = 2;
                            GenericContainer genericContainer2 = null;
                            i11 = 3;
                            while (i10 < i11) {
                                int i28 = iArr4[i27][i10];
                                int i29 = mesh2.coords[i28];
                                int i30 = i27;
                                if (this.indexed) {
                                    int i31 = i26;
                                    intList = intList3;
                                    int i32 = i10;
                                    iArr = iArr4;
                                    mesh = mesh2;
                                    fArr2 = fArr10;
                                    fArr3 = fArr11;
                                    i12 = size2;
                                    vectors = vectors3;
                                    if (genericContainer2 == null) {
                                        genericContainer = new GenericContainer(11);
                                    } else {
                                        genericContainer2.clear();
                                        genericContainer = genericContainer2;
                                    }
                                    genericContainer.add(fArr6[i29]);
                                    genericContainer.add(fArr7[i29]);
                                    genericContainer.add(fArr8[i29]);
                                    genericContainer.add(fArr9[i29]);
                                    genericContainer.add(fArr2[i29]);
                                    genericContainer.add(fArr3[i29]);
                                    int i33 = 0;
                                    while (i33 < this.endStage) {
                                        float[] fArr14 = fArr7;
                                        int i34 = i32;
                                        float[] fArr15 = fArr6;
                                        if (i33 == 0) {
                                            float[] fArr16 = vectors.nuOrg;
                                            float[] fArr17 = vectors.nvOrg;
                                            genericContainer.add(fArr16[i28]);
                                            genericContainer.add(fArr17[i28]);
                                        } else if (this.obj.maxStagesUsed > 1) {
                                            int i35 = i33 - 1;
                                            float[] fArr18 = vectors.uMul[i35];
                                            float[] fArr19 = vectors.vMul[i35];
                                            genericContainer.add(fArr18[i28]);
                                            genericContainer.add(fArr19[i28]);
                                        }
                                        i33++;
                                        fArr7 = fArr14;
                                        fArr6 = fArr15;
                                        i32 = i34;
                                    }
                                    if (this.colors != null) {
                                        genericContainer.add(vectors.alpha[i28]);
                                    }
                                    i13 = i32;
                                    boolean z13 = i31 == i12 + (-1) && i13 == 2;
                                    Integer num = this.vertex2index.get(genericContainer);
                                    if (num == null) {
                                        float[] fArr20 = smallBufferOneF;
                                        int i36 = CompiledInstance.sbPosOne;
                                        int i37 = i36 + 1;
                                        CompiledInstance.sbPosOne = i37;
                                        fArr20[i36] = fArr6[i29];
                                        int i38 = i36 + 2;
                                        CompiledInstance.sbPosOne = i38;
                                        fArr20[i37] = fArr7[i29];
                                        int i39 = i36 + 3;
                                        CompiledInstance.sbPosOne = i39;
                                        fArr20[i38] = fArr8[i29];
                                        int i40 = CompiledInstance.BUFFER_SIZE;
                                        if (i39 == i40 || z13) {
                                            i14 = i31;
                                            this.vertices.put(fArr20, 0, i39);
                                            CompiledInstance.sbPosOne = 0;
                                        } else {
                                            i14 = i31;
                                        }
                                        float[] fArr21 = smallBufferTwoF;
                                        int i41 = CompiledInstance.sbPosTwo;
                                        int i42 = i41 + 1;
                                        CompiledInstance.sbPosTwo = i42;
                                        fArr21[i41] = fArr9[i29];
                                        int i43 = i41 + 2;
                                        CompiledInstance.sbPosTwo = i43;
                                        fArr21[i42] = fArr2[i29];
                                        int i44 = i41 + 3;
                                        CompiledInstance.sbPosTwo = i44;
                                        fArr21[i43] = fArr3[i29];
                                        if (i44 == i40 || z13) {
                                            c10 = 0;
                                            this.normals.put(fArr21, 0, i44);
                                            CompiledInstance.sbPosTwo = 0;
                                        } else {
                                            c10 = 0;
                                        }
                                        if (intList != null) {
                                            intList.add(i29);
                                        }
                                        IntBuffer intBuffer3 = this.colors;
                                        if (intBuffer3 != null) {
                                            int[] iArr5 = CompiledInstance.smallBuffer;
                                            iArr5[c10] = 65536;
                                            iArr5[1] = 65536;
                                            iArr5[2] = 65536;
                                            iArr5[3] = (int) (vectors.alpha[i28] * 65536.0f);
                                            intBuffer3.put(iArr5);
                                        }
                                        if (!z11 || (intBuffer = this.tangents) == null) {
                                            intList = intList;
                                            fArr4 = fArr6;
                                            fArr5 = fArr7;
                                        } else {
                                            float[] fArr22 = fArr[i29];
                                            int[] iArr6 = CompiledInstance.smallBufferThree;
                                            int i45 = CompiledInstance.sbPosThree;
                                            int i46 = i45 + 1;
                                            CompiledInstance.sbPosThree = i46;
                                            intList = intList;
                                            iArr6[i45] = (int) (fArr22[0] * 65536.0f);
                                            int i47 = i45 + 2;
                                            CompiledInstance.sbPosThree = i47;
                                            fArr4 = fArr6;
                                            iArr6[i46] = (int) (fArr22[1] * 65536.0f);
                                            int i48 = i45 + 3;
                                            CompiledInstance.sbPosThree = i48;
                                            fArr5 = fArr7;
                                            iArr6[i47] = (int) (fArr22[2] * 65536.0f);
                                            int i49 = i45 + 4;
                                            CompiledInstance.sbPosThree = i49;
                                            iArr6[i48] = (int) (fArr22[3] * 65536.0f);
                                            if (i49 == i40 || z13) {
                                                intBuffer.put(iArr6, 0, i49);
                                                CompiledInstance.sbPosThree = 0;
                                            }
                                        }
                                        if (z11 || !this.staticUV) {
                                            for (int i50 = 0; i50 < this.endStage; i50++) {
                                                if (i50 == 0) {
                                                    float[] fArr23 = vectors.nuOrg;
                                                    float[] fArr24 = vectors.nvOrg;
                                                    int[] iArr7 = CompiledInstance.smallBufferMT[0];
                                                    int[] iArr8 = CompiledInstance.sbPosMT;
                                                    int i51 = iArr8[0];
                                                    iArr8[0] = i51 + 1;
                                                    iArr7[i51] = (int) (fArr23[i28] * 65536.0f);
                                                    int i52 = iArr8[0];
                                                    iArr8[0] = i52 + 1;
                                                    iArr7[i52] = (int) (fArr24[i28] * 65536.0f);
                                                    int i53 = iArr8[0];
                                                    if (i53 == CompiledInstance.BUFFER_SIZE || z13) {
                                                        this.multiTextures[i50].put(iArr7, 0, i53);
                                                        iArr8[0] = 0;
                                                    }
                                                } else if (this.obj.maxStagesUsed > 1) {
                                                    int i54 = i50 - 1;
                                                    float[] fArr25 = vectors.uMul[i54];
                                                    float[] fArr26 = vectors.vMul[i54];
                                                    int[] iArr9 = CompiledInstance.smallBufferMT[i50];
                                                    int[] iArr10 = CompiledInstance.sbPosMT;
                                                    int i55 = iArr10[i50];
                                                    iArr10[i50] = i55 + 1;
                                                    iArr9[i55] = (int) (fArr25[i28] * 65536.0f);
                                                    int i56 = iArr10[i50];
                                                    iArr10[i50] = i56 + 1;
                                                    iArr9[i56] = (int) (fArr26[i28] * 65536.0f);
                                                    int i57 = iArr10[i50];
                                                    if (i57 == CompiledInstance.BUFFER_SIZE || z13) {
                                                        this.multiTextures[i50].put(iArr9, 0, i57);
                                                        iArr10[i50] = 0;
                                                    }
                                                }
                                            }
                                        }
                                        i15 = 3;
                                        int position = ((this.vertices.position() + CompiledInstance.sbPosOne) - 3) / 3;
                                        this.vertex2index.put(genericContainer, IntegerC.valueOf(position));
                                        this.indices.put((short) position);
                                        genericContainer = null;
                                    } else {
                                        i14 = i31;
                                        fArr4 = fArr6;
                                        fArr5 = fArr7;
                                        i15 = 3;
                                        this.indices.put((short) num.intValue());
                                        if (z13) {
                                            int i58 = CompiledInstance.sbPosOne;
                                            if (i58 != 0) {
                                                i16 = 0;
                                                this.vertices.put(smallBufferOneF, 0, i58);
                                                CompiledInstance.sbPosOne = 0;
                                            } else {
                                                i16 = 0;
                                            }
                                            int i59 = CompiledInstance.sbPosTwo;
                                            if (i59 != 0) {
                                                this.normals.put(smallBufferTwoF, i16, i59);
                                                CompiledInstance.sbPosTwo = i16;
                                            }
                                            int i60 = CompiledInstance.sbPosThree;
                                            if (i60 != 0) {
                                                this.tangents.put(CompiledInstance.smallBufferThree, i16, i60);
                                                CompiledInstance.sbPosThree = i16;
                                            }
                                            for (int i61 = 0; i61 < 4; i61++) {
                                                int[] iArr11 = CompiledInstance.sbPosMT;
                                                int i62 = iArr11[i61];
                                                if (i62 != 0) {
                                                    this.multiTextures[i61].put(CompiledInstance.smallBufferMT[i61], 0, i62);
                                                    iArr11[i61] = 0;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    float[] fArr27 = smallBufferOneF;
                                    int i63 = CompiledInstance.sbPosOne;
                                    int i64 = i63 + 1;
                                    CompiledInstance.sbPosOne = i64;
                                    fArr27[i63] = fArr6[i29];
                                    int i65 = i63 + 2;
                                    CompiledInstance.sbPosOne = i65;
                                    fArr27[i64] = fArr7[i29];
                                    iArr = iArr4;
                                    int i66 = i63 + 3;
                                    CompiledInstance.sbPosOne = i66;
                                    fArr27[i65] = fArr8[i29];
                                    mesh = mesh2;
                                    if (i26 == size2 - 1 && i10 == 2) {
                                        i17 = i10;
                                        z12 = true;
                                    } else {
                                        i17 = i10;
                                        z12 = false;
                                    }
                                    int i67 = CompiledInstance.BUFFER_SIZE;
                                    if (i66 == i67 || z12) {
                                        i14 = i26;
                                        i12 = size2;
                                        this.vertices.put(fArr27, 0, i66);
                                        CompiledInstance.sbPosOne = 0;
                                    } else {
                                        i14 = i26;
                                        i12 = size2;
                                    }
                                    float[] fArr28 = smallBufferTwoF;
                                    int i68 = CompiledInstance.sbPosTwo;
                                    int i69 = i68 + 1;
                                    CompiledInstance.sbPosTwo = i69;
                                    fArr28[i68] = fArr9[i29];
                                    int i70 = i68 + 2;
                                    CompiledInstance.sbPosTwo = i70;
                                    fArr28[i69] = fArr10[i29];
                                    int i71 = i68 + 3;
                                    CompiledInstance.sbPosTwo = i71;
                                    fArr28[i70] = fArr11[i29];
                                    if (i71 == i67 || z12) {
                                        c11 = 0;
                                        this.normals.put(fArr28, 0, i71);
                                        CompiledInstance.sbPosTwo = 0;
                                    } else {
                                        c11 = 0;
                                    }
                                    if (intList3 != null) {
                                        intList3.add(i29);
                                    }
                                    IntBuffer intBuffer4 = this.colors;
                                    if (intBuffer4 != null) {
                                        int[] iArr12 = CompiledInstance.smallBuffer;
                                        iArr12[c11] = 65536;
                                        iArr12[1] = 65536;
                                        iArr12[2] = 65536;
                                        vectors = vectors3;
                                        iArr12[3] = (int) (vectors.alpha[i28] * 65536.0f);
                                        intBuffer4.put(iArr12);
                                    } else {
                                        vectors = vectors3;
                                    }
                                    if (!z11 || (intBuffer2 = this.tangents) == null) {
                                        intList = intList3;
                                        fArr2 = fArr10;
                                        fArr3 = fArr11;
                                    } else {
                                        float[] fArr29 = fArr[i29];
                                        int[] iArr13 = CompiledInstance.smallBufferThree;
                                        int i72 = CompiledInstance.sbPosThree;
                                        int i73 = i72 + 1;
                                        CompiledInstance.sbPosThree = i73;
                                        intList = intList3;
                                        iArr13[i72] = (int) (fArr29[0] * 65536.0f);
                                        int i74 = i72 + 2;
                                        CompiledInstance.sbPosThree = i74;
                                        fArr3 = fArr11;
                                        iArr13[i73] = (int) (fArr29[1] * 65536.0f);
                                        int i75 = i72 + 3;
                                        CompiledInstance.sbPosThree = i75;
                                        fArr2 = fArr10;
                                        iArr13[i74] = (int) (fArr29[2] * 65536.0f);
                                        int i76 = i72 + 4;
                                        CompiledInstance.sbPosThree = i76;
                                        iArr13[i75] = (int) (fArr29[3] * 65536.0f);
                                        if (i76 == i67 || z12) {
                                            intBuffer2.put(iArr13, 0, i76);
                                            CompiledInstance.sbPosThree = 0;
                                        }
                                    }
                                    if (z11 || !this.staticUV) {
                                        for (int i77 = 0; i77 < this.endStage; i77++) {
                                            if (i77 == 0) {
                                                float[] fArr30 = vectors.nuOrg;
                                                float[] fArr31 = vectors.nvOrg;
                                                int[] iArr14 = CompiledInstance.smallBufferMT[0];
                                                int[] iArr15 = CompiledInstance.sbPosMT;
                                                int i78 = iArr15[0];
                                                iArr15[0] = i78 + 1;
                                                iArr14[i78] = (int) (fArr30[i28] * 65536.0f);
                                                int i79 = iArr15[0];
                                                iArr15[0] = i79 + 1;
                                                iArr14[i79] = (int) (fArr31[i28] * 65536.0f);
                                                int i80 = iArr15[0];
                                                if (i80 == CompiledInstance.BUFFER_SIZE || z12) {
                                                    this.multiTextures[i77].put(iArr14, 0, i80);
                                                    iArr15[0] = 0;
                                                }
                                            } else if (this.obj.maxStagesUsed > 1) {
                                                int i81 = i77 - 1;
                                                float[] fArr32 = vectors.uMul[i81];
                                                float[] fArr33 = vectors.vMul[i81];
                                                int[] iArr16 = CompiledInstance.smallBufferMT[i77];
                                                int[] iArr17 = CompiledInstance.sbPosMT;
                                                int i82 = iArr17[i77];
                                                iArr17[i77] = i82 + 1;
                                                iArr16[i82] = (int) (fArr32[i28] * 65536.0f);
                                                int i83 = iArr17[i77];
                                                iArr17[i77] = i83 + 1;
                                                iArr16[i83] = (int) (fArr33[i28] * 65536.0f);
                                                int i84 = iArr17[i77];
                                                if (i84 == CompiledInstance.BUFFER_SIZE || z12) {
                                                    this.multiTextures[i77].put(iArr16, 0, i84);
                                                    iArr17[i77] = 0;
                                                }
                                            }
                                        }
                                    }
                                    genericContainer = genericContainer2;
                                    i13 = i17;
                                    fArr4 = fArr6;
                                    fArr5 = fArr7;
                                    i15 = 3;
                                }
                                i10 = i13 + 1;
                                vectors3 = vectors;
                                i11 = i15;
                                fArr7 = fArr5;
                                i27 = i30;
                                mesh2 = mesh;
                                iArr4 = iArr;
                                fArr6 = fArr4;
                                size2 = i12;
                                intList3 = intList;
                                fArr11 = fArr3;
                                fArr10 = fArr2;
                                genericContainer2 = genericContainer;
                                i26 = i14;
                            }
                            if (i26 != 0 || this.useStrip == 2) {
                                this.cnt += i11;
                            } else {
                                this.cnt++;
                            }
                            i26++;
                            fArr13 = fArr;
                            j10 = j12;
                        }
                    } else {
                        fArr = fArr13;
                    }
                    i10 = 0;
                    GenericContainer genericContainer22 = null;
                    i11 = 3;
                    while (i10 < i11) {
                    }
                    if (i26 != 0) {
                    }
                    this.cnt += i11;
                    i26++;
                    fArr13 = fArr;
                    j10 = j12;
                }
                ShortBuffer shortBuffer = this.indices;
                if (shortBuffer != null) {
                    int position2 = shortBuffer.position();
                    this.indexCount = position2;
                    if (position2 != this.indices.limit()) {
                        this.indices = (ShortBuffer) this.indices.flip();
                    }
                }
                if (intList3 != null) {
                    int size3 = intList3.size();
                    if (Logger.getLogLevel() >= 2) {
                        Logger.log("Remapping " + size3 + " vertex indices!");
                    }
                    this.coordMapper = new int[size3];
                    if (this.dynamic && ((animation = this.obj.anim) == null || animation.cacheIndices)) {
                        if (Logger.getLogLevel() >= 2) {
                            Logger.log("Creating vertex cache (" + (size3 * 24) + " bytes)!");
                        }
                        int i85 = size3 * 3;
                        this.vcoords = new float[i85];
                        this.ncoords = new float[i85];
                    }
                    this.needsCoordMapper = false;
                    int size4 = intList3.size();
                    int i86 = 0;
                    for (int i87 = 0; i87 < size4; i87++) {
                        this.coordMapper[i86] = intList3.get(i87);
                        if (this.coordMapper[i86] != i86) {
                            this.needsCoordMapper = true;
                        }
                        i86++;
                    }
                    if (Logger.getLogLevel() >= 2) {
                        if (this.needsCoordMapper) {
                            Logger.log("Vertex indices will be mapped!");
                        } else {
                            Logger.log("Vertex indices will be accessed directly!");
                        }
                    }
                }
            } else {
                int length = iArr3.length;
                float[] fArr34 = this.vcoords;
                if (fArr34 != null) {
                    float[] fArr35 = this.ncoords;
                    if (this.needsCoordMapper) {
                        int i88 = 0;
                        for (int i89 : iArr3) {
                            fArr34[i88] = fArr6[i89];
                            int i90 = i88 + 1;
                            fArr35[i88] = fArr9[i89];
                            fArr34[i90] = fArr7[i89];
                            int i91 = i88 + 2;
                            fArr35[i90] = fArr10[i89];
                            fArr34[i91] = fArr8[i89];
                            i88 += 3;
                            fArr35[i91] = fArr11[i89];
                        }
                        this.cnt = length;
                    } else {
                        int i92 = 0;
                        for (int i93 = 0; i93 < length; i93++) {
                            fArr34[i92] = fArr6[i93];
                            int i94 = i92 + 1;
                            fArr35[i92] = fArr9[i93];
                            fArr34[i94] = fArr7[i93];
                            int i95 = i92 + 2;
                            fArr35[i94] = fArr10[i93];
                            fArr34[i95] = fArr8[i93];
                            i92 += 3;
                            fArr35[i95] = fArr11[i93];
                        }
                        this.cnt = length;
                    }
                    BufferUtil bufferUtil = BufferUtilFactory.getBufferUtil();
                    bufferUtil.copy(fArr34, this.vertices);
                    bufferUtil.copy(fArr35, this.normals);
                } else {
                    for (int i96 = 0; i96 < length; i96++) {
                        int i97 = this.coordMapper[i96];
                        this.vertices.put(fArr6[i97]);
                        this.vertices.put(fArr7[i97]);
                        this.vertices.put(fArr8[i97]);
                        this.normals.put(fArr9[i97]);
                        this.normals.put(fArr10[i97]);
                        this.normals.put(fArr11[i97]);
                    }
                    this.cnt = length;
                }
            }
            int position3 = this.multiTextures[0].position();
            IntBuffer intBuffer5 = this.colors;
            if (intBuffer5 != null) {
                i18 = intBuffer5.position();
                this.colors.rewind();
            } else {
                i18 = 0;
            }
            IntBuffer intBuffer6 = this.tangents;
            if (intBuffer6 != null) {
                i19 = intBuffer6.position();
                this.tangents.rewind();
            } else {
                i19 = 0;
            }
            this.vertices.rewind();
            this.normals.rewind();
            for (int i98 = 0; i98 < this.endStage; i98++) {
                this.multiTextures[i98].rewind();
            }
            ShortBuffer shortBuffer2 = this.indices;
            if (shortBuffer2 != null) {
                shortBuffer2.rewind();
            }
            if (z11) {
                if (!this.dynamic) {
                    this.tris = null;
                    this.vertex2index = null;
                    if (this.indexed) {
                        IntBuffer intBuffer7 = this.colors;
                        if (intBuffer7 != null) {
                            this.colors = (IntBuffer) flip(intBuffer7, i18);
                        }
                        IntBuffer intBuffer8 = this.tangents;
                        if (intBuffer8 != null) {
                            this.tangents = (IntBuffer) flip(intBuffer8, i19);
                        }
                        for (int i99 = 0; i99 < this.endStage; i99++) {
                            IntBuffer[] intBufferArr = this.multiTextures;
                            intBufferArr[i99] = (IntBuffer) flip(intBufferArr[i99], position3);
                        }
                    }
                }
                if (Logger.getLogLevel() >= 2) {
                    StringBuilder sb2 = new StringBuilder("Subobject of object ");
                    sb2.append(this.obj.getID());
                    sb2.append("/");
                    sb2.append(this.obj.getName());
                    sb2.append(" compiled to ");
                    sb2.append(this.obj.indexed ? "indexed" : "flat");
                    sb2.append(" floating point data using ");
                    sb2.append(this.cnt);
                    sb2.append("/");
                    sb2.append(this.vertices.limit() / 3);
                    sb2.append(" vertices ");
                    sb2.append(this.useStrip == 1 ? "in a strip " : "");
                    sb2.append("in ");
                    sb2.append(System.currentTimeMillis() - j10);
                    sb2.append("ms!");
                    Logger.log(sb2.toString());
                }
            }
            if (Logger.isDebugEnabled()) {
                Logger.log("Processing and uploading vertices of subobject of object " + this.obj.getID() + "/" + this.obj.getName() + " took " + (System.currentTimeMillis() - j11) + DateFormat.MINUTE_SECOND, 3);
            }
            z10 = true;
        } else {
            z10 = true;
        }
        this.filled = z10;
    }

    @Override
    public void compileToVBO(GL11 gl11, GLRenderer gLRenderer) {
        Virtualizer virtualizer;
        boolean z10 = this.dynamic;
        int i10 = 0;
        if (z10) {
            Object3D object3D = this.obj;
            if (object3D.sharing) {
                ArrayList<CompiledInstance> arrayList = object3D.shareWith.compiled;
                int size = arrayList.size();
                while (i10 < size) {
                    CompiledInstance compiledInstance = arrayList.get(i10);
                    if (compiledInstance.hasBeenRefilled) {
                        compiledInstance.compileToVBO(gl11, gLRenderer);
                    }
                    i10++;
                }
                return;
            }
        }
        if (z10 || !(this.buffersCreated || gl11 == null || !Config.useVBO)) {
            if (!z10 || this.hasBeenRefilled) {
                if (!z10 && this.hasBeenVirtualized && this.obj.virtualizer != null) {
                    this.vertices = new FloatBufferWrapper((ByteBuffer) this.obj.virtualizer.restore(this, ByteBuffer.class, "vertices"));
                    this.normals = new FloatBufferWrapper((ByteBuffer) this.obj.virtualizer.restore(this, ByteBuffer.class, "normals"));
                    this.colors = (IntBuffer) this.obj.virtualizer.restore(this, IntBuffer.class, "colors");
                    this.tangents = (IntBuffer) this.obj.virtualizer.restore(this, IntBuffer.class, "tangents");
                    this.indices = (ShortBuffer) this.obj.virtualizer.restore(this, ShortBuffer.class, "indices");
                    for (int i11 = 0; i11 < this.endStage; i11++) {
                        this.multiTextures[i11] = (IntBuffer) this.obj.virtualizer.restore(this, IntBuffer.class, "multiTextures" + i11);
                    }
                }
                this.vertices.rewind();
                this.normals.rewind();
                IntBuffer intBuffer = this.colors;
                if (intBuffer != null) {
                    intBuffer.rewind();
                }
                IntBuffer intBuffer2 = this.tangents;
                if (intBuffer2 != null) {
                    intBuffer2.rewind();
                }
                ShortBuffer shortBuffer = this.indices;
                if (shortBuffer != null) {
                    shortBuffer.rewind();
                }
                for (int i12 = 0; i12 < this.endStage; i12++) {
                    IntBuffer intBuffer3 = this.multiTextures[i12];
                    if (intBuffer3 != null) {
                        intBuffer3.rewind();
                    }
                }
                this.hasBeenRefilled = false;
                this.lastRenderer = gLRenderer;
                int i13 = this.dynamic ? 35048 : 35044;
                if (this.normalsId == 0 || !this.buffersCreated) {
                    int[] iArr = new int[1];
                    gl11.glGenBuffers(1, iArr, 0);
                    this.normalsId = iArr[0];
                    gl11.glGenBuffers(1, iArr, 0);
                    int i14 = iArr[0];
                    this.verticesId = i14;
                    int i15 = this.normalsId;
                    if (i15 == 0 || i14 == 0) {
                        bufferError();
                    } else {
                        gLRenderer.registerVBO(i15);
                        gLRenderer.registerVBO(this.verticesId);
                    }
                    if (this.colors != null) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int i16 = iArr[0];
                        this.colorsId = i16;
                        if (i16 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i16);
                        }
                    }
                    if (this.tangents != null) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int i17 = iArr[0];
                        this.tangentsId = i17;
                        if (i17 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i17);
                        }
                    }
                    this.multiTexturesIds = new int[this.endStage];
                    for (int i18 = 0; i18 < this.endStage; i18++) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int[] iArr2 = this.multiTexturesIds;
                        int i19 = iArr[0];
                        iArr2[i18] = i19;
                        if (i19 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i19);
                        }
                    }
                    if (this.indexed) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int i20 = iArr[0];
                        this.indicesId = i20;
                        if (i20 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i20);
                        }
                    }
                }
                this.buffersCreated = true;
                gl11.glBindBuffer(34962, this.normalsId);
                gl11.glBufferData(34962, this.normals.capacity() * 4, this.normals.bytes, i13);
                gl11.glBindBuffer(34962, this.verticesId);
                gl11.glBufferData(34962, this.vertices.capacity() * 4, this.vertices.bytes, i13);
                if (this.colors != null) {
                    gl11.glBindBuffer(34962, this.colorsId);
                    gl11.glBufferData(34962, this.colors.capacity() * 4, this.colors, i13);
                }
                if (this.tangents != null) {
                    gl11.glBindBuffer(34962, this.tangentsId);
                    gl11.glBufferData(34962, this.tangents.capacity() * 4, this.tangents, i13);
                }
                for (int i21 = 0; i21 < this.endStage; i21++) {
                    gl11.glBindBuffer(34962, this.multiTexturesIds[i21]);
                    gl11.glBufferData(34962, this.multiTextures[i21].capacity() * 4, this.multiTextures[i21], i13);
                }
                gl11.glBindBuffer(34962, 0);
                if (this.indexed) {
                    gl11.glBindBuffer(34963, this.indicesId);
                    this.indices.rewind();
                    gl11.glBufferData(34963, this.indices.remaining() * 2, this.indices, i13);
                    gl11.glBindBuffer(34963, 0);
                }
                if (this.firstCompile) {
                    if (Logger.getLogLevel() >= 2) {
                        Logger.log("VBO created for object '" + this.obj.getName() + "'");
                    }
                    this.firstCompile = false;
                }
                if (this.dynamic || (virtualizer = this.obj.virtualizer) == null || virtualizer.isFull()) {
                    return;
                }
                if (this.hasBeenVirtualized) {
                    this.normals = null;
                    this.colors = null;
                    this.tangents = null;
                    this.indices = null;
                    while (i10 < this.endStage) {
                        this.multiTextures[i10] = null;
                        i10++;
                    }
                } else {
                    this.hasBeenVirtualized = true;
                    this.obj.virtualizer.store(this, this.vertices.getByteBuffer(), "vertices");
                    this.obj.virtualizer.store(this, this.normals.getByteBuffer(), "normals");
                    this.normals = null;
                    this.obj.virtualizer.store(this, this.colors, "colors");
                    this.colors = null;
                    this.obj.virtualizer.store(this, this.tangents, "tangents");
                    this.tangents = null;
                    this.obj.virtualizer.store(this, this.indices, "indices");
                    this.indices = null;
                    while (i10 < this.endStage) {
                        this.obj.virtualizer.store(this, this.multiTextures[i10], "multiTextures" + i10);
                        this.multiTextures[i10] = null;
                        i10++;
                    }
                }
                this.vertices = new FloatBufferWrapper(1);
            }
        }
    }

    @Override
    public void copy(CompiledInstance compiledInstance) {
        if (compiledInstance instanceof CompiledInstanceFP) {
            CompiledInstanceFP compiledInstanceFP = (CompiledInstanceFP) compiledInstance;
            this.colors = compiledInstanceFP.colors;
            this.tris = compiledInstanceFP.tris;
            this.normals = compiledInstanceFP.normals;
            this.indices = compiledInstanceFP.indices;
            this.tangents = compiledInstanceFP.tangents;
            this.vertices = compiledInstanceFP.vertices;
            this.multiTextures = compiledInstanceFP.multiTextures;
            this.vertex2index = compiledInstanceFP.vertex2index;
            this.polyIndex = compiledInstanceFP.polyIndex;
            this.dynamic = compiledInstanceFP.dynamic;
            this.cnt = compiledInstanceFP.cnt;
            this.endStage = compiledInstanceFP.endStage;
            this.indexed = compiledInstanceFP.indexed;
            this.staticUV = compiledInstanceFP.staticUV;
            this.treeID = compiledInstanceFP.treeID;
            this.key = compiledInstanceFP.key;
            this.indexCount = compiledInstanceFP.indexCount;
            this.primitiveType = compiledInstanceFP.primitiveType;
            this.needsCoordMapper = compiledInstanceFP.needsCoordMapper;
            this.coordMapper = compiledInstanceFP.coordMapper;
            this.vcoords = compiledInstanceFP.vcoords;
            this.ncoords = compiledInstanceFP.ncoords;
            this.buffersCreated = compiledInstanceFP.buffersCreated;
            this.verticesId = compiledInstanceFP.verticesId;
            this.normalsId = compiledInstanceFP.normalsId;
            this.indicesId = compiledInstanceFP.indicesId;
            this.tangentsId = compiledInstanceFP.tangentsId;
            this.vboPossible = compiledInstanceFP.vboPossible;
            this.colorsId = compiledInstanceFP.colorsId;
            int[] iArr = compiledInstanceFP.multiTexturesIds;
            if (iArr != null) {
                this.multiTexturesIds = new int[iArr.length];
                int i10 = 0;
                for (int i11 : compiledInstanceFP.multiTexturesIds) {
                    this.multiTexturesIds[i10] = i11;
                    i10++;
                }
            }
            if (!this.buffersCreated || Logger.getLogLevel() < 2) {
                return;
            }
            Logger.log("Object '" + this.obj.getName() + "' shares VBOs (" + this.verticesId + "/" + this.normalsId + ") with object '" + this.obj.shareWith.getName() + "'");
        }
    }

    @Override
    public synchronized void fill() {
        synchronized (CompiledInstance.sbPosMT) {
            try {
                _fill();
            } catch (ArrayIndexOutOfBoundsException e10) {
                Logger.log("State: " + CompiledInstance.sbPosMT[0] + "/" + CompiledInstance.sbPosMT[1] + "/" + CompiledInstance.sbPosMT[2] + "/" + CompiledInstance.sbPosMT[3] + "/" + CompiledInstance.sbPosOne + "/" + CompiledInstance.sbPosTwo + "/" + CompiledInstance.sbPosThree, 1);
                throw e10;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0452 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0485 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x048a A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x049b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x072f A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0736 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0748 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x074f A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0758 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x075f A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0768 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x05fc A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x066e A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x06d7 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x06e2 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x06db  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0705 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x071b A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0723 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0728 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0721 A[EDGE_INSN: B:265:0x0721->B:260:0x0721 BREAK  A[LOOP:5: B:253:0x0701->B:264:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0711 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0658  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0459 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0261 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0202 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x020e A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0256 A[Catch: all -> 0x003c, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0027, B:8:0x002b, B:10:0x0035, B:36:0x0042, B:38:0x004d, B:16:0x0076, B:19:0x008e, B:21:0x0092, B:25:0x009b, B:27:0x00a1, B:28:0x00c1, B:29:0x00c4, B:31:0x00c9, B:39:0x00d5, B:41:0x00d9, B:44:0x00f6, B:48:0x00fc, B:50:0x0104, B:53:0x010b, B:55:0x010f, B:58:0x0116, B:60:0x011d, B:62:0x01e7, B:65:0x01ef, B:68:0x01f7, B:69:0x01fc, B:71:0x0202, B:73:0x020e, B:75:0x0242, B:76:0x0247, B:78:0x0256, B:80:0x025a, B:84:0x026e, B:85:0x0270, B:91:0x0292, B:93:0x02a0, B:95:0x02ee, B:100:0x02f4, B:101:0x02f9, B:103:0x02ff, B:107:0x044e, B:109:0x0452, B:111:0x0465, B:114:0x046e, B:115:0x0474, B:117:0x047f, B:119:0x0485, B:121:0x048a, B:122:0x048d, B:125:0x049d, B:127:0x04a5, B:129:0x04b3, B:131:0x04d5, B:133:0x04ea, B:134:0x04f3, B:135:0x04f7, B:139:0x04fb, B:141:0x0543, B:143:0x0547, B:145:0x054b, B:147:0x0550, B:149:0x0558, B:150:0x056d, B:152:0x0571, B:154:0x0575, B:156:0x057a, B:157:0x058d, B:159:0x0593, B:160:0x0598, B:164:0x05b7, B:166:0x05bb, B:168:0x05de, B:172:0x05e6, B:174:0x05ed, B:176:0x072f, B:177:0x0732, B:179:0x0736, B:180:0x073e, B:182:0x0748, B:184:0x074f, B:185:0x0754, B:187:0x0758, B:189:0x075f, B:190:0x0764, B:192:0x0768, B:193:0x076d, B:198:0x05d4, B:137:0x0500, B:199:0x04ee, B:200:0x04d9, B:202:0x0520, B:204:0x0538, B:205:0x053c, B:206:0x0524, B:208:0x05f4, B:210:0x05fc, B:212:0x061b, B:214:0x062c, B:215:0x0635, B:216:0x0639, B:222:0x066e, B:224:0x0672, B:226:0x0676, B:228:0x067b, B:230:0x0683, B:232:0x069f, B:234:0x06a3, B:236:0x06a7, B:239:0x06b7, B:241:0x06bc, B:242:0x06d1, B:244:0x06d7, B:245:0x06dc, B:247:0x06e2, B:248:0x06e5, B:251:0x068d, B:253:0x0701, B:255:0x0705, B:257:0x071b, B:261:0x0723, B:263:0x0728, B:266:0x0711, B:218:0x063e, B:267:0x0630, B:268:0x061f, B:270:0x065a, B:272:0x0663, B:273:0x0667, B:274:0x065e, B:275:0x030c, B:277:0x0310, B:278:0x0326, B:281:0x032b, B:283:0x0331, B:286:0x033b, B:290:0x034c, B:292:0x035c, B:294:0x043c, B:295:0x0371, B:297:0x037f, B:301:0x0388, B:306:0x03e1, B:307:0x03fb, B:309:0x03ff, B:311:0x040e, B:313:0x041c, B:315:0x0439, B:318:0x03ea, B:323:0x044a, B:327:0x0459, B:329:0x0261, B:333:0x0127, B:338:0x012b, B:340:0x0131, B:342:0x0159, B:344:0x015f, B:346:0x016a, B:351:0x0184, B:353:0x0188, B:355:0x018c, B:362:0x0195, B:358:0x01b1, B:360:0x01c4, B:364:0x01da, B:336:0x01e5, B:374:0x01cf, B:376:0x01d6), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x026c  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void render(int i10, GLRenderer gLRenderer, float[] fArr, float[] fArr2, boolean z10, Camera camera, float[][] fArr3, boolean z11) {
        float[] fArr4;
        boolean z12;
        float[] fArr5;
        boolean z13;
        boolean z14;
        boolean z15;
        float f10;
        IRenderHook iRenderHook;
        GLSLShader initShader;
        Buffer buffer;
        ByteBuffer byteBuffer;
        TextureManager textureManager;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        float f11;
        boolean z16;
        int i16;
        float[] fArr6;
        boolean z17;
        GL10 gl10 = gLRenderer.gl10;
        GL11 gl11 = gLRenderer.gl11;
        float[] fArr7 = CompiledInstance.lights4;
        Object3D object3D = this.obj;
        gLRenderer.setShader(object3D.getShaderInternal());
        int size = object3D.compiled.size();
        Object3D object3D2 = object3D.shareWith;
        if (object3D2 != null && !object3D.sharing) {
            object3D.sharing = true;
            if (size != object3D2.compiled.size()) {
                Logger.log("Number of compiled instances don't match...can't share data!", 0);
                return;
            }
            for (int i17 = 0; i17 < size; i17++) {
                CompiledInstance compiledInstance = object3D.compiled.get(i17);
                CompiledInstance compiledInstance2 = object3D.shareWith.compiled.get(i17);
                if (Config.useVBO && gl11 != null && compiledInstance2.vboPossible) {
                    int i18 = compiledInstance2.rendererID;
                    if (i18 != i10 && i18 != -999999999) {
                        if (Logger.getLogLevel() >= 2) {
                            Logger.log("OpenGL context has changed(1)...recovering for renderer " + i10 + "/" + this.rendererID + "!");
                        }
                        compiledInstance2.buffersCreated = false;
                    }
                    compiledInstance2.compileToVBO(gl11, gLRenderer);
                    compiledInstance2.rendererID = i10;
                }
                compiledInstance.copy(compiledInstance2);
                compiledInstance.filled = true;
            }
            compileToVBO(gl11, gLRenderer);
            this.rendererID = i10;
            if (Logger.getLogLevel() >= 2) {
                Logger.log("Object '" + object3D.getName() + "' shares compiled data with object '" + object3D.shareWith.getName() + "'");
            }
        }
        if (!this.filled) {
            Logger.log("render() called on an uncompiled object (" + object3D.getName() + ")!", 0);
            return;
        }
        World world = object3D.myWorld;
        if (world == null) {
            return;
        }
        int i19 = world.lights.lightCnt;
        boolean z18 = (this.colors == null && this.colorsId == 0) ? false : true;
        boolean z19 = (this.tangents == null && this.tangentsId == 0) ? false : true;
        int i20 = this.rendererID;
        if (i20 == -999999999) {
            this.rendererID = i10;
        } else if (i20 != i10) {
            if (this.buffersCreated) {
                try {
                    if (Logger.getLogLevel() >= 2) {
                        Logger.log("OpenGL context has changed(2)...recovering for renderer " + i10 + "/" + this.rendererID + "!");
                    }
                    this.buffersCreated = false;
                    if (object3D.shareWith != null) {
                        object3D.sharing = true;
                        int i21 = 0;
                        while (i21 < size) {
                            CompiledInstance compiledInstance3 = object3D.compiled.get(i21);
                            CompiledInstance compiledInstance4 = object3D.shareWith.compiled.get(i21);
                            if (!Config.useVBO || gl11 == null) {
                                fArr4 = fArr7;
                                z12 = z19;
                            } else {
                                z12 = z19;
                                try {
                                    if (!compiledInstance4.vboPossible || compiledInstance4.rendererID == i10) {
                                        fArr4 = fArr7;
                                    } else {
                                        fArr4 = fArr7;
                                        if (Logger.getLogLevel() >= 2) {
                                            try {
                                                Logger.log("Uploading data for parent object " + object3D.shareWith.getName() + "!");
                                            } catch (Exception unused) {
                                                Logger.log("Unable to recover to use VBO...using normal vertex arrays instead!", 1);
                                                this.rendererID = i10;
                                                this.lastRenderer = gLRenderer;
                                                if (size <= 1) {
                                                }
                                                if (this.dumpy == null) {
                                                }
                                                if (!r7) {
                                                }
                                                if (fArr5 == null) {
                                                }
                                                gl10.glMatrixMode(5888);
                                                gl10.glPushMatrix();
                                                gl10.glLoadIdentity();
                                                if (object3D.doCulling) {
                                                }
                                                z13 = false;
                                                if (z11) {
                                                }
                                                gl10.glLoadMatrixf(fArr5, 0);
                                                iRenderHook = object3D.renderHook;
                                                if (iRenderHook != null) {
                                                }
                                                initShader = gLRenderer.initShader();
                                                if (initShader != null) {
                                                }
                                                if (iRenderHook != null) {
                                                }
                                                if (Config.useVBO) {
                                                }
                                                buffer = CompiledInstance.lastVertexBuffer;
                                                byteBuffer = this.vertices.bytes;
                                                if (buffer != byteBuffer) {
                                                }
                                                if (!z11) {
                                                }
                                                do {
                                                    if (this.indexed) {
                                                    }
                                                    if (iRenderHook == null) {
                                                    }
                                                } while (iRenderHook.repeatRendering());
                                                if (z12) {
                                                }
                                                if (iRenderHook != null) {
                                                }
                                                if (initShader != null) {
                                                }
                                                if (object3D.isEnvmapped) {
                                                }
                                                gl10.glMatrixMode(5888);
                                                gl10.glPopMatrix();
                                                if (z15) {
                                                }
                                                if (z14) {
                                                }
                                                if (object3D.isFlatShaded) {
                                                }
                                                if (z11) {
                                                }
                                                if (!object3D.doCulling) {
                                                }
                                                gLRenderer.closeShader();
                                            }
                                        }
                                        compiledInstance4.buffersCreated = false;
                                        compiledInstance4.compileToVBO(gl11, gLRenderer);
                                        compiledInstance4.rendererID = i10;
                                    }
                                } catch (Exception unused2) {
                                    fArr4 = fArr7;
                                    Logger.log("Unable to recover to use VBO...using normal vertex arrays instead!", 1);
                                    this.rendererID = i10;
                                    this.lastRenderer = gLRenderer;
                                    if (size <= 1) {
                                    }
                                    if (this.dumpy == null) {
                                    }
                                    if (!r7) {
                                    }
                                    if (fArr5 == null) {
                                    }
                                    gl10.glMatrixMode(5888);
                                    gl10.glPushMatrix();
                                    gl10.glLoadIdentity();
                                    if (object3D.doCulling) {
                                    }
                                    z13 = false;
                                    if (z11) {
                                    }
                                    gl10.glLoadMatrixf(fArr5, 0);
                                    iRenderHook = object3D.renderHook;
                                    if (iRenderHook != null) {
                                    }
                                    initShader = gLRenderer.initShader();
                                    if (initShader != null) {
                                    }
                                    if (iRenderHook != null) {
                                    }
                                    if (Config.useVBO) {
                                    }
                                    buffer = CompiledInstance.lastVertexBuffer;
                                    byteBuffer = this.vertices.bytes;
                                    if (buffer != byteBuffer) {
                                    }
                                    if (!z11) {
                                    }
                                    do {
                                        if (this.indexed) {
                                        }
                                        if (iRenderHook == null) {
                                        }
                                    } while (iRenderHook.repeatRendering());
                                    if (z12) {
                                    }
                                    if (iRenderHook != null) {
                                    }
                                    if (initShader != null) {
                                    }
                                    if (object3D.isEnvmapped) {
                                    }
                                    gl10.glMatrixMode(5888);
                                    gl10.glPopMatrix();
                                    if (z15) {
                                    }
                                    if (z14) {
                                    }
                                    if (object3D.isFlatShaded) {
                                    }
                                    if (z11) {
                                    }
                                    if (!object3D.doCulling) {
                                    }
                                    gLRenderer.closeShader();
                                }
                            }
                            compiledInstance3.copy(compiledInstance4);
                            i21++;
                            z19 = z12;
                            fArr7 = fArr4;
                        }
                    }
                    fArr4 = fArr7;
                    z12 = z19;
                    compileToVBO(gl11, gLRenderer);
                    if (this.dynamic) {
                        fill();
                    }
                } catch (Exception unused3) {
                    fArr4 = fArr7;
                    z12 = z19;
                }
            } else {
                fArr4 = fArr7;
                z12 = z19;
            }
            this.rendererID = i10;
            this.lastRenderer = gLRenderer;
            boolean z20 = size <= 1;
            if (this.dumpy == null) {
                if (z20) {
                    this.dumpy = new float[16];
                } else {
                    this.dumpy = CompiledInstance.STATIC_DUMPY;
                }
            }
            fArr5 = !z20 ? gLRenderer.matrixCache.get(object3D) : null;
            if (fArr5 == null) {
                CompiledInstance.mo.setTo(object3D.transBuffer);
                CompiledInstance.mat.setTo(camera.getBack());
                CompiledInstance.mat.transformToGL();
                CompiledInstance.mo.translate(-camera.backBx, -camera.backBy, -camera.backBz);
                CompiledInstance.mo.matMul(CompiledInstance.mat);
                fArr5 = CompiledInstance.mo.fillDump(this.dumpy);
                if (z20) {
                    gLRenderer.matrixCache.put(object3D, fArr5);
                }
            }
            gl10.glMatrixMode(5888);
            gl10.glPushMatrix();
            gl10.glLoadIdentity();
            if (object3D.doCulling) {
                gl10.glDisable(2884);
            } else if (object3D.reverseCulling) {
                gl10.glCullFace(1028);
                z13 = true;
                if (z11) {
                    z14 = z13;
                    z15 = z18;
                    f10 = 1.0f;
                    gl10.glDisable(2896);
                } else {
                    if (z18) {
                        fArr2[3] = 1.0f;
                    }
                    gl10.glLightModelfv(2899, fArr, 0);
                    gl10.glMaterialfv(1032, 5632, fArr2, 0);
                    CompiledInstance.allOnes3[3] = fArr2[3];
                    if (size > 1) {
                        f11 = 0.0f;
                        for (int i22 = 0; i22 < i19 && i22 < 8; i22++) {
                            float f12 = i22;
                            float[] fArr8 = fArr3[i22];
                            float f13 = fArr8[0];
                            if (f13 != -9999.0f) {
                                f11 = f11 + ((f12 + 0.7181f) * f13) + ((f12 + 1.1f) * fArr8[1]) + ((f12 + 2.24f) * fArr8[2]) + ((f12 + 3.567f) * fArr8[3]) + ((f12 + 9.7272f) * (fArr8[4] + (fArr8[5] * 1.4f) + (fArr8[6] * 4.56f)));
                            }
                        }
                    } else {
                        f11 = 0.0f;
                    }
                    if (z18) {
                        gl10.glEnable(2903);
                    }
                    if (CompiledInstance.chkSum == f11 && CompiledInstance.lastObj == object3D) {
                        z14 = z13;
                        z15 = z18;
                        f10 = 1.0f;
                        if (object3D.isFlatShaded) {
                            gl10.glShadeModel(7424);
                        }
                    }
                    if (!gLRenderer.gl20) {
                        gl10.glMaterialfv(1032, 4608, CompiledInstance.ALL_ONES_3, 0);
                        float[] fArr9 = CompiledInstance.allOnes3;
                        gl10.glMaterialfv(1032, 4609, fArr9, 0);
                        gl10.glMaterialfv(1032, 4610, fArr9, 0);
                    }
                    if (i19 < CompiledInstance.lastLightCnt) {
                        for (int i23 = 0; i23 < CompiledInstance.lastLightCnt; i23++) {
                            gl10.glDisable(CompiledInstance.LIGHTS[i23]);
                        }
                    }
                    CompiledInstance.lastLightCnt = 0;
                    int i24 = 0;
                    while (i24 < i19 && i24 < 8) {
                        float[] fArr10 = fArr3[i24];
                        int i25 = CompiledInstance.LIGHTS[i24];
                        if (fArr10[0] == -9999.0f) {
                            gl10.glDisable(i25);
                            z16 = z13;
                            i16 = i19;
                            fArr6 = fArr4;
                            z17 = z18;
                        } else {
                            CompiledInstance.lastLightCnt++;
                            boolean z21 = (CompiledInstance.chkSum == f11 && CompiledInstance.lastObj == object3D) ? false : true;
                            if (z21) {
                                gl10.glEnable(i25);
                                fArr4[0] = fArr10[1];
                                fArr4[1] = fArr10[2];
                                fArr4[2] = fArr10[3];
                                fArr4[3] = 1.0f;
                                i16 = i19;
                                z16 = z13;
                                fArr6 = fArr4;
                                gl10.glLightfv(i25, 4611, fArr6, 0);
                                fArr6[0] = fArr10[4];
                                fArr6[1] = fArr10[5];
                                fArr6[2] = fArr10[6];
                                fArr6[3] = 0.0f;
                                gl10.glLightfv(i25, 4609, fArr6, 0);
                                z17 = z18;
                                gl10.glLightfv(i25, 4608, CompiledInstance.ALL_ZEROS, 0);
                                float f14 = fArr10[0];
                                if (f14 >= 0.0f) {
                                    if (f14 == 0.0f) {
                                        f14 = 0.001f;
                                    }
                                    gl10.glLightf(i25, 4616, 4.0f / f14);
                                } else {
                                    gl10.glLightf(i25, 4616, 0.0f);
                                }
                            } else {
                                z16 = z13;
                                i16 = i19;
                                fArr6 = fArr4;
                                z17 = z18;
                            }
                            if (object3D.doSpecularLighting) {
                                gl10.glMaterialf(1032, 5633, Config.specPow / 2.0f);
                                if (!z21) {
                                    fArr6[0] = fArr10[4];
                                    fArr6[1] = fArr10[5];
                                    fArr6[2] = fArr10[6];
                                    fArr6[3] = 0.0f;
                                }
                                gl10.glLightfv(i25, 4610, fArr6, 0);
                            } else {
                                gl10.glLightfv(i25, 4610, CompiledInstance.ALL_ZEROS, 0);
                            }
                        }
                        i24++;
                        z18 = z17;
                        i19 = i16;
                        fArr4 = fArr6;
                        z13 = z16;
                    }
                    z14 = z13;
                    z15 = z18;
                    f10 = 1.0f;
                    CompiledInstance.lastObj = object3D;
                    CompiledInstance.chkSum = f11;
                    if (object3D.isFlatShaded) {
                    }
                }
                gl10.glLoadMatrixf(fArr5, 0);
                iRenderHook = object3D.renderHook;
                if (iRenderHook != null) {
                    iRenderHook.setTransparency(fArr2 != null ? fArr2[3] : f10);
                    iRenderHook.setCurrentObject3D(object3D);
                    iRenderHook.beforeRendering(this.polyIndex);
                }
                initShader = gLRenderer.initShader();
                if (initShader != null) {
                    initShader.directMode = true;
                }
                if (iRenderHook != null) {
                    iRenderHook.setCurrentShader(initShader);
                }
                if (Config.useVBO || gl11 == null || !this.vboPossible) {
                    buffer = CompiledInstance.lastVertexBuffer;
                    byteBuffer = this.vertices.bytes;
                    if (buffer != byteBuffer) {
                        CompiledInstance.lastVertexBuffer = byteBuffer;
                        gl10.glNormalPointer(5126, 12, this.normals.bytes);
                        gl10.glVertexPointer(3, 5126, 12, this.vertices.bytes);
                        gl10.glEnableClientState(32885);
                        gl10.glEnableClientState(32884);
                        if (z15) {
                            gl10.glColorPointer(4, 5132, 16, this.colors);
                            gl10.glEnableClientState(32886);
                        } else {
                            gl10.glDisableClientState(32886);
                        }
                        if (z12) {
                            gLRenderer.setTangents(this.tangents);
                        } else {
                            gLRenderer.clearTangents();
                        }
                        gLRenderer.clearStageFlag();
                        for (int i26 = 0; i26 < this.endStage; i26++) {
                            gl10.glClientActiveTexture(CompiledInstance.stageMap[i26]);
                            gl10.glEnableClientState(32888);
                            gl10.glTexCoordPointer(2, 5132, 8, this.multiTextures[i26]);
                        }
                    } else {
                        if (z15) {
                            gl10.glEnableClientState(32886);
                        } else {
                            gl10.glDisableClientState(32886);
                        }
                        if (z12) {
                            gLRenderer.setTangents(this.tangents);
                        } else {
                            gLRenderer.clearTangents();
                        }
                    }
                    if (!z11 && object3D.isEnvmapped && (!Config.glForceEnvMapToSecondStage || this.endStage > 1)) {
                        textureManager = TextureManager.getInstance();
                        if (this.tex0 != -1 || object3D.texture[this.polyIndex] != this.lastTex0) {
                            int i27 = object3D.texture[this.polyIndex];
                            this.lastTex0 = i27;
                            this.tex0 = textureManager.getTextureByID(i27).getOpenGLID(i10);
                        }
                        if (Config.glForceEnvMapToSecondStage || (this.tex1 != -1 && object3D.multiTex[0][this.polyIndex] == this.lastTex1)) {
                            i11 = 1;
                            i12 = this.tex0;
                            if (Config.glForceEnvMapToSecondStage) {
                                i12 = this.tex1;
                                i13 = i11;
                            } else {
                                i13 = 0;
                            }
                            if (gLRenderer.lastTextures[i13] != i12) {
                                gLRenderer.bindTexture(i13, i12);
                            }
                            gl10.glMatrixMode(5890);
                            gl10.glPushMatrix();
                            gl10.glLoadIdentity();
                            gl10.glTranslatef(0.5f, 0.5f, 0.5f);
                            gl10.glScalef(0.5f, 0.5f, 0.5f);
                            gl10.glMultMatrixf(fArr5, 0);
                            gl10.glMatrixMode(5888);
                        }
                        i11 = 1;
                        if (this.endStage > 1) {
                            int i28 = object3D.multiTex[0][this.polyIndex];
                            this.lastTex1 = i28;
                            this.tex1 = textureManager.getTextureByID(i28).getOpenGLID(i10);
                        }
                        i12 = this.tex0;
                        if (Config.glForceEnvMapToSecondStage) {
                        }
                        if (gLRenderer.lastTextures[i13] != i12) {
                        }
                        gl10.glMatrixMode(5890);
                        gl10.glPushMatrix();
                        gl10.glLoadIdentity();
                        gl10.glTranslatef(0.5f, 0.5f, 0.5f);
                        gl10.glScalef(0.5f, 0.5f, 0.5f);
                        gl10.glMultMatrixf(fArr5, 0);
                        gl10.glMatrixMode(5888);
                    }
                    do {
                        if (this.indexed) {
                            gl10.glDrawElements(this.primitiveType, this.indexCount, 5123, this.indices);
                        } else {
                            gl10.glDrawArrays(this.primitiveType, 0, this.cnt);
                        }
                        if (iRenderHook == null) {
                            break;
                        }
                    } while (iRenderHook.repeatRendering());
                    if (z12) {
                        gLRenderer.clearTangents();
                    }
                    if (iRenderHook != null) {
                        iRenderHook.afterRendering(this.polyIndex);
                    }
                } else {
                    compileToVBO(gl11, gLRenderer);
                    Buffer buffer2 = CompiledInstance.lastVertexBuffer;
                    ByteBuffer byteBuffer2 = this.vertices.bytes;
                    if (buffer2 != byteBuffer2) {
                        CompiledInstance.lastVertexBuffer = byteBuffer2;
                        gl11.glEnableClientState(32885);
                        gl11.glBindBuffer(34962, this.normalsId);
                        gl11.glNormalPointer(5126, 12, 0);
                        gl11.glEnableClientState(32884);
                        gl11.glBindBuffer(34962, this.verticesId);
                        gl11.glVertexPointer(3, 5126, 12, 0);
                        if (z15) {
                            gl11.glBindBuffer(34962, this.colorsId);
                            gl10.glEnableClientState(32886);
                            gl11.glColorPointer(4, 5132, 16, 0);
                        } else {
                            gl10.glDisableClientState(32886);
                        }
                        if (z12) {
                            gLRenderer.setTangents(this.tangentsId);
                        } else {
                            gLRenderer.clearTangents();
                        }
                        gLRenderer.clearStageFlag();
                        for (int i29 = 0; i29 < this.endStage; i29++) {
                            gl10.glClientActiveTexture(CompiledInstance.stageMap[i29]);
                            gl10.glEnableClientState(32888);
                            gl11.glBindBuffer(34962, this.multiTexturesIds[i29]);
                            gl11.glTexCoordPointer(2, 5132, 8, 0);
                        }
                        gl11.glBindBuffer(34962, 0);
                    } else {
                        if (z15) {
                            gl11.glBindBuffer(34962, this.colorsId);
                            gl10.glEnableClientState(32886);
                            gl11.glColorPointer(4, 5132, 16, 0);
                            gl11.glBindBuffer(34962, 0);
                        } else {
                            gl10.glDisableClientState(32886);
                        }
                        if (z12) {
                            gLRenderer.setTangents(this.tangentsId);
                        } else {
                            gLRenderer.clearTangents();
                        }
                    }
                    if (!z11 && object3D.isEnvmapped && (!Config.glForceEnvMapToSecondStage || this.endStage > 1)) {
                        TextureManager textureManager2 = TextureManager.getInstance();
                        if (this.tex0 == -1) {
                            i14 = i10;
                            this.tex0 = textureManager2.getTextureByID(object3D.texture[this.polyIndex]).getOpenGLID(i14);
                        } else {
                            i14 = i10;
                        }
                        if (Config.glForceEnvMapToSecondStage && this.tex1 == -1 && this.endStage > 1) {
                            this.tex1 = textureManager2.getTextureByID(object3D.multiTex[0][this.polyIndex]).getOpenGLID(i14);
                        }
                        int i30 = this.tex0;
                        if (Config.glForceEnvMapToSecondStage) {
                            i30 = this.tex1;
                            i15 = 1;
                        } else {
                            i15 = 0;
                        }
                        gLRenderer.bindTexture(i15, i30);
                        gl10.glMatrixMode(5890);
                        gl10.glPushMatrix();
                        gl10.glLoadIdentity();
                        gl10.glTranslatef(0.5f, 0.5f, 0.5f);
                        gl10.glScalef(0.5f, 0.5f, 0.5f);
                        gl10.glMultMatrixf(fArr5, 0);
                        gl10.glMatrixMode(5888);
                    }
                    do {
                        if (this.indexed) {
                            gl11.glBindBuffer(34963, this.indicesId);
                            gl11.glDrawElements(this.primitiveType, this.indexCount, 5123, 0);
                            gl11.glBindBuffer(34963, 0);
                        } else {
                            gl10.glDrawArrays(this.primitiveType, 0, this.cnt);
                        }
                        if (iRenderHook == null) {
                            break;
                        }
                    } while (iRenderHook.repeatRendering());
                    if (z12) {
                        gLRenderer.clearTangents(this.tangentsId);
                    }
                    if (iRenderHook != null) {
                        iRenderHook.afterRendering(this.polyIndex);
                    }
                }
                if (initShader != null) {
                    initShader.directMode = false;
                }
                if (object3D.isEnvmapped) {
                    gl10.glMatrixMode(5890);
                    gl10.glPopMatrix();
                }
                gl10.glMatrixMode(5888);
                gl10.glPopMatrix();
                if (z15) {
                    gl10.glDisable(2903);
                }
                if (z14) {
                    gl10.glCullFace(1029);
                }
                if (object3D.isFlatShaded) {
                    gl10.glShadeModel(7425);
                }
                if (z11) {
                    gl10.glEnable(2896);
                }
                if (!object3D.doCulling) {
                    gl10.glEnable(2884);
                }
                gLRenderer.closeShader();
            }
            z13 = false;
            if (z11) {
            }
            gl10.glLoadMatrixf(fArr5, 0);
            iRenderHook = object3D.renderHook;
            if (iRenderHook != null) {
            }
            initShader = gLRenderer.initShader();
            if (initShader != null) {
            }
            if (iRenderHook != null) {
            }
            if (Config.useVBO) {
            }
            buffer = CompiledInstance.lastVertexBuffer;
            byteBuffer = this.vertices.bytes;
            if (buffer != byteBuffer) {
            }
            if (!z11) {
                textureManager = TextureManager.getInstance();
                if (this.tex0 != -1) {
                }
                int i272 = object3D.texture[this.polyIndex];
                this.lastTex0 = i272;
                this.tex0 = textureManager.getTextureByID(i272).getOpenGLID(i10);
                if (Config.glForceEnvMapToSecondStage) {
                }
                i11 = 1;
                i12 = this.tex0;
                if (Config.glForceEnvMapToSecondStage) {
                }
                if (gLRenderer.lastTextures[i13] != i12) {
                }
                gl10.glMatrixMode(5890);
                gl10.glPushMatrix();
                gl10.glLoadIdentity();
                gl10.glTranslatef(0.5f, 0.5f, 0.5f);
                gl10.glScalef(0.5f, 0.5f, 0.5f);
                gl10.glMultMatrixf(fArr5, 0);
                gl10.glMatrixMode(5888);
            }
            do {
                if (this.indexed) {
                }
                if (iRenderHook == null) {
                }
            } while (iRenderHook.repeatRendering());
            if (z12) {
            }
            if (iRenderHook != null) {
            }
            if (initShader != null) {
            }
            if (object3D.isEnvmapped) {
            }
            gl10.glMatrixMode(5888);
            gl10.glPopMatrix();
            if (z15) {
            }
            if (z14) {
            }
            if (object3D.isFlatShaded) {
            }
            if (z11) {
            }
            if (!object3D.doCulling) {
            }
            gLRenderer.closeShader();
        }
        fArr4 = fArr7;
        z12 = z19;
        this.lastRenderer = gLRenderer;
        if (size <= 1) {
        }
        if (this.dumpy == null) {
        }
        if (!z20) {
        }
        if (fArr5 == null) {
        }
        gl10.glMatrixMode(5888);
        gl10.glPushMatrix();
        gl10.glLoadIdentity();
        if (object3D.doCulling) {
        }
        z13 = false;
        if (z11) {
        }
        gl10.glLoadMatrixf(fArr5, 0);
        iRenderHook = object3D.renderHook;
        if (iRenderHook != null) {
        }
        initShader = gLRenderer.initShader();
        if (initShader != null) {
        }
        if (iRenderHook != null) {
        }
        if (Config.useVBO) {
        }
        buffer = CompiledInstance.lastVertexBuffer;
        byteBuffer = this.vertices.bytes;
        if (buffer != byteBuffer) {
        }
        if (!z11) {
        }
        do {
            if (this.indexed) {
            }
            if (iRenderHook == null) {
            }
        } while (iRenderHook.repeatRendering());
        if (z12) {
        }
        if (iRenderHook != null) {
        }
        if (initShader != null) {
        }
        if (object3D.isEnvmapped) {
        }
        gl10.glMatrixMode(5888);
        gl10.glPopMatrix();
        if (z15) {
        }
        if (z14) {
        }
        if (object3D.isFlatShaded) {
        }
        if (z11) {
        }
        if (!object3D.doCulling) {
        }
        gLRenderer.closeShader();
    }
}
