package com.threed.jpct;

import android.icu.text.DateFormat;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.time.Year;
import java.util.ArrayList;
import java.util.HashMap;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;

public class CompiledInstance {
    protected static final float[] ALL_ONES;
    protected static final float[] ALL_ONES_3;
    protected static final float[] ALL_ZEROS;
    protected static final int BUFFER_SIZE;
    protected static final float COORD_SCALE = 1.0f;
    protected static final int[] LIGHTS;
    protected static final float[] STATIC_DUMPY;
    protected static final float[] ZEROS_ONE;
    protected static final float[] allOnes3;
    public static float chkSum = 0.0f;
    public static int lastLightCnt = 0;
    public static Object3D lastObj = null;
    public static Buffer lastVertexBuffer = null;
    protected static final float[] lights4;
    protected static Matrix mat = null;
    protected static Matrix mo = null;
    protected static final int[] sbPosMT;
    protected static int sbPosOne = 0;
    protected static int sbPosThree = 0;
    protected static int sbPosTwo = 0;
    protected static final long serialVersionUID = 1;
    protected static final int[] smallBuffer;
    protected static final int[][] smallBufferMT;
    protected static final int[] smallBufferOne;
    protected static final int[] smallBufferThree;
    protected static final int[] smallBufferTwo;
    protected static final int[] stageMap;
    protected boolean dynamic;
    protected boolean firstCompile;
    protected boolean hasBeenRefilled;
    protected boolean hasBeenVirtualized;
    protected int indexCount;
    protected boolean indexed;
    protected Object3D obj;
    protected int polyIndex;
    protected int primitiveType;
    protected boolean staticUV;
    protected int treeID;
    protected int useStrip;
    protected IntBuffer normals = null;
    protected IntBuffer vertices = null;
    protected IntBuffer colors = null;
    protected IntBuffer tangents = null;
    protected ShortBuffer indices = null;
    protected IntBuffer[] multiTextures = null;
    protected int normalsId = 0;
    protected int verticesId = 0;
    protected int colorsId = 0;
    protected int indicesId = 0;
    protected int tangentsId = 0;
    protected int[] multiTexturesIds = null;
    protected IntList tris = new IntList();
    protected int cnt = 0;
    protected int endStage = 0;
    protected String key = null;
    protected int tex0 = -1;
    protected int tex1 = -1;
    protected int lastTex0 = -99;
    protected int lastTex1 = -99;
    protected HashMap<GenericContainer, Integer> vertex2index = null;
    protected int rendererID = Year.MIN_VALUE;
    protected GLRenderer lastRenderer = null;
    protected boolean filled = false;
    protected float[] dumpy = null;
    protected boolean needsCoordMapper = true;
    protected int[] coordMapper = null;
    protected int[] vcoords = null;
    protected int[] ncoords = null;
    protected boolean buffersCreated = false;
    protected boolean vboPossible = true;

    static {
        int i10 = Config.vertexBufferSize;
        BUFFER_SIZE = i10;
        smallBufferOne = new int[i10];
        smallBufferTwo = new int[i10];
        smallBufferMT = (int[][]) Array.newInstance(Integer.TYPE, 4, i10);
        sbPosMT = new int[4];
        smallBufferThree = new int[i10];
        smallBuffer = new int[4];
        stageMap = new int[]{33984, 33985, 33986, 33987};
        ALL_ONES = new float[]{1.0f, 1.0f, 1.0f, 1.0f};
        ALL_ONES_3 = new float[]{1.0f, 1.0f, 1.0f, 0.0f};
        ZEROS_ONE = new float[]{0.0f, 0.0f, 0.0f, 1.0f};
        ALL_ZEROS = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        allOnes3 = new float[]{1.0f, 1.0f, 1.0f, 0.0f};
        lights4 = new float[4];
        STATIC_DUMPY = new float[16];
        sbPosThree = 0;
        sbPosOne = 0;
        sbPosTwo = 0;
        LIGHTS = new int[]{16384, 16385, 16386, 16387, 16388, 16389, 16390, 16391};
        mat = new Matrix();
        mo = new Matrix();
        lastObj = null;
        chkSum = 0.0f;
        lastLightCnt = 0;
        lastVertexBuffer = null;
    }

    public CompiledInstance(Object3D object3D, int i10, int i11) {
        this.dynamic = false;
        this.obj = null;
        this.polyIndex = 0;
        this.indexed = true;
        this.staticUV = true;
        this.treeID = -1;
        this.useStrip = Config.glTriangleStrips ? 0 : 2;
        this.primitiveType = 4;
        this.firstCompile = true;
        this.hasBeenRefilled = false;
        this.hasBeenVirtualized = false;
        this.obj = object3D;
        this.polyIndex = i10;
        this.treeID = i11;
        this.dynamic = object3D.dynamic;
        this.indexed = object3D.indexed;
        this.staticUV = object3D.staticUV;
    }

    private boolean compare(float[] fArr, float[] fArr2) {
        for (int i10 = 0; i10 < 5; i10++) {
            if (fArr[i10] != fArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x08db  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0471  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void _fill() {
        long j10;
        String str;
        boolean z10;
        long j11;
        String str2;
        Animation animation;
        boolean z11;
        float[][] fArr;
        int i10;
        int i11;
        int i12;
        Mesh mesh;
        float[] fArr2;
        float[] fArr3;
        GenericContainer genericContainer;
        int i13;
        int i14;
        float[] fArr4;
        IntList intList;
        float[] fArr5;
        int i15;
        char c10;
        IntBuffer intBuffer;
        int i16;
        char c11;
        IntList intList2;
        IntBuffer intBuffer2;
        int i17;
        int i18;
        int i19;
        sbPosOne = 0;
        sbPosTwo = 0;
        sbPosThree = 0;
        if (this.obj.shareWith != null) {
            return;
        }
        if (this.useStrip == 0) {
            checkStrips();
        }
        long j12 = 0;
        long currentTimeMillis = Logger.isDebugEnabled() ? System.currentTimeMillis() : 0L;
        this.hasBeenRefilled = true;
        IntList intList3 = this.tris;
        String str3 = "/";
        if (intList3 != null) {
            int size = intList3.size();
            if (this.normals == null) {
                long currentTimeMillis2 = System.currentTimeMillis();
                int i20 = size * 36;
                this.normals = ByteBuffer.allocateDirect(i20).order(ByteOrder.nativeOrder()).asIntBuffer();
                this.vertices = ByteBuffer.allocateDirect(i20).order(ByteOrder.nativeOrder()).asIntBuffer();
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
                    int i21 = 0;
                    i19 = 1;
                    while (true) {
                        int[][] iArr = this.obj.multiTex;
                        if (i21 >= iArr.length || iArr[i21][this.polyIndex] == -1) {
                            break;
                        }
                        i19++;
                        i21++;
                    }
                } else {
                    i19 = 1;
                }
                this.endStage = i19;
                int i22 = Config.glStageCount;
                if (i19 > i22) {
                    this.endStage = i22;
                }
                this.multiTextures = new IntBuffer[this.endStage];
                for (int i23 = 0; i23 < this.endStage; i23++) {
                    this.multiTextures[i23] = ByteBuffer.allocateDirect(size * 24).order(ByteOrder.nativeOrder()).asIntBuffer();
                }
                z10 = true;
                j12 = currentTimeMillis2;
            } else {
                z10 = false;
            }
            Mesh mesh2 = this.obj.objMesh;
            float[] fArr6 = mesh2.xOrg;
            float[] fArr7 = mesh2.yOrg;
            float[] fArr8 = mesh2.zOrg;
            float[] fArr9 = mesh2.nxOrg;
            float[] fArr10 = mesh2.nyOrg;
            float[] fArr11 = mesh2.nzOrg;
            if (fArr9 == null) {
                Logger.log("Can't compile a mesh that has already been stripped!", 0);
                return;
            }
            this.cnt = 0;
            HashMap<GenericContainer, Integer> hashMap = this.vertex2index;
            if (hashMap != null) {
                hashMap.clear();
            }
            int size2 = this.tris.size();
            j10 = currentTimeMillis;
            IntList intList4 = (this.dynamic && z10 && this.colors == null && this.coordMapper == null) ? new IntList() : null;
            int[] iArr2 = this.coordMapper;
            if (iArr2 == null || !this.staticUV) {
                j11 = j12;
                str2 = "/";
                Vectors vectors = this.obj.objVectors;
                float[] fArr12 = vectors.nuOrg;
                int[][] iArr3 = mesh2.points;
                int i24 = 0;
                while (i24 < 4) {
                    sbPosMT[i24] = 0;
                    i24++;
                    str2 = str2;
                    fArr11 = fArr11;
                    size2 = size2;
                }
                float[][] fArr13 = this.obj.objMesh.tangentVectors;
                int i25 = 0;
                while (i25 < size2) {
                    String str4 = str2;
                    int i26 = this.tris.get(i25);
                    if (i25 > 0) {
                        fArr = fArr13;
                        z11 = z10;
                        if (this.useStrip == 1) {
                            i10 = 2;
                            i11 = i10;
                            GenericContainer genericContainer2 = null;
                            while (i11 < 3) {
                                int i27 = iArr3[i26][i11];
                                int[][] iArr4 = iArr3;
                                int i28 = mesh2.coords[i27];
                                int i29 = i26;
                                if (this.indexed) {
                                    i12 = size2;
                                    int i30 = i25;
                                    IntList intList5 = intList4;
                                    int i31 = i11;
                                    mesh = mesh2;
                                    fArr2 = fArr6;
                                    fArr3 = fArr7;
                                    if (genericContainer2 == null) {
                                        genericContainer = new GenericContainer(11);
                                    } else {
                                        genericContainer2.clear();
                                        genericContainer = genericContainer2;
                                    }
                                    genericContainer.add(fArr2[i28]);
                                    genericContainer.add(fArr3[i28]);
                                    genericContainer.add(fArr8[i28]);
                                    genericContainer.add(fArr9[i28]);
                                    genericContainer.add(fArr10[i28]);
                                    genericContainer.add(fArr11[i28]);
                                    int i32 = 0;
                                    while (i32 < this.endStage) {
                                        int i33 = i31;
                                        IntList intList6 = intList5;
                                        float[] fArr14 = fArr11;
                                        float[] fArr15 = fArr8;
                                        if (i32 == 0) {
                                            float[] fArr16 = vectors.nuOrg;
                                            float[] fArr17 = vectors.nvOrg;
                                            genericContainer.add(fArr16[i27]);
                                            genericContainer.add(fArr17[i27]);
                                        } else if (this.obj.maxStagesUsed > 1) {
                                            int i34 = i32 - 1;
                                            float[] fArr18 = vectors.uMul[i34];
                                            float[] fArr19 = vectors.vMul[i34];
                                            genericContainer.add(fArr18[i27]);
                                            genericContainer.add(fArr19[i27]);
                                        }
                                        i32++;
                                        fArr8 = fArr15;
                                        fArr11 = fArr14;
                                        intList5 = intList6;
                                        i31 = i33;
                                    }
                                    if (this.colors != null) {
                                        genericContainer.add(vectors.alpha[i27]);
                                    }
                                    i13 = i31;
                                    boolean z12 = i30 == i12 + (-1) && i13 == 2;
                                    Integer num = this.vertex2index.get(genericContainer);
                                    if (num == null) {
                                        int[] iArr5 = smallBufferOne;
                                        int i35 = sbPosOne;
                                        int i36 = i35 + 1;
                                        sbPosOne = i36;
                                        iArr5[i35] = (int) (fArr2[i28] * 65536.0f);
                                        int i37 = i35 + 2;
                                        sbPosOne = i37;
                                        i14 = i30;
                                        iArr5[i36] = (int) (fArr3[i28] * 65536.0f);
                                        int i38 = i35 + 3;
                                        sbPosOne = i38;
                                        iArr5[i37] = (int) (fArr8[i28] * 65536.0f);
                                        int i39 = BUFFER_SIZE;
                                        if (i38 == i39 || z12) {
                                            this.vertices.put(iArr5, 0, i38);
                                            sbPosOne = 0;
                                        }
                                        int[] iArr6 = smallBufferTwo;
                                        int i40 = sbPosTwo;
                                        int i41 = i40 + 1;
                                        sbPosTwo = i41;
                                        iArr6[i40] = (int) (fArr9[i28] * 65536.0f);
                                        int i42 = i40 + 2;
                                        sbPosTwo = i42;
                                        fArr4 = fArr8;
                                        iArr6[i41] = (int) (fArr10[i28] * 65536.0f);
                                        int i43 = i40 + 3;
                                        sbPosTwo = i43;
                                        iArr6[i42] = (int) (fArr11[i28] * 65536.0f);
                                        if (i43 == i39 || z12) {
                                            c10 = 0;
                                            this.normals.put(iArr6, 0, i43);
                                            sbPosTwo = 0;
                                        } else {
                                            c10 = 0;
                                        }
                                        IntList intList7 = intList5;
                                        if (intList5 != null) {
                                            intList7.add(i28);
                                        }
                                        IntBuffer intBuffer3 = this.colors;
                                        if (intBuffer3 != null) {
                                            int[] iArr7 = smallBuffer;
                                            iArr7[c10] = 65536;
                                            iArr7[1] = 65536;
                                            iArr7[2] = 65536;
                                            iArr7[3] = (int) (vectors.alpha[i27] * 65536.0f);
                                            intBuffer3.put(iArr7);
                                        }
                                        if (!z11 || (intBuffer = this.tangents) == null) {
                                            fArr5 = fArr11;
                                            intList = intList7;
                                        } else {
                                            float[] fArr20 = fArr[i28];
                                            int[] iArr8 = smallBufferThree;
                                            int i44 = sbPosThree;
                                            int i45 = i44 + 1;
                                            sbPosThree = i45;
                                            fArr5 = fArr11;
                                            iArr8[i44] = (int) (fArr20[0] * 65536.0f);
                                            int i46 = i44 + 2;
                                            sbPosThree = i46;
                                            intList = intList7;
                                            iArr8[i45] = (int) (fArr20[1] * 65536.0f);
                                            int i47 = i44 + 3;
                                            sbPosThree = i47;
                                            iArr8[i46] = (int) (fArr20[2] * 65536.0f);
                                            int i48 = i44 + 4;
                                            sbPosThree = i48;
                                            iArr8[i47] = (int) (fArr20[3] * 65536.0f);
                                            if (i48 == i39 || z12) {
                                                intBuffer.put(iArr8, 0, i48);
                                                sbPosThree = 0;
                                            }
                                        }
                                        if (z11 || !this.staticUV) {
                                            for (int i49 = 0; i49 < this.endStage; i49++) {
                                                if (i49 == 0) {
                                                    float[] fArr21 = vectors.nuOrg;
                                                    float[] fArr22 = vectors.nvOrg;
                                                    int[] iArr9 = smallBufferMT[0];
                                                    int[] iArr10 = sbPosMT;
                                                    int i50 = iArr10[0];
                                                    iArr10[0] = i50 + 1;
                                                    iArr9[i50] = (int) (fArr21[i27] * 65536.0f);
                                                    int i51 = iArr10[0];
                                                    iArr10[0] = i51 + 1;
                                                    iArr9[i51] = (int) (fArr22[i27] * 65536.0f);
                                                    int i52 = iArr10[0];
                                                    if (i52 == BUFFER_SIZE || z12) {
                                                        this.multiTextures[i49].put(iArr9, 0, i52);
                                                        iArr10[0] = 0;
                                                    }
                                                } else if (this.obj.maxStagesUsed > 1) {
                                                    int i53 = i49 - 1;
                                                    float[] fArr23 = vectors.uMul[i53];
                                                    float[] fArr24 = vectors.vMul[i53];
                                                    int[] iArr11 = smallBufferMT[i49];
                                                    int[] iArr12 = sbPosMT;
                                                    int i54 = iArr12[i49];
                                                    iArr12[i49] = i54 + 1;
                                                    iArr11[i54] = (int) (fArr23[i27] * 65536.0f);
                                                    int i55 = iArr12[i49];
                                                    iArr12[i49] = i55 + 1;
                                                    iArr11[i55] = (int) (fArr24[i27] * 65536.0f);
                                                    int i56 = iArr12[i49];
                                                    if (i56 == BUFFER_SIZE || z12) {
                                                        this.multiTextures[i49].put(iArr11, 0, i56);
                                                        iArr12[i49] = 0;
                                                    }
                                                }
                                            }
                                        }
                                        int position = ((this.vertices.position() + sbPosOne) - 3) / 3;
                                        this.vertex2index.put(genericContainer, IntegerC.valueOf(position));
                                        this.indices.put((short) position);
                                        genericContainer = null;
                                    } else {
                                        i14 = i30;
                                        fArr4 = fArr8;
                                        intList = intList5;
                                        fArr5 = fArr11;
                                        this.indices.put((short) num.intValue());
                                        if (z12) {
                                            int i57 = sbPosOne;
                                            if (i57 != 0) {
                                                i15 = 0;
                                                this.vertices.put(smallBufferOne, 0, i57);
                                                sbPosOne = 0;
                                            } else {
                                                i15 = 0;
                                            }
                                            int i58 = sbPosTwo;
                                            if (i58 != 0) {
                                                this.normals.put(smallBufferTwo, i15, i58);
                                                sbPosTwo = i15;
                                            }
                                            int i59 = sbPosThree;
                                            if (i59 != 0) {
                                                this.tangents.put(smallBufferThree, i15, i59);
                                                sbPosThree = i15;
                                            }
                                            for (int i60 = 0; i60 < 4; i60++) {
                                                int[] iArr13 = sbPosMT;
                                                int i61 = iArr13[i60];
                                                if (i61 != 0) {
                                                    this.multiTextures[i60].put(smallBufferMT[i60], 0, i61);
                                                    iArr13[i60] = 0;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    int[] iArr14 = smallBufferOne;
                                    int i62 = sbPosOne;
                                    int i63 = i62 + 1;
                                    sbPosOne = i63;
                                    mesh = mesh2;
                                    iArr14[i62] = (int) (fArr6[i28] * 65536.0f);
                                    int i64 = i62 + 2;
                                    sbPosOne = i64;
                                    fArr3 = fArr7;
                                    iArr14[i63] = (int) (fArr7[i28] * 65536.0f);
                                    fArr2 = fArr6;
                                    int i65 = i62 + 3;
                                    sbPosOne = i65;
                                    iArr14[i64] = (int) (fArr8[i28] * 65536.0f);
                                    boolean z13 = i25 == size2 + (-1) && i11 == 2;
                                    int i66 = BUFFER_SIZE;
                                    if (i65 == i66 || z13) {
                                        i16 = i11;
                                        i14 = i25;
                                        this.vertices.put(iArr14, 0, i65);
                                        sbPosOne = 0;
                                    } else {
                                        i14 = i25;
                                        i16 = i11;
                                    }
                                    int[] iArr15 = smallBufferTwo;
                                    int i67 = sbPosTwo;
                                    int i68 = i67 + 1;
                                    sbPosTwo = i68;
                                    iArr15[i67] = (int) (fArr9[i28] * 65536.0f);
                                    int i69 = i67 + 2;
                                    sbPosTwo = i69;
                                    i12 = size2;
                                    iArr15[i68] = (int) (fArr10[i28] * 65536.0f);
                                    int i70 = i67 + 3;
                                    sbPosTwo = i70;
                                    iArr15[i69] = (int) (fArr11[i28] * 65536.0f);
                                    if (i70 == i66 || z13) {
                                        c11 = 0;
                                        this.normals.put(iArr15, 0, i70);
                                        sbPosTwo = 0;
                                    } else {
                                        c11 = 0;
                                    }
                                    if (intList4 != null) {
                                        intList4.add(i28);
                                    }
                                    IntBuffer intBuffer4 = this.colors;
                                    if (intBuffer4 != null) {
                                        int[] iArr16 = smallBuffer;
                                        iArr16[c11] = 65536;
                                        iArr16[1] = 65536;
                                        iArr16[2] = 65536;
                                        iArr16[3] = (int) (vectors.alpha[i27] * 65536.0f);
                                        intBuffer4.put(iArr16);
                                    }
                                    if (!z11 || (intBuffer2 = this.tangents) == null) {
                                        intList2 = intList4;
                                    } else {
                                        float[] fArr25 = fArr[i28];
                                        int[] iArr17 = smallBufferThree;
                                        int i71 = sbPosThree;
                                        int i72 = i71 + 1;
                                        sbPosThree = i72;
                                        iArr17[i71] = (int) (fArr25[0] * 65536.0f);
                                        int i73 = i71 + 2;
                                        sbPosThree = i73;
                                        intList2 = intList4;
                                        iArr17[i72] = (int) (fArr25[1] * 65536.0f);
                                        int i74 = i71 + 3;
                                        sbPosThree = i74;
                                        iArr17[i73] = (int) (fArr25[2] * 65536.0f);
                                        int i75 = i71 + 4;
                                        sbPosThree = i75;
                                        iArr17[i74] = (int) (fArr25[3] * 65536.0f);
                                        if (i75 == i66 || z13) {
                                            intBuffer2.put(iArr17, 0, i75);
                                            sbPosThree = 0;
                                        }
                                    }
                                    if (z11 || !this.staticUV) {
                                        for (int i76 = 0; i76 < this.endStage; i76++) {
                                            if (i76 == 0) {
                                                float[] fArr26 = vectors.nuOrg;
                                                float[] fArr27 = vectors.nvOrg;
                                                int[] iArr18 = smallBufferMT[0];
                                                int[] iArr19 = sbPosMT;
                                                int i77 = iArr19[0];
                                                iArr19[0] = i77 + 1;
                                                iArr18[i77] = (int) (fArr26[i27] * 65536.0f);
                                                int i78 = iArr19[0];
                                                iArr19[0] = i78 + 1;
                                                iArr18[i78] = (int) (fArr27[i27] * 65536.0f);
                                                int i79 = iArr19[0];
                                                if (i79 == BUFFER_SIZE || z13) {
                                                    this.multiTextures[i76].put(iArr18, 0, i79);
                                                    iArr19[0] = 0;
                                                }
                                            } else if (this.obj.maxStagesUsed > 1) {
                                                int i80 = i76 - 1;
                                                float[] fArr28 = vectors.uMul[i80];
                                                float[] fArr29 = vectors.vMul[i80];
                                                int[] iArr20 = smallBufferMT[i76];
                                                int[] iArr21 = sbPosMT;
                                                int i81 = iArr21[i76];
                                                iArr21[i76] = i81 + 1;
                                                iArr20[i81] = (int) (fArr28[i27] * 65536.0f);
                                                int i82 = iArr21[i76];
                                                iArr21[i76] = i82 + 1;
                                                iArr20[i82] = (int) (fArr29[i27] * 65536.0f);
                                                int i83 = iArr21[i76];
                                                if (i83 == BUFFER_SIZE || z13) {
                                                    this.multiTextures[i76].put(iArr20, 0, i83);
                                                    iArr21[i76] = 0;
                                                }
                                            }
                                        }
                                    }
                                    genericContainer = genericContainer2;
                                    i13 = i16;
                                    intList = intList2;
                                    fArr5 = fArr11;
                                    fArr4 = fArr8;
                                }
                                i11 = i13 + 1;
                                genericContainer2 = genericContainer;
                                iArr3 = iArr4;
                                i26 = i29;
                                fArr8 = fArr4;
                                fArr6 = fArr2;
                                i25 = i14;
                                mesh2 = mesh;
                                fArr7 = fArr3;
                                fArr11 = fArr5;
                                size2 = i12;
                                intList4 = intList;
                            }
                            if (i25 != 0 || this.useStrip == 2) {
                                this.cnt += 3;
                            } else {
                                this.cnt++;
                            }
                            i25++;
                            fArr13 = fArr;
                            z10 = z11;
                            str2 = str4;
                        }
                    } else {
                        z11 = z10;
                        fArr = fArr13;
                    }
                    i10 = 0;
                    i11 = i10;
                    GenericContainer genericContainer22 = null;
                    while (i11 < 3) {
                    }
                    if (i25 != 0) {
                    }
                    this.cnt += 3;
                    i25++;
                    fArr13 = fArr;
                    z10 = z11;
                    str2 = str4;
                }
                ShortBuffer shortBuffer = this.indices;
                if (shortBuffer != null) {
                    int position2 = shortBuffer.position();
                    this.indexCount = position2;
                    if (position2 != this.indices.limit()) {
                        this.indices = (ShortBuffer) this.indices.flip();
                    }
                }
                if (intList4 != null) {
                    int size3 = intList4.size();
                    if (Logger.getLogLevel() >= 2) {
                        Logger.log("Remapping " + size3 + " vertex indices!");
                    }
                    this.coordMapper = new int[size3];
                    if (this.dynamic && ((animation = this.obj.anim) == null || animation.cacheIndices)) {
                        if (Logger.getLogLevel() >= 2) {
                            Logger.log("Creating vertex cache (" + (size3 * 24) + " bytes)!");
                        }
                        int i84 = size3 * 3;
                        this.vcoords = new int[i84];
                        this.ncoords = new int[i84];
                    }
                    this.needsCoordMapper = false;
                    int size4 = intList4.size();
                    int i85 = 0;
                    for (int i86 = 0; i86 < size4; i86++) {
                        this.coordMapper[i85] = intList4.get(i86);
                        if (this.coordMapper[i85] != i85) {
                            this.needsCoordMapper = true;
                        }
                        i85++;
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
                int length = iArr2.length;
                int[] iArr22 = this.vcoords;
                if (iArr22 != null) {
                    int[] iArr23 = this.ncoords;
                    if (this.needsCoordMapper) {
                        int i87 = 0;
                        int i88 = 0;
                        while (i87 < length) {
                            int i89 = iArr2[i87];
                            int[] iArr24 = iArr2;
                            iArr22[i88] = (int) (fArr6[i89] * 65536.0f);
                            int i90 = i88 + 1;
                            long j13 = j12;
                            iArr23[i88] = (int) (fArr9[i89] * 65536.0f);
                            iArr22[i90] = (int) (fArr7[i89] * 65536.0f);
                            int i91 = i88 + 2;
                            iArr23[i90] = (int) (fArr10[i89] * 65536.0f);
                            iArr22[i91] = (int) (fArr8[i89] * 65536.0f);
                            i88 += 3;
                            iArr23[i91] = (int) (fArr11[i89] * 65536.0f);
                            i87++;
                            iArr2 = iArr24;
                            j12 = j13;
                        }
                        this.cnt = length;
                        j11 = j12;
                    } else {
                        j11 = j12;
                        int i92 = 0;
                        int i93 = 0;
                        while (i92 < length) {
                            iArr22[i93] = (int) (fArr6[i92] * 65536.0f);
                            int i94 = i93 + 1;
                            iArr23[i93] = (int) (fArr9[i92] * 65536.0f);
                            iArr22[i94] = (int) (fArr7[i92] * 65536.0f);
                            int i95 = i93 + 2;
                            iArr23[i94] = (int) (fArr10[i92] * 65536.0f);
                            iArr22[i95] = (int) (fArr8[i92] * 65536.0f);
                            i93 += 3;
                            iArr23[i95] = (int) (fArr11[i92] * 65536.0f);
                            i92++;
                            str3 = str3;
                        }
                        this.cnt = length;
                    }
                    this.vertices.put(iArr22);
                    this.normals.put(iArr23);
                    str2 = str3;
                } else {
                    j11 = j12;
                    str2 = "/";
                    for (int i96 = 0; i96 < length; i96++) {
                        int i97 = this.coordMapper[i96];
                        this.vertices.put((int) (fArr6[i97] * 65536.0f));
                        this.vertices.put((int) (fArr7[i97] * 65536.0f));
                        this.vertices.put((int) (fArr8[i97] * 65536.0f));
                        this.normals.put((int) (fArr9[i97] * 65536.0f));
                        this.normals.put((int) (fArr10[i97] * 65536.0f));
                        this.normals.put((int) (fArr11[i97] * 65536.0f));
                    }
                    this.cnt = length;
                }
            }
            int position3 = this.vertices.position();
            int position4 = this.multiTextures[0].position();
            IntBuffer intBuffer5 = this.colors;
            if (intBuffer5 != null) {
                i17 = intBuffer5.position();
                this.colors.rewind();
            } else {
                i17 = 0;
            }
            IntBuffer intBuffer6 = this.tangents;
            if (intBuffer6 != null) {
                i18 = intBuffer6.position();
                this.tangents.rewind();
            } else {
                i18 = 0;
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
            if (z10) {
                if (!this.dynamic) {
                    this.tris = null;
                    this.vertex2index = null;
                    if (this.indexed) {
                        this.normals = (IntBuffer) flip(this.normals, position3);
                        this.vertices = (IntBuffer) flip(this.vertices, position3);
                        IntBuffer intBuffer7 = this.colors;
                        if (intBuffer7 != null) {
                            this.colors = (IntBuffer) flip(intBuffer7, i17);
                        }
                        IntBuffer intBuffer8 = this.tangents;
                        if (intBuffer8 != null) {
                            this.tangents = (IntBuffer) flip(intBuffer8, i18);
                        }
                        for (int i99 = 0; i99 < this.endStage; i99++) {
                            IntBuffer[] intBufferArr = this.multiTextures;
                            intBufferArr[i99] = (IntBuffer) flip(intBufferArr[i99], position4);
                        }
                    }
                }
                if (Logger.getLogLevel() >= 2) {
                    StringBuilder sb2 = new StringBuilder("Subobject of object ");
                    sb2.append(this.obj.getID());
                    str3 = str2;
                    sb2.append(str3);
                    sb2.append(this.obj.getName());
                    sb2.append(" compiled to ");
                    sb2.append(this.obj.indexed ? "indexed" : "flat");
                    sb2.append(" fixed point data using ");
                    sb2.append(this.cnt);
                    sb2.append(str3);
                    sb2.append(this.vertices.limit() / 3);
                    sb2.append(" vertices ");
                    sb2.append(this.useStrip == 1 ? "in a strip " : "");
                    sb2.append("in ");
                    sb2.append(System.currentTimeMillis() - j11);
                    sb2.append("ms!");
                    Logger.log(sb2.toString());
                }
            }
            str = str2;
            if (Logger.isDebugEnabled()) {
                Logger.log("Processing and uploading vertices of subobject of object " + this.obj.getID() + str + this.obj.getName() + " took " + (System.currentTimeMillis() - j10) + DateFormat.MINUTE_SECOND, 3);
            }
            this.filled = true;
        }
        j10 = currentTimeMillis;
        str = str3;
        if (Logger.isDebugEnabled()) {
        }
        this.filled = true;
    }

    public void add(int i10) {
        this.tris.add(i10);
    }

    public void bufferError() {
        Config.useVBO = false;
        Logger.log("Unable to initialize VBO!", 1);
    }

    public void checkStrips() {
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        int i14 = 3;
        int i15 = 5;
        int i16 = 1;
        if (this.useStrip != 0) {
            Logger.log("Triangle strip checker has been called multiple times!", 1);
            return;
        }
        int size = this.tris.size();
        Object3D object3D = this.obj;
        Vectors vectors = object3D.objVectors;
        Mesh mesh = object3D.objMesh;
        int[][] iArr = mesh.points;
        float[] fArr = mesh.xOrg;
        float[] fArr2 = mesh.yOrg;
        float[] fArr3 = mesh.zOrg;
        float[] fArr4 = vectors.nuOrg;
        float[] fArr5 = vectors.nvOrg;
        Logger.log("Checking for triangle strip...", 3);
        float[][] fArr6 = new float[3];
        float[][] fArr7 = new float[3];
        if (size <= 0) {
            this.useStrip = 2;
            return;
        }
        int i17 = this.tris.get(0);
        while (i13 < i14) {
            int i18 = mesh.coords[iArr[i17][i13]];
            float f10 = fArr[i18];
            float f11 = fArr2[i18];
            float f12 = fArr3[i18];
            float f13 = fArr4[i18];
            float f14 = fArr5[i18];
            int i19 = size;
            float[] fArr8 = new float[5];
            fArr8[0] = f10;
            fArr8[1] = f11;
            fArr8[2] = f12;
            fArr8[3] = f13;
            fArr8[4] = f14;
            fArr6[i13] = fArr8;
            fArr7[i13] = new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
            i13++;
            i16 = 1;
            i14 = 3;
            size = i19;
            i15 = 5;
            i17 = i17;
        }
        float[][] fArr9 = fArr7;
        int i20 = i16;
        float[][] fArr10 = fArr6;
        boolean z10 = false;
        while (i20 < size) {
            int i21 = this.tris.get(i20);
            int i22 = 0;
            while (i22 < i14) {
                int i23 = mesh.coords[iArr[i21][i22]];
                float[] fArr11 = fArr9[i22];
                fArr11[0] = fArr[i23];
                i16 = 1;
                fArr11[1] = fArr2[i23];
                fArr11[2] = fArr3[i23];
                fArr11[3] = fArr4[i23];
                fArr11[4] = fArr5[i23];
                i22++;
                i14 = 3;
            }
            if (z10) {
                if (compare(fArr10[0], fArr9[0])) {
                    i10 = 2;
                    i11 = 1;
                    if (compare(fArr10[2], fArr9[1])) {
                        z10 = false;
                    }
                } else {
                    i10 = 2;
                }
                this.useStrip = i10;
                if (Logger.isDebugEnabled()) {
                    Logger.log("Not a triangle strip at position " + i20 + "!", 3);
                    return;
                }
                return;
            }
            if (compare(fArr10[i16], fArr9[i16])) {
                i12 = 2;
                if (compare(fArr10[2], fArr9[0])) {
                    i11 = 1;
                    z10 = true;
                }
            } else {
                i12 = 2;
            }
            this.useStrip = i12;
            if (Logger.isDebugEnabled()) {
                Logger.log("Not a triangle strip at position " + i20 + "!", i14);
                return;
            }
            return;
            i20 += i11;
            i16 = i11;
            i14 = 3;
            i15 = 5;
            float[][] fArr12 = fArr10;
            fArr10 = fArr9;
            fArr9 = fArr12;
        }
        this.useStrip = i16;
        this.primitiveType = i15;
        if (Logger.getLogLevel() >= 2) {
            Logger.log("Triangle strip found!", 2);
        }
    }

    public void compileToVBO(GL11 gl11, GLRenderer gLRenderer) {
        Virtualizer virtualizer;
        Virtualizer virtualizer2;
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
                if (!z10 && this.hasBeenVirtualized && (virtualizer2 = this.obj.virtualizer) != null) {
                    this.vertices = (IntBuffer) virtualizer2.restore(this, IntBuffer.class, "vertices");
                    this.normals = (IntBuffer) this.obj.virtualizer.restore(this, IntBuffer.class, "normals");
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
                int i14 = 2;
                if (this.normalsId == 0 || !this.buffersCreated) {
                    if (Logger.getLogLevel() >= 2) {
                        Logger.log("Creating buffers...");
                    }
                    int[] iArr = new int[1];
                    gl11.glGenBuffers(1, iArr, 0);
                    this.normalsId = iArr[0];
                    gl11.glGenBuffers(1, iArr, 0);
                    int i15 = iArr[0];
                    this.verticesId = i15;
                    int i16 = this.normalsId;
                    if (i16 == 0 || i15 == 0) {
                        bufferError();
                    } else {
                        gLRenderer.registerVBO(i16);
                        gLRenderer.registerVBO(this.verticesId);
                    }
                    if (this.colors != null) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int i17 = iArr[0];
                        this.colorsId = i17;
                        if (i17 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i17);
                        }
                    }
                    if (this.tangents != null) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int i18 = iArr[0];
                        this.tangentsId = i18;
                        if (i18 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i18);
                        }
                    }
                    this.multiTexturesIds = new int[this.endStage];
                    int i19 = 0;
                    while (i19 < this.endStage) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int[] iArr2 = this.multiTexturesIds;
                        int i20 = iArr[0];
                        iArr2[i19] = i20;
                        if (i20 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i20);
                        }
                        i19++;
                        i14 = 2;
                    }
                    if (this.indexed) {
                        gl11.glGenBuffers(1, iArr, 0);
                        int i21 = iArr[0];
                        this.indicesId = i21;
                        if (i21 == 0) {
                            bufferError();
                        } else {
                            gLRenderer.registerVBO(i21);
                        }
                    }
                }
                this.buffersCreated = true;
                gl11.glBindBuffer(34962, this.normalsId);
                gl11.glBufferData(34962, this.normals.capacity() * 4, this.normals, i13);
                gl11.glBindBuffer(34962, this.verticesId);
                gl11.glBufferData(34962, this.vertices.capacity() * 4, this.vertices, i13);
                if (this.colors != null) {
                    gl11.glBindBuffer(34962, this.colorsId);
                    gl11.glBufferData(34962, this.colors.capacity() * 4, this.colors, i13);
                }
                if (this.tangents != null) {
                    gl11.glBindBuffer(34962, this.tangentsId);
                    gl11.glBufferData(34962, this.tangents.capacity() * 4, this.tangents, i13);
                }
                for (int i22 = 0; i22 < this.endStage; i22++) {
                    gl11.glBindBuffer(34962, this.multiTexturesIds[i22]);
                    gl11.glBufferData(34962, this.multiTextures[i22].capacity() * 4, this.multiTextures[i22], i13);
                }
                gl11.glBindBuffer(34962, 0);
                if (this.indexed) {
                    gl11.glBindBuffer(34963, this.indicesId);
                    this.indices.rewind();
                    gl11.glBufferData(34963, this.indices.remaining() * i14, this.indices, i13);
                    gl11.glBindBuffer(34963, 0);
                }
                if (this.firstCompile) {
                    if (Logger.getLogLevel() >= i14) {
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
                    this.obj.virtualizer.store(this, this.vertices, "vertices");
                    this.obj.virtualizer.store(this, this.normals, "normals");
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
                this.vertices = ByteBuffer.allocateDirect(1).order(ByteOrder.nativeOrder()).asIntBuffer();
            }
        }
    }

    public void copy(CompiledInstance compiledInstance) {
        this.colors = compiledInstance.colors;
        this.tris = compiledInstance.tris;
        this.normals = compiledInstance.normals;
        this.tangents = compiledInstance.tangents;
        this.indices = compiledInstance.indices;
        this.vertices = compiledInstance.vertices;
        this.multiTextures = compiledInstance.multiTextures;
        this.vertex2index = compiledInstance.vertex2index;
        this.polyIndex = compiledInstance.polyIndex;
        this.endStage = compiledInstance.endStage;
        this.dynamic = compiledInstance.dynamic;
        this.cnt = compiledInstance.cnt;
        this.indexed = compiledInstance.indexed;
        this.staticUV = compiledInstance.staticUV;
        this.treeID = compiledInstance.treeID;
        this.key = compiledInstance.key;
        this.indexCount = compiledInstance.indexCount;
        this.primitiveType = compiledInstance.primitiveType;
        this.needsCoordMapper = compiledInstance.needsCoordMapper;
        this.coordMapper = compiledInstance.coordMapper;
        this.vcoords = compiledInstance.vcoords;
        this.ncoords = compiledInstance.ncoords;
        this.buffersCreated = compiledInstance.buffersCreated;
        this.verticesId = compiledInstance.verticesId;
        this.normalsId = compiledInstance.normalsId;
        this.indicesId = compiledInstance.indicesId;
        this.tangentsId = compiledInstance.tangentsId;
        this.colorsId = compiledInstance.colorsId;
        this.vboPossible = compiledInstance.vboPossible;
        int[] iArr = compiledInstance.multiTexturesIds;
        if (iArr != null) {
            this.multiTexturesIds = new int[iArr.length];
            int i10 = 0;
            for (int i11 : compiledInstance.multiTexturesIds) {
                this.multiTexturesIds[i10] = i11;
                i10++;
            }
        }
        if (!this.buffersCreated || Logger.getLogLevel() < 2) {
            return;
        }
        Logger.log("Object '" + this.obj.getName() + "' shares VBOs (" + this.verticesId + "/" + this.normalsId + ") with object '" + this.obj.shareWith.getName() + "'");
    }

    public void dispose(GLRenderer gLRenderer) {
        if (this.buffersCreated && this.vboPossible && this.obj.shareWith == null && this.lastRenderer != null) {
            gLRenderer.deleteBuffer(this.normalsId);
            gLRenderer.deleteBuffer(this.verticesId);
            gLRenderer.deleteBuffer(this.colorsId);
            gLRenderer.deleteBuffer(this.indicesId);
            gLRenderer.deleteBuffer(this.tangentsId);
            for (int i10 = 0; i10 < this.endStage; i10++) {
                gLRenderer.deleteBuffer(this.multiTexturesIds[i10]);
            }
            Logger.log("VBO disposed for object '" + this.obj.getName() + "'");
        }
        IRenderHook iRenderHook = this.obj.renderHook;
        if (iRenderHook != null) {
            iRenderHook.onDispose();
        }
    }

    public void error(Exception exc) {
        Logger.log("Error while compiling instance!", 0);
        exc.printStackTrace();
    }

    public synchronized void fill() {
        synchronized (sbPosMT) {
            try {
                _fill();
            } catch (ArrayIndexOutOfBoundsException e10) {
                Logger.log("State: " + sbPosMT[0] + "/" + sbPosMT[1] + "/" + sbPosMT[2] + "/" + sbPosMT[3] + "/" + sbPosOne + "/" + sbPosTwo + "/" + sbPosThree, 1);
                throw e10;
            }
        }
    }

    public void finalize() {
        GLRenderer gLRenderer = this.lastRenderer;
        if (gLRenderer != null) {
            dispose(gLRenderer);
        }
    }

    public Buffer flip(Buffer buffer, int i10) {
        if (buffer instanceof IntBuffer) {
            IntBuffer intBuffer = (IntBuffer) buffer;
            IntBuffer asIntBuffer = ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder()).asIntBuffer();
            intBuffer.rewind();
            int[] iArr = new int[i10];
            intBuffer.get(iArr);
            asIntBuffer.put(iArr);
            asIntBuffer.rewind();
            return asIntBuffer;
        }
        FloatBuffer floatBuffer = (FloatBuffer) buffer;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBuffer.rewind();
        float[] fArr = new float[i10];
        floatBuffer.get(fArr);
        asFloatBuffer.put(fArr);
        asFloatBuffer.rewind();
        return asFloatBuffer;
    }

    public String getKey() {
        return this.key;
    }

    public int getPolyIndex() {
        return this.polyIndex;
    }

    public int getStageCount() {
        return this.endStage;
    }

    public int getTreeID() {
        return this.treeID;
    }

    public synchronized boolean isFilled() {
        return this.filled;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0452 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0485 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x048a A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x049b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0723 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x072a A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x073a A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0741 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x074a A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0751 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x075a A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x05f6 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0664 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x06cd A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x06d8 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x06f9 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x070f A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0717 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x071c A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0715 A[EDGE_INSN: B:264:0x0715->B:259:0x0715 BREAK  A[LOOP:5: B:252:0x06f5->B:263:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0705 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0459 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x025f A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0200 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x020c A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0254 A[Catch: all -> 0x003f, TryCatch #3 {, blocks: (B:4:0x000b, B:6:0x002a, B:8:0x002e, B:10:0x0038, B:35:0x0045, B:37:0x0050, B:16:0x0079, B:19:0x0091, B:21:0x0095, B:24:0x009b, B:26:0x00a1, B:27:0x00c1, B:28:0x00c4, B:30:0x00c9, B:38:0x00d6, B:40:0x00da, B:43:0x00f7, B:47:0x00fd, B:49:0x0105, B:52:0x010c, B:54:0x0110, B:57:0x0117, B:59:0x011b, B:61:0x01e5, B:64:0x01ed, B:67:0x01f5, B:68:0x01fa, B:70:0x0200, B:72:0x020c, B:74:0x0240, B:75:0x0245, B:77:0x0254, B:79:0x0258, B:83:0x026d, B:84:0x026f, B:90:0x0292, B:92:0x02a0, B:94:0x02ee, B:99:0x02f4, B:100:0x02f9, B:102:0x02ff, B:106:0x044e, B:108:0x0452, B:110:0x0465, B:113:0x046e, B:114:0x0474, B:116:0x047f, B:118:0x0485, B:120:0x048a, B:121:0x048d, B:124:0x049d, B:126:0x04a5, B:128:0x04b1, B:130:0x04d3, B:132:0x04e8, B:133:0x04f1, B:134:0x04f5, B:138:0x04f9, B:140:0x0541, B:142:0x0545, B:144:0x0549, B:146:0x054e, B:148:0x0556, B:149:0x056b, B:151:0x056f, B:153:0x0573, B:155:0x0578, B:156:0x058b, B:158:0x0591, B:159:0x0596, B:163:0x05b3, B:165:0x05b7, B:167:0x05da, B:171:0x05e2, B:173:0x05e9, B:175:0x0723, B:176:0x0726, B:178:0x072a, B:179:0x0730, B:181:0x073a, B:183:0x0741, B:184:0x0746, B:186:0x074a, B:188:0x0751, B:189:0x0756, B:191:0x075a, B:192:0x075f, B:197:0x05d0, B:136:0x04fe, B:198:0x04ec, B:199:0x04d7, B:201:0x051e, B:203:0x0536, B:204:0x053a, B:205:0x0522, B:207:0x05f0, B:209:0x05f6, B:211:0x0611, B:213:0x0622, B:214:0x062b, B:215:0x062f, B:221:0x0664, B:223:0x0668, B:225:0x066c, B:227:0x0671, B:229:0x0679, B:231:0x0695, B:233:0x0699, B:235:0x069d, B:238:0x06ad, B:240:0x06b2, B:241:0x06c7, B:243:0x06cd, B:244:0x06d2, B:246:0x06d8, B:247:0x06db, B:250:0x0683, B:252:0x06f5, B:254:0x06f9, B:256:0x070f, B:260:0x0717, B:262:0x071c, B:265:0x0705, B:217:0x0634, B:266:0x0626, B:267:0x0615, B:269:0x0650, B:271:0x0659, B:272:0x065d, B:273:0x0654, B:274:0x030c, B:276:0x0310, B:277:0x0326, B:280:0x032b, B:282:0x0331, B:285:0x033b, B:289:0x034c, B:291:0x035c, B:293:0x043c, B:294:0x0371, B:296:0x037f, B:300:0x0388, B:305:0x03e1, B:306:0x03fb, B:308:0x03ff, B:310:0x040e, B:312:0x041c, B:314:0x0439, B:317:0x03ea, B:322:0x044a, B:326:0x0459, B:328:0x025f, B:332:0x0125, B:337:0x0129, B:339:0x0130, B:341:0x0159, B:343:0x015f, B:345:0x016a, B:350:0x0184, B:352:0x0188, B:354:0x018c, B:357:0x0190, B:359:0x01c0, B:362:0x01d5, B:335:0x01e3, B:373:0x01ca, B:375:0x01d1), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x026b  */
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
        IntBuffer intBuffer;
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
        float[] fArr7 = lights4;
        Object3D object3D = this.obj;
        gLRenderer.setShader(object3D.getShaderInternal());
        int size = object3D.compiled.size();
        Object3D object3D2 = object3D.shareWith;
        int i17 = 2;
        if (object3D2 != null && !object3D.sharing) {
            object3D.sharing = true;
            if (size != object3D2.compiled.size()) {
                Logger.log("Number of compiled instances don't match...can't share data!", 0);
                return;
            }
            int i18 = 0;
            while (i18 < size) {
                CompiledInstance compiledInstance = object3D.compiled.get(i18);
                CompiledInstance compiledInstance2 = object3D.shareWith.compiled.get(i18);
                if (Config.useVBO && gl11 != null && compiledInstance2.vboPossible) {
                    int i19 = compiledInstance2.rendererID;
                    if (i19 != i10 && i19 != -999999999) {
                        if (Logger.getLogLevel() >= i17) {
                            Logger.log("OpenGL context has changed(1)...recovering for renderer " + i10 + "/" + this.rendererID + "!");
                        }
                        compiledInstance2.buffersCreated = false;
                    }
                    compiledInstance2.compileToVBO(gl11, gLRenderer);
                    compiledInstance2.rendererID = i10;
                }
                compiledInstance.copy(compiledInstance2);
                compiledInstance.filled = true;
                i18++;
                i17 = 2;
            }
            compileToVBO(gl11, gLRenderer);
            this.rendererID = i10;
            if (Logger.getLogLevel() >= i17) {
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
        int i20 = world.lights.lightCnt;
        boolean z18 = (this.colors == null && this.colorsId == 0) ? false : true;
        boolean z19 = (this.tangents == null && this.tangentsId == 0) ? false : true;
        int i21 = this.rendererID;
        if (i21 == -999999999) {
            this.rendererID = i10;
        } else if (i21 != i10) {
            if (this.buffersCreated) {
                try {
                    if (Logger.getLogLevel() >= 2) {
                        Logger.log("OpenGL context has changed(2)...recovering for renderer " + i10 + "/" + this.rendererID + "!");
                    }
                    this.buffersCreated = false;
                    if (object3D.shareWith != null) {
                        object3D.sharing = true;
                        int i22 = 0;
                        while (i22 < size) {
                            CompiledInstance compiledInstance3 = object3D.compiled.get(i22);
                            CompiledInstance compiledInstance4 = object3D.shareWith.compiled.get(i22);
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
                                        try {
                                            Logger.log("Uploading data for parent object " + object3D.shareWith.getName() + "!");
                                            compiledInstance4.buffersCreated = false;
                                            compiledInstance4.compileToVBO(gl11, gLRenderer);
                                            compiledInstance4.rendererID = i10;
                                        } catch (Exception e10) {
                                            e = e10;
                                            Logger.log("Unable to recover to use VBO...using normal vertex arrays instead!", 1);
                                            e.printStackTrace();
                                            this.rendererID = i10;
                                            this.lastRenderer = gLRenderer;
                                            if (size <= 1) {
                                            }
                                            if (this.dumpy == null) {
                                            }
                                            if (!r0) {
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
                                            buffer = lastVertexBuffer;
                                            intBuffer = this.vertices;
                                            if (buffer != intBuffer) {
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
                                } catch (Exception e11) {
                                    e = e11;
                                    fArr4 = fArr7;
                                    Logger.log("Unable to recover to use VBO...using normal vertex arrays instead!", 1);
                                    e.printStackTrace();
                                    this.rendererID = i10;
                                    this.lastRenderer = gLRenderer;
                                    if (size <= 1) {
                                    }
                                    if (this.dumpy == null) {
                                    }
                                    if (!r0) {
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
                                    buffer = lastVertexBuffer;
                                    intBuffer = this.vertices;
                                    if (buffer != intBuffer) {
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
                            i22++;
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
                } catch (Exception e12) {
                    e = e12;
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
                    this.dumpy = STATIC_DUMPY;
                }
            }
            fArr5 = !z20 ? gLRenderer.matrixCache.get(object3D) : null;
            if (fArr5 == null) {
                mo.setTo(object3D.transBuffer);
                mat.setTo(camera.getBack());
                mat.transformToGL();
                mo.translate(-camera.backBx, -camera.backBy, -camera.backBz);
                mo.matMul(mat);
                fArr5 = mo.fillDump(this.dumpy);
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
                    allOnes3[3] = fArr2[3];
                    if (size > 1) {
                        f11 = 0.0f;
                        for (int i23 = 0; i23 < i20 && i23 < 8; i23++) {
                            float f12 = i23;
                            float[] fArr8 = fArr3[i23];
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
                    if (chkSum == f11 && lastObj == object3D) {
                        z14 = z13;
                        z15 = z18;
                        f10 = 1.0f;
                        if (object3D.isFlatShaded) {
                            gl10.glShadeModel(7424);
                        }
                    }
                    if (!gLRenderer.gl20) {
                        gl10.glMaterialfv(1032, 4608, ALL_ONES_3, 0);
                        float[] fArr9 = allOnes3;
                        gl10.glMaterialfv(1032, 4609, fArr9, 0);
                        gl10.glMaterialfv(1032, 4610, fArr9, 0);
                    }
                    if (i20 < lastLightCnt) {
                        for (int i24 = 0; i24 < lastLightCnt; i24++) {
                            gl10.glDisable(LIGHTS[i24]);
                        }
                    }
                    lastLightCnt = 0;
                    int i25 = 0;
                    while (i25 < i20 && i25 < 8) {
                        float[] fArr10 = fArr3[i25];
                        int i26 = LIGHTS[i25];
                        if (fArr10[0] == -9999.0f) {
                            gl10.glDisable(i26);
                            z16 = z13;
                            i16 = i20;
                            fArr6 = fArr4;
                            z17 = z18;
                        } else {
                            lastLightCnt++;
                            boolean z21 = (chkSum == f11 && lastObj == object3D) ? false : true;
                            if (z21) {
                                gl10.glEnable(i26);
                                fArr4[0] = fArr10[1];
                                fArr4[1] = fArr10[2];
                                fArr4[2] = fArr10[3];
                                fArr4[3] = 1.0f;
                                i16 = i20;
                                z16 = z13;
                                fArr6 = fArr4;
                                gl10.glLightfv(i26, 4611, fArr6, 0);
                                fArr6[0] = fArr10[4];
                                fArr6[1] = fArr10[5];
                                fArr6[2] = fArr10[6];
                                fArr6[3] = 0.0f;
                                gl10.glLightfv(i26, 4609, fArr6, 0);
                                z17 = z18;
                                gl10.glLightfv(i26, 4608, ALL_ZEROS, 0);
                                float f14 = fArr10[0];
                                if (f14 >= 0.0f) {
                                    if (f14 == 0.0f) {
                                        f14 = 0.001f;
                                    }
                                    gl10.glLightf(i26, 4616, 4.0f / f14);
                                } else {
                                    gl10.glLightf(i26, 4616, 0.0f);
                                }
                            } else {
                                z16 = z13;
                                i16 = i20;
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
                                gl10.glLightfv(i26, 4610, fArr6, 0);
                            } else {
                                gl10.glLightfv(i26, 4610, ALL_ZEROS, 0);
                            }
                        }
                        i25++;
                        z18 = z17;
                        i20 = i16;
                        fArr4 = fArr6;
                        z13 = z16;
                    }
                    z14 = z13;
                    z15 = z18;
                    f10 = 1.0f;
                    lastObj = object3D;
                    chkSum = f11;
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
                    buffer = lastVertexBuffer;
                    intBuffer = this.vertices;
                    if (buffer != intBuffer) {
                        lastVertexBuffer = intBuffer;
                        gl10.glNormalPointer(5132, 12, this.normals);
                        gl10.glVertexPointer(3, 5132, 12, this.vertices);
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
                        for (int i27 = 0; i27 < this.endStage; i27++) {
                            gl10.glClientActiveTexture(stageMap[i27]);
                            gl10.glEnableClientState(32888);
                            gl10.glTexCoordPointer(2, 5132, 8, this.multiTextures[i27]);
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
                            int i28 = object3D.texture[this.polyIndex];
                            this.lastTex0 = i28;
                            this.tex0 = textureManager.getTextureByID(i28).getOpenGLID(i10);
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
                            int i29 = object3D.multiTex[0][this.polyIndex];
                            this.lastTex1 = i29;
                            this.tex1 = textureManager.getTextureByID(i29).getOpenGLID(i10);
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
                    Buffer buffer2 = lastVertexBuffer;
                    IntBuffer intBuffer2 = this.vertices;
                    if (buffer2 != intBuffer2) {
                        lastVertexBuffer = intBuffer2;
                        gl11.glEnableClientState(32885);
                        gl11.glBindBuffer(34962, this.normalsId);
                        gl11.glNormalPointer(5132, 12, 0);
                        gl11.glEnableClientState(32884);
                        gl11.glBindBuffer(34962, this.verticesId);
                        gl11.glVertexPointer(3, 5132, 12, 0);
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
                        for (int i30 = 0; i30 < this.endStage; i30++) {
                            gl10.glClientActiveTexture(stageMap[i30]);
                            gl10.glEnableClientState(32888);
                            gl11.glBindBuffer(34962, this.multiTexturesIds[i30]);
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
                        int i31 = this.tex0;
                        if (Config.glForceEnvMapToSecondStage) {
                            i31 = this.tex1;
                            i15 = 1;
                        } else {
                            i15 = 0;
                        }
                        gLRenderer.bindTexture(i15, i31);
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
            buffer = lastVertexBuffer;
            intBuffer = this.vertices;
            if (buffer != intBuffer) {
            }
            if (!z11) {
                textureManager = TextureManager.getInstance();
                if (this.tex0 != -1) {
                }
                int i282 = object3D.texture[this.polyIndex];
                this.lastTex0 = i282;
                this.tex0 = textureManager.getTextureByID(i282).getOpenGLID(i10);
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
        buffer = lastVertexBuffer;
        intBuffer = this.vertices;
        if (buffer != intBuffer) {
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

    public void setKey(String str) {
        this.key = str;
    }
}
