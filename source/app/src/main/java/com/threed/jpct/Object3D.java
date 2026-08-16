package com.threed.jpct;

import android.annotation.SuppressLint;
import android.util.FloatMath;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

@SuppressLint({"FloatMath"})
public class Object3D implements Serializable {
    public static final boolean BILLBOARDING_DISABLED = false;
    public static final boolean BILLBOARDING_ENABLED = true;
    public static final int COLLISION_CHECK_NONE = 0;
    public static final int COLLISION_CHECK_OTHERS = 1;
    public static final int COLLISION_CHECK_SELF = 2;
    public static final boolean COLLISION_DETECTION_NOT_OPTIMIZED = false;
    public static final boolean COLLISION_DETECTION_OPTIMIZED = true;
    public static final float COLLISION_NONE = 1.0E12f;
    public static final boolean CULLING_DISABLED = false;
    public static final boolean CULLING_ENABLED = true;
    public static final int ELLIPSOID_ALIGNED = 0;
    public static final int ELLIPSOID_TRANSFORMED = 1;
    public static final boolean ENVMAP_DISABLED = false;
    public static final boolean ENVMAP_ENABLED = true;
    private static final float EPSILON = 1.0E-9f;
    private static final float INSIDE_POLYGON_CONST = 6.2203536f;
    public static final int LIGHTING_ALL_ENABLED = 0;
    public static final int LIGHTING_NO_LIGHTS = 1;
    public static final int NO_OBJECT = -100;
    public static final boolean OBJ_INVISIBLE = false;
    public static final boolean OBJ_VISIBLE = true;
    public static final float RAY_MISSES_BOX = 1.0E12f;
    public static final int SHADING_FAKED_FLAT = 1;
    public static final int SHADING_GOURAUD = 0;
    public static final boolean SPECULAR_DISABLED = false;
    public static final boolean SPECULAR_ENABLED = true;
    public static final int TRANSPARENCY_MODE_ADD = 1;
    public static final int TRANSPARENCY_MODE_DEFAULT = 0;
    public static final int UNKNOWN_OBJECTSIZE = -1;
    private static final long serialVersionUID = 3;
    private int addColorB;
    private int addColorG;
    private RGBColor addColorInstance;
    private int addColorR;
    Animation anim;
    int batchSize;
    float centerX;
    float centerY;
    float centerZ;
    ArrayList<CollisionListener> collisionListener;
    transient ArrayList<CompiledInstance> compiled;
    boolean disableListeners;
    boolean doCulling;
    boolean doSpecularLighting;
    boolean dynamic;
    private int ellipsoidMode;
    boolean fixedPointMode;
    boolean forcedIndexed;
    private transient SimpleVector fromBaseToIntersection;
    boolean hasBeenBuild;
    boolean hasBeenStripped;
    boolean hasBoundingBox;
    private int highestPos;
    boolean indexed;
    private Matrix invCache;
    private Matrix invCacheDump;
    private boolean isBillBoard;
    boolean isEnvmapped;
    boolean isFlatShaded;
    boolean isLit;
    boolean isPotentialCollider;
    boolean isStatic;
    boolean isTrans;
    boolean isVisible;
    private float largestPolygonSize;
    private int lastAddedID;
    private boolean lazyTransforms;
    private int lowestPos;
    private Matrix mat2;
    private Matrix mat5;
    private Matrix mat6;
    private transient int maxLights;
    int maxStagesUsed;
    boolean mayCollide;
    boolean modified;
    int[][] multiMode;
    int[][] multiTex;
    World myWorld;
    String name;
    transient float[][] nearestLights;
    private boolean neverOptimize;
    private transient float[] newT;
    int number;
    Mesh objMesh;
    Vectors objVectors;
    boolean object3DRendered;
    private OcTree ocTree;
    boolean oneTextureSet;
    private boolean optimizeColDet;
    private Matrix originMatrix;
    private int pIDCount;
    Object3D[] parent;
    int parentCnt;
    private transient SimpleVector planeIntersectionPoint;
    private transient PolygonManager polyManager;
    private int[] polygonIDs;
    transient IRenderHook renderHook;
    boolean reverseCulling;
    private Matrix rotationMatrix;
    private float scaleFactor;
    private transient HashSet<Integer> sectors;
    transient GLSLShader shader;
    Object3D shareWith;
    boolean sharing;
    boolean skipPivot;
    float sortOffset;
    boolean staticUV;
    private transient SimpleVector t0Vel;
    int[] texture;
    Matrix textureMatrix;
    boolean toStrip;
    Matrix transBuffer;
    private Matrix transCache;
    private Matrix transCacheDump;
    int transMode;
    int transValue;
    private Matrix translationMatrix;
    private transient Plane trianglePlane;
    private Object userObj;
    boolean usesMultiTexturing;
    transient Virtualizer virtualizer;
    boolean wasCollider;
    float xRotationCenter;
    float yRotationCenter;
    float zRotationCenter;
    private static final Lights DUMMY_LIGHTS = new Lights(0);
    private static int nextID = 0;
    static int globalListenerCount = 0;
    private static ArrayList<float[]> lightsList = new ArrayList<>();
    private static float[][] litData = (float[][]) Array.newInstance(Float.TYPE, 8, 2);
    private static transient Matrix[] matrixArray = null;
    private static transient HashMap<Thread, Matrix[]> matrixThreadCache = null;
    private static SimpleVector tempCS = new SimpleVector();
    private static SimpleVector tempTC = new SimpleVector();
    private static Matrix mat7 = new Matrix();
    private static Matrix mat71 = new Matrix();
    private static Matrix matBill = null;
    private static transient float[] dirColParam = null;
    private static transient float[] origColParam = null;
    private static transient float[] dirCol = null;
    private static transient float[] origCol = null;
    private static transient float[] pvecCol = null;
    private static transient float[] tvecCol = null;
    private static transient float[] qvecCol = null;
    private static transient float[] edge1Col = null;
    private static transient float[] edge2Col = null;

    public Object3D(float[] fArr, float[] fArr2, int[] iArr, int i10) {
        this.transMode = 0;
        this.sortOffset = 0.0f;
        this.number = 0;
        this.name = "";
        this.maxStagesUsed = 0;
        this.usesMultiTexturing = false;
        this.parentCnt = 0;
        this.compiled = null;
        this.dynamic = false;
        this.modified = false;
        this.indexed = true;
        this.forcedIndexed = false;
        this.batchSize = -1;
        this.staticUV = true;
        this.nearestLights = null;
        this.toStrip = false;
        this.renderHook = null;
        this.sharing = false;
        this.shareWith = null;
        this.transBuffer = new Matrix();
        this.collisionListener = null;
        this.disableListeners = false;
        this.polygonIDs = null;
        this.pIDCount = 0;
        this.lastAddedID = -1;
        this.rotationMatrix = new Matrix();
        this.translationMatrix = new Matrix();
        this.originMatrix = new Matrix();
        this.mat2 = new Matrix();
        this.mat5 = new Matrix();
        this.mat6 = new Matrix();
        this.neverOptimize = false;
        this.transCache = null;
        this.invCache = null;
        this.transCacheDump = null;
        this.invCacheDump = null;
        this.optimizeColDet = false;
        this.largestPolygonSize = -1.0f;
        this.polyManager = null;
        this.ellipsoidMode = 0;
        this.userObj = null;
        this.reverseCulling = false;
        this.hasBeenBuild = false;
        this.hasBeenStripped = false;
        this.fixedPointMode = true;
        this.oneTextureSet = false;
        this.addColorInstance = new RGBColor();
        this.sectors = null;
        this.maxLights = 8;
        this.textureMatrix = null;
        this.skipPivot = false;
        this.virtualizer = null;
        this.t0Vel = null;
        this.fromBaseToIntersection = null;
        this.planeIntersectionPoint = null;
        this.trianglePlane = null;
        this.newT = null;
        if (iArr == null && fArr.length % 9 != 0) {
            Logger.log("Without indices, coordinates' length have to be a multiple of 9!", 0);
        }
        if (iArr == null) {
            int length = fArr.length / 3;
            int[] iArr2 = new int[length];
            for (int i11 = 0; i11 < length; i11++) {
                iArr2[i11] = i11;
            }
            iArr = iArr2;
        }
        int length2 = (iArr.length + 3) / 2;
        if (fArr.length / 3 > length2) {
            int length3 = fArr.length / 3;
            if (length2 + 100 < length3) {
                Logger.log("Coordinate array is sparsely populated! Consider to pre-process it to save memory!", 1);
            }
            length2 = length3;
        }
        init(length2);
        this.objMesh.anzCoords = 0;
        for (int i12 = 0; i12 < fArr.length; i12 += 3) {
            int i13 = i12 / 3;
            Mesh mesh = this.objMesh;
            mesh.xOrg[i13] = fArr[i12];
            mesh.yOrg[i13] = fArr[i12 + 1];
            mesh.zOrg[i13] = fArr[i12 + 2];
        }
        this.objMesh.anzCoords = fArr.length / 3;
        int i14 = i10 == -1 ? 0 : i10;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < iArr.length; i17 += 3) {
            for (int i18 = 0; i18 < 3; i18++) {
                if (fArr2 != null) {
                    int i19 = iArr[i17 + i18];
                    float f10 = fArr2[i19 * 2];
                    float f11 = fArr2[(i19 * 2) + 1];
                    Vectors vectors = this.objVectors;
                    vectors.nuOrg[i15] = f10;
                    vectors.nvOrg[i15] = f11;
                }
                Mesh mesh2 = this.objMesh;
                mesh2.coords[i15] = iArr[i17 + i18];
                mesh2.points[i16][i18] = i15;
                i15++;
                mesh2.anzVectors++;
            }
            this.texture[i16] = i14;
            i16++;
            this.objMesh.anzTri++;
        }
        this.objMesh.compress();
    }

    private void addPolygonID(int i10) {
        if (this.collisionListener == null || this.disableListeners) {
            return;
        }
        int i11 = 0;
        if (this.polygonIDs == null) {
            this.polygonIDs = new int[Config.polygonIDLimit];
            this.pIDCount = 0;
        }
        if (this.pIDCount >= this.polygonIDs.length || i10 == this.lastAddedID) {
            return;
        }
        while (true) {
            int i12 = this.pIDCount;
            if (i11 >= i12) {
                this.polygonIDs[i12] = i10;
                this.lastAddedID = i10;
                this.pIDCount = i12 + 1;
                return;
            } else if (this.polygonIDs[i11] == i10) {
                return;
            } else {
                i11++;
            }
        }
    }

    private final void appendToObject(Object3D object3D) {
        Mesh mesh = object3D.objMesh;
        int i10 = mesh.anzVectors;
        int i11 = mesh.anzCoords;
        int i12 = mesh.anzTri;
        Vectors vectors = this.objVectors;
        if (vectors != null && vectors.uMul != null) {
            object3D.usesMultiTexturing = true;
            object3D.maxStagesUsed = Math.max(object3D.maxStagesUsed, this.maxStagesUsed);
            object3D.objVectors.createMultiCoords();
            int i13 = Config.maxTextureLayers - 1;
            for (int i14 = 0; i14 < i13; i14++) {
                Vectors vectors2 = object3D.objVectors;
                float[] fArr = vectors2.uMul[i14];
                float[] fArr2 = vectors2.vMul[i14];
                Vectors vectors3 = this.objVectors;
                float[] fArr3 = vectors3.uMul[i14];
                float[] fArr4 = vectors3.vMul[i14];
                for (int i15 = 0; i15 < this.objMesh.anzVectors; i15++) {
                    int i16 = i15 + i10;
                    fArr[i16] = fArr3[i15];
                    fArr2[i16] = fArr4[i15];
                }
            }
        }
        if (this.multiTex != null) {
            int i17 = Config.maxTextureLayers - 1;
            for (int i18 = 0; i18 < i17; i18++) {
                if (object3D.multiTex == null) {
                    int[] iArr = {Config.maxTextureLayers - 1, object3D.texture.length};
                    Class<Integer> cls = Integer.TYPE;
                    object3D.multiTex = (int[][]) Array.newInstance(cls, iArr);
                    object3D.multiMode = (int[][]) Array.newInstance(cls, Config.maxTextureLayers - 1, object3D.texture.length);
                }
                System.arraycopy(this.multiTex[i18], 0, object3D.multiTex[i18], i12, this.objMesh.anzTri);
                System.arraycopy(this.multiMode[i18], 0, object3D.multiMode[i18], i12, this.objMesh.anzTri);
            }
        }
        Vectors vectors4 = this.objVectors;
        if (vectors4 != null) {
            Vectors vectors5 = object3D.objVectors;
            float[] fArr5 = vectors5.nuOrg;
            float[] fArr6 = vectors5.nvOrg;
            int[] iArr2 = object3D.objMesh.coords;
            float[] fArr7 = vectors4.nuOrg;
            float[] fArr8 = vectors4.nvOrg;
            Mesh mesh2 = this.objMesh;
            int[] iArr3 = mesh2.coords;
            int i19 = mesh2.anzVectors;
            for (int i20 = 0; i20 < i19; i20++) {
                int i21 = i20 + i10;
                fArr5[i21] = fArr7[i20];
                fArr6[i21] = fArr8[i20];
                iArr2[i21] = iArr3[i20] + i11;
            }
        }
        Mesh mesh3 = this.objMesh;
        if (mesh3 != null) {
            int i22 = mesh3.anzTri;
            int[][] iArr4 = object3D.objMesh.points;
            int[][] iArr5 = mesh3.points;
            int i23 = 0;
            while (i23 < i22) {
                int[][] iArr6 = iArr5;
                int[] iArr7 = iArr4[i23 + i12];
                int[] iArr8 = iArr6[i23];
                iArr7[0] = iArr8[0] + i10;
                iArr7[1] = iArr8[1] + i10;
                iArr7[2] = iArr8[2] + i10;
                i23++;
                iArr5 = iArr6;
            }
            Mesh mesh4 = this.objMesh;
            int i24 = mesh4.anzCoords;
            int i25 = mesh4.obbStart;
            int i26 = i25 != 0 ? i25 : i24;
            Mesh mesh5 = object3D.objMesh;
            float[] fArr9 = mesh5.xOrg;
            float[] fArr10 = mesh5.yOrg;
            float[] fArr11 = mesh5.zOrg;
            float[] fArr12 = mesh5.nxOrg;
            float[] fArr13 = mesh5.nyOrg;
            float[] fArr14 = mesh5.nzOrg;
            float[] fArr15 = mesh4.xOrg;
            float[] fArr16 = mesh4.yOrg;
            float[] fArr17 = mesh4.zOrg;
            float[] fArr18 = mesh4.nxOrg;
            float[] fArr19 = mesh4.nyOrg;
            float[] fArr20 = mesh4.nzOrg;
            for (int i27 = 0; i27 < i26; i27++) {
                int i28 = i27 + i11;
                fArr9[i28] = fArr15[i27];
                fArr10[i28] = fArr16[i27];
                fArr11[i28] = fArr17[i27];
                fArr12[i28] = fArr18[i27];
                fArr13[i28] = fArr19[i27];
                fArr14[i28] = fArr20[i27];
            }
            int i29 = this.objMesh.anzTri;
            int[] iArr9 = this.texture;
            if (iArr9 != null) {
                System.arraycopy(iArr9, 0, object3D.texture, i12, i29);
            }
            Mesh mesh6 = object3D.objMesh;
            int i30 = mesh6.anzTri;
            Mesh mesh7 = this.objMesh;
            mesh6.anzTri = i30 + mesh7.anzTri;
            mesh6.anzCoords += i26;
            mesh6.anzVectors += mesh7.anzVectors;
        }
    }

    private final boolean checkPointInTriangle(SimpleVector simpleVector, SimpleVector simpleVector2, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        float f19 = f13 - f10;
        float f20 = f14 - f11;
        float f21 = f15 - f12;
        float f22 = f16 - f10;
        float f23 = f17 - f11;
        float f24 = f18 - f12;
        float f25 = simpleVector.f83626y;
        float f26 = simpleVector.f83627z;
        float f27 = (f25 * f24) - (f26 * f23);
        float f28 = simpleVector.f83625x;
        float f29 = (f26 * f22) - (f24 * f28);
        float f30 = (f23 * f28) - (f22 * f25);
        float f31 = (f19 * f27) + (f20 * f29) + (f21 * f30);
        if (f31 < 1.0E-17f) {
            return false;
        }
        float f32 = 1.0f / f31;
        float f33 = simpleVector2.f83625x - f10;
        float f34 = simpleVector2.f83626y - f11;
        float f35 = simpleVector2.f83627z - f12;
        float f36 = ((f27 * f33) + (f29 * f34) + (f30 * f35)) * f32;
        if (f36 < 0.0d || f36 > 1.0f) {
            return false;
        }
        float f37 = ((f28 * ((f34 * f21) - (f35 * f20))) + (f25 * ((f35 * f19) - (f21 * f33))) + (f26 * ((f33 * f20) - (f34 * f19)))) * f32;
        return ((double) f37) >= 0.0d && ((double) (f36 + f37)) <= 1.0d;
    }

    private void checkWorld() {
        if (this.myWorld == null) {
            Logger.log("Object has to be assigned to a world for doing collision detection!", 0);
        }
    }

    private void compileInternal() {
        if (this.compiled == null) {
            this.compiled = new ArrayList<>(1);
        }
    }

    private void copy(Object3D object3D, boolean z10) {
        if (z10) {
            Mesh mesh = object3D.objMesh;
            if (mesh.nxOrg == null) {
                Logger.log("Can't use a mesh for a new object that has already been stripped!", 0);
                return;
            }
            this.objMesh = mesh;
        } else {
            this.objMesh = object3D.objMesh.cloneMesh(true);
        }
        if (object3D.hasVertexAlpha()) {
            this.objVectors.createAlpha();
            float[] fArr = object3D.objVectors.alpha;
            System.arraycopy(fArr, 0, this.objVectors.alpha, 0, fArr.length);
        }
        Vectors vectors = object3D.objVectors;
        int i10 = vectors.maxVectors;
        for (int i11 = 0; i11 < i10; i11++) {
            Vectors vectors2 = this.objVectors;
            vectors2.nuOrg[i11] = vectors.nuOrg[i11];
            vectors2.nvOrg[i11] = vectors.nvOrg[i11];
        }
        if (object3D.objVectors.uMul != null) {
            this.objVectors.createMultiCoords();
            int min = Math.min(vectors.uMul.length, this.objVectors.uMul.length);
            for (int i12 = 0; i12 < min; i12++) {
                for (int i13 = 0; i13 < object3D.objVectors.maxVectors; i13++) {
                    Vectors vectors3 = this.objVectors;
                    vectors3.uMul[i12][i13] = vectors.uMul[i12][i13];
                    vectors3.vMul[i12][i13] = vectors.vMul[i12][i13];
                }
            }
        }
        this.maxStagesUsed = object3D.maxStagesUsed;
        this.usesMultiTexturing = object3D.usesMultiTexturing;
        Mesh mesh2 = this.objMesh;
        mesh2.normalsCalculated = object3D.objMesh.normalsCalculated;
        this.objVectors.setMesh(mesh2);
        this.isTrans = object3D.isTrans;
        this.transMode = object3D.transMode;
        this.isEnvmapped = object3D.isEnvmapped;
        this.isVisible = object3D.isVisible;
        this.isStatic = object3D.isStatic;
        this.myWorld = object3D.myWorld;
        this.lowestPos = object3D.lowestPos;
        this.highestPos = object3D.highestPos;
        this.lazyTransforms = object3D.lazyTransforms;
        this.optimizeColDet = object3D.optimizeColDet;
        this.largestPolygonSize = object3D.largestPolygonSize;
        this.isBillBoard = object3D.isBillBoard;
        this.skipPivot = object3D.skipPivot;
        if (object3D.multiTex != null) {
            if (this.multiTex == null) {
                int[] iArr = {Config.maxTextureLayers - 1, this.texture.length};
                Class<Integer> cls = Integer.TYPE;
                this.multiTex = (int[][]) Array.newInstance(cls, iArr);
                this.multiMode = (int[][]) Array.newInstance(cls, Config.maxTextureLayers - 1, this.texture.length);
            }
            int min2 = Math.min(object3D.multiTex.length, this.multiTex.length);
            for (int i14 = 0; i14 < min2; i14++) {
                int[] iArr2 = object3D.multiTex[i14];
                System.arraycopy(iArr2, 0, this.multiTex[i14], 0, iArr2.length);
                int[] iArr3 = object3D.multiMode[i14];
                System.arraycopy(iArr3, 0, this.multiMode[i14], 0, iArr3.length);
            }
            int i15 = min2;
            while (true) {
                int[][] iArr4 = this.multiTex;
                if (i15 >= iArr4.length) {
                    break;
                }
                int length = iArr4[i15].length;
                for (int i16 = 0; i16 < length; i16++) {
                    this.multiTex[i15][i16] = -1;
                }
                i15++;
            }
        }
        int[] iArr5 = object3D.texture;
        System.arraycopy(iArr5, 0, this.texture, 0, iArr5.length);
        Object3D[] object3DArr = object3D.parent;
        System.arraycopy(object3DArr, 0, this.parent, 0, object3DArr.length);
        this.transValue = object3D.transValue;
        this.xRotationCenter = object3D.xRotationCenter;
        this.yRotationCenter = object3D.yRotationCenter;
        this.zRotationCenter = object3D.zRotationCenter;
        this.centerX = object3D.centerX;
        this.centerY = object3D.centerY;
        this.centerZ = object3D.centerZ;
        this.hasBoundingBox = object3D.hasBoundingBox;
        this.addColorR = object3D.addColorR;
        this.addColorG = object3D.addColorG;
        this.addColorB = object3D.addColorB;
        this.addColorInstance = object3D.addColorInstance;
        this.rotationMatrix = object3D.rotationMatrix.cloneMatrix();
        this.translationMatrix = object3D.translationMatrix.cloneMatrix();
        this.originMatrix = object3D.originMatrix.cloneMatrix();
        this.doCulling = object3D.doCulling;
        this.anim = object3D.anim;
        this.userObj = object3D.userObj;
        this.oneTextureSet = object3D.oneTextureSet;
    }

    private void createCollisionArrays() {
        if (dirCol == null) {
            dirCol = new float[3];
            origCol = new float[3];
            pvecCol = new float[3];
            tvecCol = new float[3];
            qvecCol = new float[3];
            edge1Col = new float[3];
            edge2Col = new float[3];
            dirColParam = new float[3];
            origColParam = new float[3];
        }
        if (this.t0Vel == null) {
            this.t0Vel = new SimpleVector();
            this.fromBaseToIntersection = new SimpleVector();
            this.planeIntersectionPoint = new SimpleVector();
            this.trianglePlane = new Plane();
            this.newT = new float[1];
        }
    }

    public static Object3D createDummyObj() {
        return new Object3D(0);
    }

    private void fillTransformedCenter(SimpleVector simpleVector) {
        getProjectedPoint(this.centerX, this.centerY, this.centerZ, simpleVector, null, mat71);
    }

    private final boolean getLowestRoot(float f10, float f11, float f12, float f13, float[] fArr) {
        float f14 = (f11 * f11) - ((4.0f * f10) * f12);
        if (f14 < 0.0f) {
            return false;
        }
        float sqrt = FloatMath.sqrt(f14);
        float f15 = -f11;
        float f16 = f10 * 2.0f;
        float f17 = (f15 - sqrt) / f16;
        float f18 = (f15 + sqrt) / f16;
        if (f17 > f18) {
            f17 = f18;
            f18 = f17;
        }
        if (f17 > 0.0f && f17 < f13) {
            fArr[0] = f17;
            return true;
        }
        if (f18 <= 0.0f || f18 >= f13) {
            return false;
        }
        fArr[0] = f18;
        return true;
    }

    public static int getNextID() {
        return nextID;
    }

    private float getSquaredDistance(SimpleVector simpleVector, float f10, float f11, float f12) {
        float f13 = (-simpleVector.f83625x) + f10;
        float f14 = (-simpleVector.f83626y) + f11;
        float f15 = (-simpleVector.f83627z) + f12;
        return (f13 * f13) + (f14 * f14) + (f15 * f15);
    }

    private Matrix getTmpMatrix(int i10) {
        if (matrixArray == null) {
            Matrix[] matrixArr = new Matrix[3];
            matrixArray = matrixArr;
            matrixArr[0] = new Matrix();
            matrixArray[1] = new Matrix();
            matrixArray[2] = new Matrix();
        }
        if (World.defaultThread == null || Thread.currentThread() == World.defaultThread || matrixThreadCache != null) {
            return matrixArray[i10];
        }
        Logger.log("Creating new matrix cache!");
        HashMap<Thread, Matrix[]> hashMap = new HashMap<>();
        matrixThreadCache = hashMap;
        Matrix[] matrixArr2 = hashMap.get(Thread.currentThread());
        if (matrixArr2 == null) {
            matrixArr2 = new Matrix[]{new Matrix(), new Matrix(), new Matrix()};
            matrixThreadCache.put(Thread.currentThread(), matrixArr2);
            if (matrixThreadCache.size() > 2) {
                Logger.log("Clearing matrix cache!");
                matrixThreadCache.clear();
            }
        }
        return matrixArr2[i10];
    }

    private void init(int i10) {
        if (i10 == -1 || i10 == 0) {
            this.objMesh = new Mesh(1);
        } else {
            int i11 = (i10 * 3) + 8;
            Mesh mesh = new Mesh(i11);
            this.objMesh = mesh;
            this.objVectors = new Vectors(i11, mesh);
            this.texture = new int[i10];
        }
        this.parent = new Object3D[Config.maxParentObjects];
        this.parentCnt = 0;
        this.object3DRendered = false;
        this.rotationMatrix.setIdentity();
        this.translationMatrix.setIdentity();
        this.originMatrix.setIdentity();
        this.xRotationCenter = 0.0f;
        this.yRotationCenter = 0.0f;
        this.zRotationCenter = 0.0f;
        this.centerX = 0.0f;
        this.centerY = 0.0f;
        this.centerZ = 0.0f;
        int i12 = nextID;
        this.number = i12;
        nextID = i12 + 1;
        this.name = "object" + this.number;
        this.objMesh.anzTri = 0;
        this.isPotentialCollider = false;
        this.mayCollide = false;
        this.isBillBoard = false;
        this.isFlatShaded = false;
        this.isLit = true;
        this.lazyTransforms = false;
        this.wasCollider = false;
        this.anim = null;
        this.ocTree = null;
        if (i10 != 0) {
            this.isEnvmapped = false;
            this.transValue = 0;
            this.isTrans = false;
            this.isStatic = false;
            this.isVisible = true;
            this.doCulling = true;
            this.doSpecularLighting = false;
            this.addColorR = 0;
            this.addColorG = 0;
            this.addColorB = 0;
            this.addColorInstance = new RGBColor();
            this.hasBoundingBox = false;
        }
        this.scaleFactor = 1.0f;
    }

    public static Object3D mergeAll(Object3D[] object3DArr) {
        int i10 = 0;
        int i11 = 0;
        for (Object3D object3D : object3DArr) {
            Mesh mesh = object3D.objMesh;
            i10 += mesh.anzTri;
            i11 += mesh.anzVectors;
        }
        Object3D object3D2 = new Object3D(Math.max(i10, i11 / 3));
        boolean z10 = true;
        for (int i12 = 0; i12 < object3DArr.length; i12++) {
            Object3D object3D3 = object3DArr[i12];
            z10 &= object3D3.objMesh.normalsCalculated;
            object3D3.appendToObject(object3D2);
            object3DArr[i12] = null;
        }
        object3D2.objMesh.normalsCalculated = z10;
        return object3D2;
    }

    public static Object3D mergeObjects(Object3D object3D, Object3D object3D2) {
        boolean z10 = false;
        if (object3D == null || object3D2 == null) {
            Logger.log("Can't merge null!", 0);
            return null;
        }
        Mesh mesh = object3D.objMesh;
        int i10 = mesh.anzTri;
        Mesh mesh2 = object3D2.objMesh;
        Object3D object3D3 = new Object3D(Math.max(i10 + mesh2.anzTri, (mesh.anzVectors + mesh2.anzVectors) / 3));
        object3D.appendToObject(object3D3);
        object3D2.appendToObject(object3D3);
        Mesh mesh3 = object3D3.objMesh;
        if (object3D.objMesh.normalsCalculated && object3D2.objMesh.normalsCalculated) {
            z10 = true;
        }
        mesh3.normalsCalculated = z10;
        return object3D3;
    }

    private final Matrix recurseObjects(Matrix matrix) {
        Matrix tmpMatrix = getTmpMatrix(2);
        for (int i10 = 0; i10 < this.parentCnt; i10++) {
            Object3D object3D = this.parent[i10];
            tmpMatrix.setIdentity();
            float[] fArr = object3D.originMatrix.mat[3];
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float[] fArr2 = tmpMatrix.mat[3];
            fArr2[0] = (-object3D.xRotationCenter) - f10;
            fArr2[1] = (-object3D.yRotationCenter) - f11;
            fArr2[2] = (-object3D.zRotationCenter) - f12;
            matrix.matMul(tmpMatrix);
            matrix.matMul(object3D.rotationMatrix);
            float[] fArr3 = tmpMatrix.mat[3];
            float f13 = object3D.xRotationCenter;
            float[] fArr4 = object3D.translationMatrix.mat[3];
            fArr3[0] = f13 + fArr4[0] + f10;
            fArr3[1] = object3D.yRotationCenter + fArr4[1] + f11;
            fArr3[2] = object3D.zRotationCenter + fArr4[2] + f12;
            matrix.matMul(tmpMatrix);
            if (object3D.parentCnt != 0) {
                matrix = object3D.recurseObjects(matrix);
            }
        }
        return matrix;
    }

    private final Matrix recurseObjectsBillboarded(Matrix matrix) {
        Matrix cloneMatrix = matrix.cloneMatrix();
        Matrix recurseObjects = recurseObjects(matrix);
        float recurseScaling = recurseScaling(getScale());
        Matrix invert3x3 = recurseObjects.cloneMatrix().invert3x3();
        float[] fArr = invert3x3.mat[3];
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 1.0f;
        Matrix matrix2 = new Matrix();
        float[] fArr2 = matrix2.mat[3];
        float[] fArr3 = recurseObjects.mat[3];
        fArr2[0] = -fArr3[0];
        fArr2[1] = -fArr3[1];
        fArr2[2] = -fArr3[2];
        recurseObjects.matMul(matrix2);
        recurseObjects.matMul(invert3x3);
        float[] fArr4 = cloneMatrix.mat[3];
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 0.0f;
        fArr4[3] = 1.0f;
        recurseObjects.matMul(cloneMatrix);
        float[] fArr5 = matrix2.mat[3];
        fArr5[0] = -fArr5[0];
        fArr5[1] = -fArr5[1];
        fArr5[2] = -fArr5[2];
        recurseObjects.matMul(matrix2);
        recurseObjects.scalarMul(1.0f / (recurseScaling * getScale()));
        return recurseObjects;
    }

    private final float recurseScaling(float f10) {
        for (int i10 = 0; i10 < this.parentCnt; i10++) {
            Object3D object3D = this.parent[i10];
            f10 *= object3D.getScale();
            if (object3D.parentCnt != 0) {
                f10 = object3D.recurseScaling(f10);
            }
        }
        return f10;
    }

    public static void resetNextID() {
        nextID = 0;
    }

    public static void setNextID(int i10) {
        if (i10 >= nextID) {
            nextID = i10;
        } else {
            Logger.log("The next ID can't be lower than the current one", 0);
        }
    }

    public void addChild(Object3D object3D) {
        if (object3D != null) {
            object3D.addParent(this);
        } else {
            Logger.log("Tried to assign a non-existent Object3D as child!", 0);
        }
    }

    public synchronized void addCollisionListener(CollisionListener collisionListener) {
        try {
            if (this.collisionListener == null) {
                this.collisionListener = new ArrayList<>(1);
            }
            this.collisionListener.add(collisionListener);
            globalListenerCount++;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void addCompiled(CompiledInstance compiledInstance) {
        this.compiled.add(compiledInstance);
    }

    public final int addMD2Triangle(int i10, float f10, float f11, int i11, float f12, float f13, int i12, float f14, float f15) {
        Mesh mesh = this.objMesh;
        int i13 = mesh.anzVectors;
        if (i13 + 3 < mesh.maxVectors) {
            int i14 = mesh.anzTri;
            int[] iArr = mesh.coords;
            iArr[i13] = i10;
            Vectors vectors = this.objVectors;
            float[] fArr = vectors.nuOrg;
            fArr[i13] = f10;
            float[] fArr2 = vectors.nvOrg;
            fArr2[i13] = f11;
            int i15 = i13 + 1;
            mesh.anzVectors = i15;
            int[] iArr2 = mesh.points[i14];
            iArr2[0] = i13;
            iArr[i15] = i11;
            fArr[i15] = f12;
            fArr2[i15] = f13;
            int i16 = i13 + 2;
            mesh.anzVectors = i16;
            iArr2[1] = i15;
            iArr[i16] = i12;
            fArr[i16] = f14;
            fArr2[i16] = f15;
            mesh.anzVectors = i13 + 3;
            if (i12 < this.lowestPos) {
                this.lowestPos = i12;
            }
            if (i15 < this.lowestPos) {
                this.lowestPos = i15;
            }
            if (i10 < this.lowestPos) {
                this.lowestPos = i10;
            }
            if (i12 > this.highestPos) {
                this.highestPos = i12;
            }
            if (i15 > this.highestPos) {
                this.highestPos = i15;
            }
            if (i10 > this.highestPos) {
                this.highestPos = i10;
            }
            iArr2[2] = i16;
            this.texture[i14] = 0;
            mesh.anzTri = i14 + 1;
        } else {
            Logger.log("Polygon index out of range - object is too large!", 0);
        }
        return this.objMesh.anzTri - 1;
    }

    public void addParent(Object3D object3D) {
        if (object3D == this) {
            Logger.log("An object can't be its own parent!", 1);
            return;
        }
        if (object3D == null) {
            Logger.log("Tried to assign a nonexistent object as parent!", 0);
            return;
        }
        int i10 = this.parentCnt;
        if (i10 < Config.maxParentObjects) {
            this.parent[i10] = object3D;
            this.parentCnt = i10 + 1;
        } else {
            Logger.log("Can't assign more than " + Config.maxParentObjects + " objects as parent objects in the current Configuration!", 0);
        }
    }

    public int addTriangle(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3) {
        return addTriangle(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, 0.0f, 0.0f, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, 0.0f, 0.0f, simpleVector3.f83625x, simpleVector3.f83626y, simpleVector3.f83627z, 0.0f, 0.0f, -1, 0, false);
    }

    public void align(Camera camera) {
        float scale = getScale();
        setScale(1.0f);
        this.rotationMatrix = camera.backMatrix.invert3x3();
        setScale(scale);
    }

    public void animate(float f10, int i10) {
        Animation animation;
        if (!this.dynamic || (animation = this.anim) == null) {
            return;
        }
        animation.doAnimation(this, i10, f10);
    }

    public void build() {
        build(true);
    }

    public void calcBoundingBox() {
        float[] calcBoundingBox = this.objMesh.calcBoundingBox();
        setBoundingBox(calcBoundingBox[0], calcBoundingBox[1], calcBoundingBox[2], calcBoundingBox[3], calcBoundingBox[4], calcBoundingBox[5]);
    }

    public void calcCenter() {
        SimpleVector calcCenter = this.objMesh.calcCenter();
        if (!this.skipPivot) {
            this.xRotationCenter = calcCenter.f83625x;
            this.yRotationCenter = calcCenter.f83626y;
            this.zRotationCenter = calcCenter.f83627z;
        }
        this.centerX = calcCenter.f83625x;
        this.centerY = calcCenter.f83626y;
        this.centerZ = calcCenter.f83627z;
    }

    public float calcMinDistance(SimpleVector simpleVector, SimpleVector simpleVector2) {
        this.wasCollider = false;
        resetPolygonIDCount();
        createCollisionArrays();
        float[] fArr = origColParam;
        fArr[0] = simpleVector.f83625x;
        fArr[1] = simpleVector.f83626y;
        fArr[2] = simpleVector.f83627z;
        float[] fArr2 = dirColParam;
        fArr2[0] = simpleVector2.f83625x;
        fArr2[1] = simpleVector2.f83626y;
        fArr2[2] = simpleVector2.f83627z;
        float collide = collide(fArr, fArr2, 0.0f, 1.0E12f, false);
        if (collide != 1.0E12f) {
            if (this.collisionListener != null) {
                SimpleVector create = SimpleVector.create(simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z);
                create.scalarMul(collide);
                create.add(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
                notifyCollisionListeners(0, 0, new Object3D[]{this}, create);
            }
            this.wasCollider = true;
        }
        return collide;
    }

    public void calcNormals() {
        this.objMesh.calcNormals();
    }

    public void calcTangentVectors() {
        this.objMesh.calculateTangentVectors(this.objVectors);
    }

    public void calcTextureWrap() {
        float f10;
        HashMap hashMap = new HashMap();
        int i10 = 0;
        while (true) {
            Mesh mesh = this.objMesh;
            if (i10 >= mesh.anzVectors) {
                break;
            }
            Integer valueOf = IntegerC.valueOf(mesh.coords[i10]);
            ArrayList arrayList = (ArrayList) hashMap.get(valueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                hashMap.put(valueOf, arrayList);
            }
            arrayList.add(IntegerC.valueOf(i10));
            i10++;
        }
        int i11 = 0;
        while (true) {
            Mesh mesh2 = this.objMesh;
            if (i11 >= mesh2.anzCoords) {
                return;
            }
            float f11 = 128;
            float f12 = f11 + (mesh2.nxOrg[i11] * f11);
            float f13 = f11 + (mesh2.nyOrg[i11] * f11);
            float f14 = f13;
            float f15 = f12;
            while (true) {
                f10 = 255;
                if (f15 <= f10 && f15 >= 0.0f && f14 <= f10 && f14 >= 0.0f) {
                    break;
                }
                if (f15 > f10) {
                    f15 = -255;
                } else if (f15 < 0.0f) {
                    f15 = f10;
                }
                if (f14 > f10) {
                    f14 = -255;
                } else if (f14 < 0.0f) {
                    f14 = f10;
                }
            }
            while (true) {
                if (f12 <= f10 && f12 >= 0.0f && f13 <= f10 && f13 >= 0.0f) {
                    break;
                }
                if (f12 > f10) {
                    f12 = -255;
                } else if (f12 < 0.0f) {
                    f12 = f10;
                }
                if (f13 > f10) {
                    f13 = -255;
                } else if (f13 < 0.0f) {
                    f13 = f10;
                }
            }
            ArrayList arrayList2 = (ArrayList) hashMap.get(IntegerC.valueOf(i11));
            if (arrayList2 != null) {
                for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                    int intValue = ((Integer) arrayList2.get(i12)).intValue();
                    Vectors vectors = this.objVectors;
                    vectors.nuOrg[intValue] = f15 / f10;
                    vectors.nvOrg[intValue] = f14 / f10;
                }
            }
            i11++;
        }
    }

    public void calcTextureWrapSpherical() {
        calcCenter();
        HashMap hashMap = new HashMap();
        int i10 = 0;
        while (true) {
            Mesh mesh = this.objMesh;
            if (i10 >= mesh.anzVectors) {
                break;
            }
            Integer valueOf = IntegerC.valueOf(mesh.coords[i10]);
            ArrayList arrayList = (ArrayList) hashMap.get(valueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                hashMap.put(valueOf, arrayList);
            }
            arrayList.add(IntegerC.valueOf(i10));
            i10++;
        }
        int i11 = 0;
        while (true) {
            Mesh mesh2 = this.objMesh;
            if (i11 >= mesh2.anzCoords) {
                return;
            }
            float f10 = mesh2.xOrg[i11] - this.centerX;
            float f11 = mesh2.yOrg[i11] - this.centerY;
            float f12 = mesh2.zOrg[i11] - this.centerZ;
            float sqrt = f11 / FloatMath.sqrt(((f10 * f10) + (f11 * f11)) + (f12 * f12));
            float asin = (float) (((Math.asin(f10 / r2) / 3.141592653589793d) + 0.5d) * 1.0d);
            float asin2 = (float) (((Math.asin(sqrt) / 3.141592653589793d) + 0.5d) * 1.0d);
            float f13 = 256;
            float f14 = asin * f13;
            float f15 = asin2 * f13;
            float f16 = f14;
            float f17 = f15;
            while (true) {
                if (f16 <= f13 && f16 >= 0.0f && f17 <= f13 && f17 >= 0.0f) {
                    break;
                }
                if (f16 > f13) {
                    f16 = -256;
                } else if (f16 < 0.0f) {
                    f16 = f13;
                }
                if (f17 > f13) {
                    f17 = -256;
                } else if (f17 < 0.0f) {
                    f17 = f13;
                }
            }
            while (true) {
                if (f14 <= f13 && f14 >= 0.0f && f15 <= f13 && f15 >= 0.0f) {
                    break;
                }
                if (f14 > f13) {
                    f14 = -256;
                } else if (f14 < 0.0f) {
                    f14 = f13;
                }
                if (f15 > f13) {
                    f15 = -256;
                } else if (f15 < 0.0f) {
                    f15 = f13;
                }
            }
            ArrayList arrayList2 = (ArrayList) hashMap.get(IntegerC.valueOf(i11));
            if (arrayList2 != null) {
                for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                    int intValue = ((Integer) arrayList2.get(i12)).intValue();
                    Vectors vectors = this.objVectors;
                    vectors.nuOrg[intValue] = f16 / f13;
                    vectors.nvOrg[intValue] = f17 / f13;
                }
            }
            i11++;
        }
    }

    public int checkForCollision(SimpleVector simpleVector, float f10) {
        checkWorld();
        return this.myWorld.checkObjCollision(this, simpleVector, f10);
    }

    public SimpleVector checkForCollisionEllipsoid(SimpleVector simpleVector, SimpleVector simpleVector2, int i10) {
        if (i10 < 1) {
            i10 = 1;
        }
        checkWorld();
        return this.myWorld.checkObjCollisionEllipsoid(this, simpleVector, simpleVector2, i10);
    }

    public SimpleVector checkForCollisionSpherical(SimpleVector simpleVector, float f10) {
        checkWorld();
        return this.myWorld.checkObjCollisionSpherical(this, simpleVector, f10);
    }

    public void clearAdditionalColor() {
        this.addColorR = 0;
        this.addColorG = 0;
        this.addColorB = 0;
        this.addColorInstance = RGBColor.BLACK;
    }

    public void clearAnimation() {
        this.anim = null;
    }

    public void clearObject() {
        Mesh mesh = this.objMesh;
        mesh.obbStart = 0;
        mesh.obbEnd = 0;
        mesh.anzTri = 0;
        mesh.anzCoords = 0;
        mesh.anzVectors = 0;
    }

    public void clearRotation() {
        setScale(1.0f);
        this.rotationMatrix.setIdentity();
    }

    public void clearShader() {
        this.shader = null;
    }

    public void clearTranslation() {
        this.translationMatrix.setIdentity();
    }

    public Object3D cloneObject() {
        return new Object3D(this, true);
    }

    public final float collide(float[] fArr, float[] fArr2, float f10, float f11) {
        return collide(fArr, fArr2, f10, f11, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x07ff  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0826  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x07fa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0749  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x07d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void collideEllipsoid(CollisionInfo collisionInfo, float f10) {
        boolean z10;
        Matrix matrix;
        Matrix matrix2;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        SimpleVector simpleVector;
        float f26;
        float f27;
        float f28;
        float f29;
        float f30;
        float f31;
        int i10;
        Object[] objArr;
        float f32;
        float f33;
        float f34;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int[] iArr;
        int[][] iArr2;
        float f35;
        int i18;
        float f36;
        float f37;
        float f38;
        float f39;
        float f40;
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        int i19;
        float f41;
        float f42;
        float f43;
        CollisionInfo collisionInfo2;
        float f44;
        int i20;
        SimpleVector simpleVector2;
        int i21;
        SimpleVector simpleVector3;
        SimpleVector simpleVector4;
        int i22;
        int i23;
        int i24;
        float[] fArr4;
        float f45;
        float f46;
        int i25;
        boolean z11;
        float f47;
        boolean z12;
        float f48;
        float f49;
        float f50;
        float f51;
        float f52;
        float f53;
        SimpleVector simpleVector5;
        float f54;
        float f55;
        boolean z13;
        float f56;
        float f57;
        float f58;
        float f59;
        float f60;
        float f61;
        float f62;
        float f63;
        float f64;
        float f65;
        float f66;
        float f67;
        float f68;
        float f69;
        float f70;
        boolean z14;
        float f71;
        float f72;
        float f73;
        float f74;
        float f75;
        float f76;
        float f77;
        float f78;
        float f79;
        CollisionInfo collisionInfo3 = collisionInfo;
        collisionInfo3.setScale(this.scaleFactor);
        createCollisionArrays();
        Matrix matrix3 = collisionInfo3.addTransMat;
        if (matrix3 != null) {
            matrix = matrix3.invert();
            Matrix worldTransformation = getWorldTransformation();
            worldTransformation.matMul(matrix);
            matrix2 = collisionInfo3.addRotMat.invert3x3();
            float[][] fArr5 = worldTransformation.mat;
            float[] fArr6 = fArr5[0];
            float f80 = fArr6[0];
            float[] fArr7 = fArr5[1];
            float f81 = fArr7[0];
            float f82 = fArr7[1];
            float[] fArr8 = fArr5[2];
            float f83 = fArr8[1];
            float f84 = fArr8[0];
            float f85 = fArr6[1];
            float f86 = fArr8[2];
            float f87 = fArr7[2];
            float f88 = fArr6[2];
            float[] fArr9 = fArr5[3];
            f16 = f82;
            f17 = f86;
            z10 = true;
            f18 = f83;
            f19 = f84;
            f20 = f85;
            f21 = fArr9[0];
            f22 = fArr9[1];
            f11 = fArr9[2];
            f12 = f88;
            f13 = f80;
            f14 = f87;
            f15 = f81;
        } else {
            z10 = false;
            matrix = null;
            matrix2 = null;
            f11 = 0.0f;
            f12 = 0.0f;
            f13 = 0.0f;
            f14 = 0.0f;
            f15 = 0.0f;
            f16 = 0.0f;
            f17 = 0.0f;
            f18 = 0.0f;
            f19 = 0.0f;
            f20 = 0.0f;
            f21 = 0.0f;
            f22 = 0.0f;
        }
        SimpleVector simpleVector6 = collisionInfo3.r3Pos;
        SimpleVector simpleVector7 = collisionInfo3.r3Velocity;
        float f89 = simpleVector6.f83625x;
        float f90 = simpleVector6.f83626y;
        float f91 = simpleVector6.f83627z;
        float f92 = simpleVector7.f83625x;
        float f93 = simpleVector7.f83626y;
        float f94 = simpleVector7.f83627z;
        SimpleVector create = SimpleVector.create();
        SimpleVector create2 = SimpleVector.create();
        SimpleVector create3 = SimpleVector.create();
        OcTree ocTree = this.ocTree;
        boolean z15 = ocTree != null && ocTree.getCollisionUse();
        if (!z10 || z15) {
            float[][] fArr10 = getInverseWorldTransformation(this.mat6).mat;
            float[] fArr11 = fArr10[0];
            float f95 = fArr11[0];
            float[] fArr12 = fArr10[1];
            float f96 = fArr12[0];
            float f97 = fArr12[1];
            float[] fArr13 = fArr10[2];
            float f98 = fArr13[1];
            float f99 = fArr13[0];
            float f100 = fArr11[1];
            float f101 = fArr13[2];
            float f102 = fArr12[2];
            float f103 = fArr11[2];
            float[] fArr14 = fArr10[3];
            float f104 = (f89 * f95) + (f90 * f96) + (f91 * f99) + fArr14[0];
            float f105 = (f89 * f100) + (f90 * f97) + (f91 * f98) + fArr14[1];
            float f106 = (f89 * f103) + (f90 * f102) + (f91 * f101) + fArr14[2];
            float f107 = (f95 * f92) + (f96 * f93) + (f99 * f94);
            float f108 = (f100 * f92) + (f97 * f93) + (f98 * f94);
            f94 = (f94 * f101) + (f92 * f103) + (f93 * f102);
            f92 = f107;
            f93 = f108;
            f23 = f105;
            f24 = f106;
            f25 = f104;
        } else {
            f24 = f91;
            f25 = f89;
            f23 = f90;
        }
        if (z10) {
            SimpleVector simpleVector8 = collisionInfo3.r3Velocity;
            float f109 = simpleVector8.f83625x;
            simpleVector = create3;
            float f110 = simpleVector8.f83626y;
            float f111 = simpleVector8.f83627z;
            float[][] fArr15 = matrix.mat;
            float[] fArr16 = fArr15[0];
            float f112 = fArr16[0];
            float[] fArr17 = fArr15[1];
            float f113 = fArr17[0];
            float f114 = fArr17[1];
            float[] fArr18 = fArr15[2];
            float f115 = fArr18[1];
            float f116 = fArr18[0];
            float f117 = fArr16[1];
            float f118 = fArr18[2];
            float f119 = fArr17[2];
            float f120 = fArr16[2];
            float[] fArr19 = fArr15[3];
            f31 = (f112 * f89) + (f113 * f90) + (f116 * f91) + fArr19[0];
            f26 = (f117 * f89) + (f114 * f90) + (f115 * f91) + fArr19[1];
            f30 = (f89 * f120) + (f90 * f119) + (f91 * f118) + fArr19[2];
            SimpleVector create4 = SimpleVector.create(f109, f110, f111);
            create4.matMul(matrix2);
            f28 = create4.f83625x;
            f29 = create4.f83626y;
            f27 = create4.f83627z;
        } else {
            simpleVector = create3;
            f26 = f23;
            f27 = f94;
            f28 = f92;
            f29 = f93;
            f30 = f24;
            f31 = f25;
        }
        if (z15) {
            objArr = this.ocTree.getColliderLeafs(f25, f23, f24, (collisionInfo.getMaxRadius() + FloatMath.sqrt((f92 * f92) + (f93 * f93) + (f94 * f94))) * this.ocTree.getRadiusMultiplier());
            int intValue = ((Integer) objArr[0]).intValue();
            if (intValue == 0) {
                return;
            } else {
                i10 = intValue;
            }
        } else {
            i10 = 0;
            objArr = null;
        }
        int i26 = this.objMesh.anzTri;
        OcTreeNode[] ocTreeNodeArr = z15 ? (OcTreeNode[]) objArr[1] : null;
        SimpleVector simpleVector9 = collisionInfo3.invERadius;
        create2.f83625x = simpleVector9.f83625x * f31;
        create2.f83626y = simpleVector9.f83626y * f26;
        create2.f83627z = f30 * simpleVector9.f83627z;
        float f121 = f28 * simpleVector9.f83625x;
        create.f83625x = f121;
        float f122 = f29 * simpleVector9.f83626y;
        create.f83626y = f122;
        float f123 = f27 * simpleVector9.f83627z;
        create.f83627z = f123;
        float length = create.length();
        if (length != 0.0f) {
            f32 = f123 / length;
            f34 = f121 / length;
            f33 = f122 / length;
        } else {
            f32 = 0.0f;
            f33 = 0.0f;
            f34 = 0.0f;
        }
        Mesh mesh = this.objMesh;
        int[][] iArr3 = mesh.points;
        int[] iArr4 = mesh.coords;
        float[] fArr20 = mesh.xOrg;
        float[] fArr21 = mesh.yOrg;
        float[] fArr22 = mesh.zOrg;
        float f124 = Config.collideOffset;
        if (this.optimizeColDet) {
            float f125 = this.largestPolygonSize;
            if (f125 != -1.0f) {
                float f126 = f125 + 1.0f;
                if (f126 < f124) {
                    f124 = f126;
                }
            }
        }
        float f127 = f124 * f124;
        int i27 = 0;
        int i28 = 0;
        int i29 = i26;
        int[] iArr5 = null;
        int i30 = 0;
        while (true) {
            if (z15) {
                int[] polygons = ocTreeNodeArr[i27].getPolygons();
                i11 = i27 + 1;
                i12 = ocTreeNodeArr[i27].getPolyCount();
                iArr5 = polygons;
            } else {
                int i31 = i29;
                i11 = i27;
                i12 = i31;
            }
            OcTreeNode[] ocTreeNodeArr2 = ocTreeNodeArr;
            i13 = i30;
            SimpleVector simpleVector10 = create;
            i14 = i28;
            float f128 = f32;
            int i32 = 0;
            while (i32 < i12) {
                if (z15) {
                    i15 = i10;
                    i16 = iArr5[i32];
                } else {
                    i15 = i10;
                    i16 = i32;
                }
                int[] iArr6 = iArr3[i16];
                int i33 = iArr4[iArr6[0]];
                int i34 = iArr4[iArr6[1]];
                int i35 = iArr4[iArr6[2]];
                int i36 = i12;
                SimpleVector simpleVector11 = collisionInfo3.invERadius;
                if (z10) {
                    float f129 = fArr20[i33];
                    float f130 = fArr21[i33];
                    float f131 = fArr22[i33];
                    float f132 = (f129 * f13) + (f130 * f15) + (f131 * f19) + f21;
                    float f133 = (f129 * f20) + (f130 * f16) + (f131 * f18) + f22;
                    float f134 = (f129 * f12) + (f130 * f14) + (f131 * f17) + f11;
                    i17 = i11;
                    float f135 = simpleVector11.f83625x;
                    float f136 = f132 * f135;
                    iArr = iArr4;
                    float f137 = simpleVector11.f83626y;
                    float f138 = f133 * f137;
                    float f139 = simpleVector11.f83627z;
                    float f140 = fArr20[i34];
                    float f141 = fArr21[i34];
                    float f142 = fArr22[i34];
                    float f143 = ((f140 * f13) + (f141 * f15) + (f142 * f19) + f21) * f135;
                    float f144 = ((f140 * f20) + (f141 * f16) + (f142 * f18) + f22) * f137;
                    float f145 = ((f140 * f12) + (f141 * f14) + (f142 * f17) + f11) * f139;
                    float f146 = fArr20[i35];
                    float f147 = fArr21[i35];
                    float f148 = fArr22[i35];
                    float f149 = ((f146 * f13) + (f147 * f15) + (f148 * f19) + f21) * f135;
                    float f150 = ((f146 * f20) + (f147 * f16) + (f148 * f18) + f22) * f137;
                    float f151 = ((f146 * f12) + (f147 * f14) + (f148 * f17) + f11) * f139;
                    i18 = i16;
                    f37 = f151;
                    f35 = f134 * f139;
                    f38 = f136;
                    f39 = f138;
                    f40 = f143;
                    fArr = fArr22;
                    fArr2 = fArr21;
                    fArr3 = fArr20;
                    iArr2 = iArr3;
                    f36 = f145;
                    f42 = f149;
                    f43 = f150;
                    i19 = i32;
                    f41 = f144;
                } else {
                    i17 = i11;
                    iArr = iArr4;
                    float f152 = fArr20[i33];
                    float f153 = simpleVector11.f83625x;
                    float f154 = f152 * f153;
                    float f155 = fArr21[i33];
                    iArr2 = iArr3;
                    float f156 = simpleVector11.f83626y;
                    float f157 = f155 * f156;
                    float f158 = fArr22[i33];
                    float f159 = simpleVector11.f83627z;
                    f35 = f158 * f159;
                    float f160 = fArr20[i34] * f153;
                    float f161 = fArr21[i34] * f156;
                    float f162 = fArr22[i34] * f159;
                    float f163 = fArr20[i35] * f153;
                    float f164 = fArr21[i35] * f156;
                    float f165 = fArr22[i35] * f159;
                    i18 = i16;
                    f36 = f162;
                    f37 = f165;
                    f38 = f154;
                    f39 = f157;
                    f40 = f160;
                    fArr = fArr22;
                    fArr2 = fArr21;
                    fArr3 = fArr20;
                    i19 = i32;
                    f41 = f161;
                    f42 = f163;
                    f43 = f164;
                }
                if (!this.optimizeColDet || getSquaredDistance(create2, f38, f39, f35) <= f127 || getSquaredDistance(create2, f40, f41, f36) <= f127 || getSquaredDistance(create2, f42, f43, f37) <= f127) {
                    int i37 = i13 + 1;
                    this.trianglePlane.setTo(f38, f39, f35, f40, f41, f36, f42, f43, f37);
                    float f166 = f41;
                    float f167 = f128;
                    if (this.trianglePlane.isFrontFacingTo(f34, f33, f167)) {
                        float distanceTo = this.trianglePlane.distanceTo(create2);
                        float f168 = f38;
                        SimpleVector simpleVector12 = this.trianglePlane.normal;
                        float f169 = f43;
                        i20 = i14;
                        SimpleVector simpleVector13 = simpleVector10;
                        float f170 = f42;
                        float f171 = f35;
                        float f172 = (simpleVector12.f83625x * simpleVector13.f83625x) + (simpleVector12.f83626y * simpleVector13.f83626y) + (simpleVector12.f83627z * simpleVector13.f83627z);
                        if (f172 == 0.0f) {
                            z12 = Math.abs(distanceTo) < 1.0f;
                            z11 = z12;
                            f47 = 0.0f;
                        } else {
                            float f173 = (-1.0f) / f172;
                            float f174 = distanceTo * f173;
                            float f175 = f174 + f173;
                            float f176 = f174 - f173;
                            if (f175 <= f176) {
                                f175 = f176;
                                f176 = f175;
                            }
                            z11 = f176 <= 1.0f && f175 >= 0.0f;
                            if (f176 < -1.0f) {
                                f176 = 0.0f;
                            } else if (f176 > 1.0f) {
                                f176 = 1.0f;
                            }
                            f47 = f176;
                            z12 = false;
                        }
                        if (z11) {
                            SimpleVector simpleVector14 = simpleVector;
                            simpleVector14.set(0.0f, 0.0f, 0.0f);
                            if (z12) {
                                f48 = f37;
                                f49 = f36;
                                f44 = f33;
                                f46 = f34;
                                f50 = f39;
                                f51 = f40;
                                i21 = i37;
                                i23 = i36;
                                fArr4 = fArr;
                                f52 = f166;
                                f53 = f171;
                                simpleVector3 = simpleVector14;
                                simpleVector4 = simpleVector13;
                                simpleVector5 = create2;
                                f54 = f170;
                                i22 = i19;
                                i24 = i17;
                                f55 = 0.0f;
                                f45 = f167;
                            } else {
                                this.t0Vel.set(simpleVector13);
                                this.t0Vel.scalarMul(f47);
                                this.planeIntersectionPoint.set(create2);
                                this.planeIntersectionPoint.sub(this.trianglePlane.normal);
                                this.planeIntersectionPoint.add(this.t0Vel);
                                this.fromBaseToIntersection.set(this.planeIntersectionPoint);
                                this.fromBaseToIntersection.sub(create2);
                                i23 = i36;
                                fArr4 = fArr;
                                i21 = i37;
                                simpleVector3 = simpleVector14;
                                f54 = f170;
                                f55 = 0.0f;
                                f53 = f171;
                                i24 = i17;
                                f56 = f47;
                                float f177 = f39;
                                f48 = f37;
                                f49 = f36;
                                float f178 = f40;
                                f52 = f166;
                                i22 = i19;
                                f45 = f167;
                                f44 = f33;
                                f51 = f40;
                                simpleVector4 = simpleVector13;
                                f50 = f39;
                                simpleVector5 = create2;
                                f46 = f34;
                                if (checkPointInTriangle(this.fromBaseToIntersection, create2, f168, f177, f53, f178, f52, f49, f54, f169, f48)) {
                                    simpleVector3.set(this.planeIntersectionPoint);
                                    z13 = true;
                                    if (z13) {
                                        float f179 = simpleVector4.f83625x;
                                        float f180 = simpleVector4.f83626y;
                                        float f181 = simpleVector4.f83627z;
                                        float f182 = (f179 * f179) + (f180 * f180) + (f181 * f181);
                                        float f183 = simpleVector5.f83625x;
                                        float f184 = simpleVector5.f83626y;
                                        float f185 = simpleVector5.f83627z;
                                        float f186 = f53;
                                        float f187 = ((f179 * (f183 - f168)) + (f180 * (f184 - f50)) + (f181 * (f185 - f186))) * 2.0f;
                                        float f188 = f168 - f183;
                                        float f189 = f50 - f184;
                                        float f190 = f186 - f185;
                                        if (getLowestRoot(f182, f187, (((f188 * f188) + (f189 * f189)) + (f190 * f190)) - 1.0f, f56, this.newT)) {
                                            f56 = this.newT[0];
                                            f58 = f50;
                                            simpleVector3.set(f168, f58, f186);
                                            z13 = true;
                                        } else {
                                            f58 = f50;
                                        }
                                        float f191 = simpleVector5.f83625x;
                                        float f192 = simpleVector5.f83626y;
                                        float f193 = f52;
                                        float f194 = simpleVector5.f83627z;
                                        float f195 = f49;
                                        boolean z16 = z13;
                                        float f196 = ((simpleVector4.f83625x * (f191 - f51)) + (simpleVector4.f83626y * (f192 - f193)) + (simpleVector4.f83627z * (f194 - f195))) * 2.0f;
                                        float f197 = f51 - f191;
                                        float f198 = f193 - f192;
                                        float f199 = f195 - f194;
                                        if (getLowestRoot(f182, f196, (((f197 * f197) + (f198 * f198)) + (f199 * f199)) - 1.0f, f56, this.newT)) {
                                            f56 = this.newT[0];
                                            f59 = f51;
                                            simpleVector3.set(f59, f193, f195);
                                            z16 = true;
                                        } else {
                                            f59 = f51;
                                        }
                                        float f200 = simpleVector5.f83625x;
                                        float f201 = f54;
                                        float f202 = simpleVector5.f83626y;
                                        float f203 = f202 - f169;
                                        float f204 = simpleVector5.f83627z;
                                        SimpleVector simpleVector15 = simpleVector5;
                                        float f205 = f48;
                                        float f206 = f58;
                                        float f207 = ((simpleVector4.f83625x * (f200 - f201)) + (simpleVector4.f83626y * f203) + (simpleVector4.f83627z * (f204 - f205))) * 2.0f;
                                        float f208 = f201 - f200;
                                        float f209 = f169 - f202;
                                        float f210 = f205 - f204;
                                        if (getLowestRoot(f182, f207, (((f208 * f208) + (f209 * f209)) + (f210 * f210)) - 1.0f, f56, this.newT)) {
                                            f56 = this.newT[0];
                                            simpleVector3.set(f201, f169, f205);
                                            z16 = true;
                                        }
                                        float f211 = f59 - f168;
                                        float f212 = f193 - f206;
                                        float f213 = f195 - f186;
                                        float f214 = f168 - simpleVector15.f83625x;
                                        float f215 = f206 - simpleVector15.f83626y;
                                        float f216 = f186 - simpleVector15.f83627z;
                                        float f217 = (f211 * f211) + (f212 * f212) + (f213 * f213);
                                        float f218 = simpleVector4.f83625x;
                                        float f219 = simpleVector4.f83626y;
                                        float f220 = simpleVector4.f83627z;
                                        float f221 = (f211 * f218) + (f212 * f219) + (f213 * f220);
                                        float f222 = (f211 * f214) + (f212 * f215) + (f213 * f216);
                                        float f223 = -f182;
                                        SimpleVector simpleVector16 = simpleVector4;
                                        if (getLowestRoot((f217 * f223) + (f221 * f221), (((((f218 * f214) + (f219 * f215)) + (f220 * f216)) * 2.0f) * f217) - ((f221 * 2.0f) * f222), ((1.0f - (((f214 * f214) + (f215 * f215)) + (f216 * f216))) * f217) + (f222 * f222), f56, this.newT)) {
                                            float f224 = this.newT[0];
                                            float f225 = ((f221 * f224) - f222) / f217;
                                            if (f225 >= f55 && f225 <= 1.0f) {
                                                simpleVector3.set(f211, f212, f213);
                                                simpleVector3.scalarMul(f225);
                                                f60 = f186;
                                                f61 = f206;
                                                simpleVector3.add(f168, f61, f60);
                                                f56 = f224;
                                                z16 = true;
                                                float f226 = f201 - f59;
                                                float f227 = f169 - f193;
                                                float f228 = f205 - f195;
                                                f62 = f59 - simpleVector15.f83625x;
                                                f63 = f193 - simpleVector15.f83626y;
                                                f64 = f195 - simpleVector15.f83627z;
                                                f65 = (f226 * f226) + (f227 * f227) + (f228 * f228);
                                                f66 = simpleVector16.f83625x;
                                                float f229 = f60;
                                                f67 = simpleVector16.f83626y;
                                                float f230 = f61;
                                                f68 = simpleVector16.f83627z;
                                                f69 = (f226 * f66) + (f227 * f67) + (f228 * f68);
                                                f70 = (f226 * f62) + (f227 * f63) + (f228 * f64);
                                                if (getLowestRoot((f65 * f223) + (f69 * f69), (((((f66 * f62) + (f67 * f63)) + (f68 * f64)) * 2.0f) * f65) - ((f69 * 2.0f) * f70), ((1.0f - (((f62 * f62) + (f63 * f63)) + (f64 * f64))) * f65) + (f70 * f70), f56, this.newT)) {
                                                    float f231 = this.newT[0];
                                                    float f232 = ((f69 * f231) - f70) / f65;
                                                    if (f232 >= f55 && f232 <= 1.0f) {
                                                        simpleVector3.set(f226, f227, f228);
                                                        simpleVector3.scalarMul(f232);
                                                        simpleVector3.add(f59, f193, f195);
                                                        f56 = f231;
                                                        z14 = true;
                                                        float f233 = f168 - f201;
                                                        float f234 = f230 - f169;
                                                        float f235 = f229 - f205;
                                                        simpleVector2 = simpleVector15;
                                                        f71 = f201 - simpleVector2.f83625x;
                                                        f72 = f169 - simpleVector2.f83626y;
                                                        f73 = f205 - simpleVector2.f83627z;
                                                        f74 = (f233 * f233) + (f234 * f234) + (f235 * f235);
                                                        simpleVector4 = simpleVector16;
                                                        f75 = simpleVector4.f83625x;
                                                        f76 = simpleVector4.f83626y;
                                                        boolean z17 = z14;
                                                        f77 = simpleVector4.f83627z;
                                                        f78 = (f233 * f75) + (f234 * f76) + (f235 * f77);
                                                        f79 = (f233 * f71) + (f234 * f72) + (f235 * f73);
                                                        if (getLowestRoot((f74 * f223) + (f78 * f78), (((((f75 * f71) + (f76 * f72)) + (f77 * f73)) * 2.0f) * f74) - ((2.0f * f78) * f79), ((1.0f - (((f71 * f71) + (f72 * f72)) + (f73 * f73))) * f74) + (f79 * f79), f56, this.newT)) {
                                                            f57 = this.newT[0];
                                                            float f236 = ((f78 * f57) - f79) / f74;
                                                            if (f236 >= f55 && f236 <= 1.0f) {
                                                                simpleVector3.set(f233, f234, f235);
                                                                simpleVector3.scalarMul(f236);
                                                                simpleVector3.add(f201, f169, f205);
                                                                z13 = true;
                                                            }
                                                        }
                                                        f57 = f56;
                                                        z13 = z17;
                                                    }
                                                }
                                                z14 = z16;
                                                float f2332 = f168 - f201;
                                                float f2342 = f230 - f169;
                                                float f2352 = f229 - f205;
                                                simpleVector2 = simpleVector15;
                                                f71 = f201 - simpleVector2.f83625x;
                                                f72 = f169 - simpleVector2.f83626y;
                                                f73 = f205 - simpleVector2.f83627z;
                                                f74 = (f2332 * f2332) + (f2342 * f2342) + (f2352 * f2352);
                                                simpleVector4 = simpleVector16;
                                                f75 = simpleVector4.f83625x;
                                                f76 = simpleVector4.f83626y;
                                                boolean z172 = z14;
                                                f77 = simpleVector4.f83627z;
                                                f78 = (f2332 * f75) + (f2342 * f76) + (f2352 * f77);
                                                f79 = (f2332 * f71) + (f2342 * f72) + (f2352 * f73);
                                                if (getLowestRoot((f74 * f223) + (f78 * f78), (((((f75 * f71) + (f76 * f72)) + (f77 * f73)) * 2.0f) * f74) - ((2.0f * f78) * f79), ((1.0f - (((f71 * f71) + (f72 * f72)) + (f73 * f73))) * f74) + (f79 * f79), f56, this.newT)) {
                                                }
                                                f57 = f56;
                                                z13 = z172;
                                            }
                                        }
                                        f60 = f186;
                                        f61 = f206;
                                        float f2262 = f201 - f59;
                                        float f2272 = f169 - f193;
                                        float f2282 = f205 - f195;
                                        f62 = f59 - simpleVector15.f83625x;
                                        f63 = f193 - simpleVector15.f83626y;
                                        f64 = f195 - simpleVector15.f83627z;
                                        f65 = (f2262 * f2262) + (f2272 * f2272) + (f2282 * f2282);
                                        f66 = simpleVector16.f83625x;
                                        float f2292 = f60;
                                        f67 = simpleVector16.f83626y;
                                        float f2302 = f61;
                                        f68 = simpleVector16.f83627z;
                                        f69 = (f2262 * f66) + (f2272 * f67) + (f2282 * f68);
                                        f70 = (f2262 * f62) + (f2272 * f63) + (f2282 * f64);
                                        if (getLowestRoot((f65 * f223) + (f69 * f69), (((((f66 * f62) + (f67 * f63)) + (f68 * f64)) * 2.0f) * f65) - ((f69 * 2.0f) * f70), ((1.0f - (((f62 * f62) + (f63 * f63)) + (f64 * f64))) * f65) + (f70 * f70), f56, this.newT)) {
                                        }
                                        z14 = z16;
                                        float f23322 = f168 - f201;
                                        float f23422 = f2302 - f169;
                                        float f23522 = f2292 - f205;
                                        simpleVector2 = simpleVector15;
                                        f71 = f201 - simpleVector2.f83625x;
                                        f72 = f169 - simpleVector2.f83626y;
                                        f73 = f205 - simpleVector2.f83627z;
                                        f74 = (f23322 * f23322) + (f23422 * f23422) + (f23522 * f23522);
                                        simpleVector4 = simpleVector16;
                                        f75 = simpleVector4.f83625x;
                                        f76 = simpleVector4.f83626y;
                                        boolean z1722 = z14;
                                        f77 = simpleVector4.f83627z;
                                        f78 = (f23322 * f75) + (f23422 * f76) + (f23522 * f77);
                                        f79 = (f23322 * f71) + (f23422 * f72) + (f23522 * f73);
                                        if (getLowestRoot((f74 * f223) + (f78 * f78), (((((f75 * f71) + (f76 * f72)) + (f77 * f73)) * 2.0f) * f74) - ((2.0f * f78) * f79), ((1.0f - (((f71 * f71) + (f72 * f72)) + (f73 * f73))) * f74) + (f79 * f79), f56, this.newT)) {
                                        }
                                        f57 = f56;
                                        z13 = z1722;
                                    } else {
                                        simpleVector2 = simpleVector5;
                                        f57 = f56;
                                    }
                                    if (z13) {
                                        collisionInfo2 = collisionInfo;
                                    } else {
                                        addPolygonID(i18);
                                        collisionInfo2 = collisionInfo;
                                        if (!collisionInfo2.foundCollision || f57 <= collisionInfo2.nearestDistance) {
                                            collisionInfo2.nearestDistance = f57;
                                            collisionInfo2.setIntersectionPoint(simpleVector3);
                                            collisionInfo2.foundCollision = true;
                                            collisionInfo2.collision = true;
                                            collisionInfo2.eSpaceBasePoint = simpleVector2;
                                            collisionInfo2.eSpaceVelocity = simpleVector4;
                                            collisionInfo2.collisionObject = this;
                                            collisionInfo2.isPartOfCollision = true;
                                            i25 = i21;
                                        }
                                    }
                                    i25 = i21;
                                }
                            }
                            z13 = false;
                            f56 = 1.0f;
                            if (z13) {
                            }
                            if (z13) {
                            }
                            i25 = i21;
                        } else {
                            collisionInfo2 = collisionInfo;
                            f44 = f33;
                            simpleVector4 = simpleVector13;
                            simpleVector2 = create2;
                            i21 = i37;
                            simpleVector3 = simpleVector;
                        }
                    } else {
                        collisionInfo2 = collisionInfo;
                        f44 = f33;
                        i20 = i14;
                        simpleVector2 = create2;
                        i21 = i37;
                        simpleVector3 = simpleVector;
                        simpleVector4 = simpleVector10;
                    }
                    i22 = i19;
                    i23 = i36;
                    i24 = i17;
                    fArr4 = fArr;
                    f45 = f167;
                    f46 = f34;
                    i25 = i21;
                } else {
                    collisionInfo2 = collisionInfo;
                    f44 = f33;
                    i20 = i14 + 1;
                    simpleVector2 = create2;
                    i25 = i13;
                    simpleVector3 = simpleVector;
                    simpleVector4 = simpleVector10;
                    i22 = i19;
                    i23 = i36;
                    i24 = i17;
                    fArr4 = fArr;
                    f46 = f34;
                    f45 = f128;
                }
                i32 = i22 + 1;
                collisionInfo3 = collisionInfo2;
                create2 = simpleVector2;
                simpleVector10 = simpleVector4;
                f34 = f46;
                i12 = i23;
                i10 = i15;
                f128 = f45;
                fArr20 = fArr3;
                fArr22 = fArr4;
                iArr3 = iArr2;
                iArr4 = iArr;
                i14 = i20;
                i11 = i24;
                f33 = f44;
                simpleVector = simpleVector3;
                i13 = i25;
                fArr21 = fArr2;
            }
            if (!z15 || i11 >= i10) {
                break;
            }
            f32 = f128;
            i28 = i14;
            create = simpleVector10;
            i30 = i13;
            ocTreeNodeArr = ocTreeNodeArr2;
            int i38 = i11;
            i29 = i12;
            i27 = i38;
        }
        if (Logger.isDebugEnabled()) {
            Logger.log("Polygons checked: " + i13 + "/ skipped: " + i14, 3);
        }
    }

    public final float[] collideSpherical(float[] fArr, float f10, float f11, boolean[] zArr, boolean z10) {
        int i10;
        Object[] objArr;
        boolean z11;
        OcTreeNode[] ocTreeNodeArr;
        int i11;
        int i12;
        int i13;
        int i14;
        float f12;
        float f13;
        float f14 = Config.collideOffset;
        if (this.optimizeColDet) {
            float f15 = this.largestPolygonSize;
            if (f15 != -1.0f) {
                float f16 = f15 + f10 + 1.0f;
                if (f16 < f14) {
                    f14 = f16;
                }
            }
        }
        Matrix worldTransformation = getWorldTransformation(this.mat5);
        float[][] fArr2 = getInverseWorldTransformation(this.mat6).mat;
        float[] fArr3 = fArr2[0];
        float f17 = fArr3[0];
        float[] fArr4 = fArr2[1];
        float f18 = fArr4[0];
        float f19 = fArr4[1];
        float[] fArr5 = fArr2[2];
        float f20 = fArr5[1];
        float f21 = fArr5[0];
        float f22 = fArr3[1];
        float f23 = fArr5[2];
        float f24 = fArr4[2];
        float f25 = fArr3[2];
        float[] fArr6 = fArr2[3];
        float f26 = fArr6[0];
        float f27 = fArr6[1];
        float f28 = fArr6[2];
        float f29 = fArr[0];
        float f30 = fArr[1];
        float f31 = (f17 * f29) + (f18 * f30);
        float f32 = fArr[2];
        float f33 = f31 + (f21 * f32) + f26;
        float f34 = (f22 * f29) + (f19 * f30) + (f20 * f32) + f27;
        float f35 = (f29 * f25) + (f30 * f24) + (f32 * f23) + f28;
        OcTree ocTree = this.ocTree;
        if (ocTree == null || !ocTree.getCollisionUse()) {
            i10 = 0;
            objArr = null;
        } else {
            OcTree ocTree2 = this.ocTree;
            objArr = ocTree2.getColliderLeafs(f33, f34, f35, ocTree2.getRadiusMultiplier() * f10);
            i10 = ((Integer) objArr[0]).intValue();
            if (i10 == 0) {
                return fArr;
            }
        }
        int i15 = this.objMesh.anzTri;
        OcTree ocTree3 = this.ocTree;
        if (ocTree3 == null || !ocTree3.getCollisionUse()) {
            z11 = false;
            ocTreeNodeArr = null;
        } else {
            ocTreeNodeArr = (OcTreeNode[]) objArr[1];
            z11 = true;
        }
        Mesh mesh = this.objMesh;
        int[] iArr = mesh.coords;
        float[] fArr7 = mesh.xOrg;
        float[] fArr8 = mesh.yOrg;
        float[] fArr9 = mesh.zOrg;
        float f36 = f35;
        int i16 = 0;
        boolean z12 = false;
        int i17 = 0;
        float f37 = f33;
        float f38 = f34;
        int[] iArr2 = null;
        while (true) {
            if (z11) {
                i11 = i16 + 1;
                iArr2 = ocTreeNodeArr[i16].getPolygons();
                i15 = ocTreeNodeArr[i16].getPolyCount();
            } else {
                i11 = i16;
            }
            int[][] iArr3 = this.objMesh.points;
            float f39 = f14 * f14;
            OcTreeNode[] ocTreeNodeArr2 = ocTreeNodeArr;
            int i18 = 0;
            int i19 = i17;
            float f40 = f14;
            i12 = i19;
            while (i18 < i15) {
                int i20 = i12 + 1;
                if (z11) {
                    i13 = i20;
                    i14 = iArr2[i18];
                } else {
                    i13 = i20;
                    i14 = i18;
                }
                int[] iArr4 = iArr3[i14];
                int i21 = iArr[iArr4[0]];
                Matrix matrix = worldTransformation;
                Mesh mesh2 = this.objMesh;
                int i22 = i11;
                float f41 = mesh2.xOrg[i21];
                int i23 = i10;
                float f42 = mesh2.yOrg[i21];
                float f43 = mesh2.zOrg[i21];
                float f44 = f41 - f33;
                float f45 = f42 - f34;
                float f46 = f43 - f35;
                if (f11 == 1.0E12f || (f44 * f44 <= f39 && f45 * f45 <= f39 && f46 * f46 <= f39)) {
                    int i24 = iArr[iArr4[2]];
                    int i25 = iArr[iArr4[1]];
                    float f47 = fArr7[i25] - f41;
                    float f48 = fArr8[i25] - f42;
                    float f49 = fArr9[i25] - f43;
                    float f50 = fArr7[i24] - f41;
                    float f51 = fArr8[i24] - f42;
                    float f52 = fArr9[i24] - f43;
                    float f53 = (f48 * f52) - (f49 * f51);
                    float f54 = (f49 * f50) - (f52 * f47);
                    float f55 = (f47 * f51) - (f48 * f50);
                    float sqrt = FloatMath.sqrt((f53 * f53) + (f54 * f54) + (f55 * f55));
                    float f56 = f53 / sqrt;
                    float f57 = f54 / sqrt;
                    float f58 = f55 / sqrt;
                    float f59 = (((f56 * f37) + (f57 * f38)) + (f58 * f36)) - (((f41 * f56) + (f42 * f57)) + (f43 * f58));
                    if (Math.abs(f59) < f10) {
                        float f60 = f37 - (f56 * f59);
                        float f61 = f38 - (f57 * f59);
                        float f62 = f36 - (f58 * f59);
                        f12 = f35;
                        int i26 = 0;
                        float f63 = 0.0f;
                        while (true) {
                            f13 = f33;
                            if (i26 >= 3) {
                                break;
                            }
                            int i27 = iArr[iArr4[i26]];
                            float f64 = fArr7[i27] - f60;
                            float f65 = fArr8[i27] - f61;
                            float f66 = fArr9[i27] - f62;
                            int i28 = i26 + 1;
                            int i29 = iArr[iArr4[i28 % 3]];
                            float f67 = fArr7[i29] - f60;
                            float f68 = fArr8[i29] - f61;
                            float f69 = fArr9[i29] - f62;
                            float calcDot = MathUtils.calcDot(f64, f65, f66, f67, f68, f69) / (FloatMath.sqrt(((f64 * f64) + (f65 * f65)) + (f66 * f66)) * FloatMath.sqrt(((f67 * f67) + (f68 * f68)) + (f69 * f69)));
                            float f70 = f60;
                            float acos = (float) Math.acos(calcDot);
                            if (Float.isNaN(acos)) {
                                acos = 0.0f;
                            }
                            f63 += acos;
                            if (f63 >= INSIDE_POLYGON_CONST) {
                                break;
                            }
                            f33 = f13;
                            f60 = f70;
                            i26 = i28;
                        }
                        if (f63 < INSIDE_POLYGON_CONST) {
                            int i30 = 0;
                            while (i30 < 3) {
                                int i31 = iArr[iArr4[i30]];
                                float f71 = fArr7[i31];
                                float f72 = fArr8[i31];
                                float f73 = fArr9[i31];
                                i30++;
                                int i32 = iArr[iArr4[i30 % 3]];
                                float f74 = fArr7[i32];
                                float f75 = fArr8[i32];
                                float f76 = fArr9[i32];
                                float f77 = f74 - f71;
                                float f78 = f75 - f72;
                                float f79 = f76 - f73;
                                float sqrt2 = FloatMath.sqrt((f77 * f77) + (f78 * f78) + (f79 * f79));
                                float f80 = f77 / sqrt2;
                                float f81 = f78 / sqrt2;
                                float f82 = f79 / sqrt2;
                                float calcDot2 = MathUtils.calcDot(f37 - f71, f38 - f72, f36 - f73, f80, f81, f82);
                                if (calcDot2 > 0.0f) {
                                    float f83 = f71 - f74;
                                    float f84 = f72 - f75;
                                    float f85 = (f83 * f83) + (f84 * f84);
                                    float f86 = f73 - f76;
                                    if (calcDot2 >= FloatMath.sqrt(f85 + (f86 * f86))) {
                                        f73 = f76;
                                        f71 = f74;
                                        f72 = f75;
                                    } else {
                                        f71 += f80 * calcDot2;
                                        f72 += f81 * calcDot2;
                                        f73 += f82 * calcDot2;
                                    }
                                }
                                float f87 = f71 - f37;
                                float f88 = f72 - f38;
                                float f89 = f73 - f36;
                                if (FloatMath.sqrt((f87 * f87) + (f88 * f88) + (f89 * f89)) < (z10 ? Config.collideEdgeMul * f10 : f10)) {
                                }
                            }
                        }
                        addPolygonID(i14);
                        float f90 = f10 - f59;
                        f37 += f56 * f90;
                        f38 += f57 * f90;
                        f36 += f58 * f90;
                        z12 = true;
                        break;
                    } else {
                        f12 = f35;
                        f13 = f33;
                    }
                } else {
                    f12 = f35;
                    f13 = f33;
                }
                i18++;
                i12 = i13;
                worldTransformation = matrix;
                i11 = i22;
                i10 = i23;
                f35 = f12;
                f33 = f13;
            }
            if (!z11 || i11 >= i10) {
                break;
            }
            i16 = i11;
            ocTreeNodeArr = ocTreeNodeArr2;
            i17 = i12;
            f14 = f40;
        }
        float[][] fArr10 = worldTransformation.mat;
        if (Logger.isDebugEnabled()) {
            Logger.log("Polygons checked: " + i12, 3);
        }
        float[] fArr11 = fArr10[0];
        float f91 = fArr11[0];
        float[] fArr12 = fArr10[1];
        float f92 = fArr12[0];
        float f93 = fArr12[1];
        float[] fArr13 = fArr10[2];
        float f94 = fArr13[1];
        float f95 = fArr13[0];
        float f96 = fArr11[1];
        float f97 = fArr13[2];
        float f98 = fArr12[2];
        float f99 = fArr11[2];
        float[] fArr14 = fArr10[3];
        float f100 = (f91 * f37) + (f92 * f38) + (f95 * f36) + fArr14[0];
        float f101 = (f96 * f37) + (f93 * f38) + (f94 * f36) + fArr14[1];
        float f102 = (f37 * f99) + (f38 * f98) + (f36 * f97) + fArr14[2];
        fArr[0] = f100;
        fArr[1] = f101;
        fArr[2] = f102;
        zArr[0] = zArr[0] | z12;
        return fArr;
    }

    public void compile() {
        compile(false, true);
    }

    public boolean cullingIsInverted() {
        return this.reverseCulling;
    }

    public void decoupleMesh() {
        Mesh mesh = new Mesh(0);
        this.objMesh = mesh;
        this.objVectors.setMesh(mesh);
    }

    public void disableCollisionListeners() {
        this.disableListeners = true;
    }

    public void disableLazyTransformations() {
        this.lazyTransforms = false;
        if (this.transCacheDump == null) {
            this.transCacheDump = this.transCache;
        }
        if (this.invCacheDump == null) {
            this.invCacheDump = this.invCache;
        }
        this.transCache = null;
        this.invCache = null;
    }

    public void disableVertexSharing() {
        this.neverOptimize = true;
    }

    public boolean ellipsoidIntersectsAABB(SimpleVector simpleVector, SimpleVector simpleVector2) {
        if (!this.hasBoundingBox) {
            return false;
        }
        float[][] fArr = getInverseWorldTransformation(this.mat6).mat;
        float[] fArr2 = fArr[0];
        float f10 = fArr2[0];
        float[] fArr3 = fArr[1];
        float f11 = fArr3[0];
        float f12 = fArr3[1];
        float[] fArr4 = fArr[2];
        float f13 = fArr4[1];
        float f14 = fArr4[0];
        float f15 = fArr2[1];
        float f16 = fArr4[2];
        float f17 = fArr3[2];
        float f18 = fArr2[2];
        float[] fArr5 = fArr[3];
        float f19 = fArr5[0];
        float f20 = fArr5[1];
        float f21 = fArr5[2];
        float f22 = simpleVector.f83625x;
        float f23 = simpleVector.f83626y;
        float f24 = simpleVector.f83627z;
        float f25 = (f22 * f10) + (f23 * f11) + (f24 * f14) + f19;
        float f26 = (f22 * f15) + (f23 * f12) + (f24 * f13) + f20;
        float f27 = (f22 * f18) + (f23 * f17) + (f24 * f16) + f21;
        float f28 = simpleVector2.f83625x;
        float f29 = simpleVector2.f83626y;
        float f30 = simpleVector2.f83627z;
        float abs = Math.abs((f10 * f28) + (f11 * f29) + (f14 * f30));
        float abs2 = Math.abs((f15 * f28) + (f12 * f29) + (f13 * f30));
        float abs3 = Math.abs((f28 * f18) + (f29 * f17) + (f30 * f16));
        float f31 = f25 / abs;
        float f32 = f26 / abs2;
        float f33 = f27 / abs3;
        Mesh mesh = this.objMesh;
        int i10 = mesh.obbStart;
        float f34 = 1.0f / abs;
        float f35 = 1.0f / abs2;
        float f36 = 1.0f / abs3;
        float[] fArr6 = mesh.xOrg;
        float[] fArr7 = mesh.yOrg;
        float[] fArr8 = mesh.zOrg;
        float f37 = fArr6[i10] * f34;
        float f38 = fArr7[i10] * f35;
        float f39 = fArr8[i10] * f36;
        int i11 = i10 + 1;
        int i12 = i10 + 8;
        float f40 = f39;
        float f41 = f40;
        float f42 = f38;
        float f43 = f42;
        float f44 = f37;
        for (int i13 = i11; i13 < i12; i13++) {
            float f45 = fArr6[i13] * f34;
            float f46 = fArr7[i13] * f35;
            float f47 = fArr8[i13] * f36;
            if (f45 < f37) {
                f37 = f45;
            } else if (f45 > f44) {
                f44 = f45;
            }
            if (f46 < f42) {
                f42 = f46;
            } else if (f46 > f43) {
                f43 = f46;
            }
            if (f47 < f40) {
                f40 = f47;
            } else if (f47 > f41) {
                f41 = f47;
            }
        }
        return f31 + 1.0f >= f37 && f31 - 1.0f <= f44 && f32 + 1.0f >= f42 && f32 - 1.0f <= f43 && f33 + 1.0f >= f40 && f33 - 1.0f <= f41;
    }

    public void enableCollisionListeners() {
        this.disableListeners = false;
    }

    public void enableLazyTransformations() {
        this.lazyTransforms = true;
        if (this.transCacheDump == null) {
            this.transCacheDump = this.transCache;
        }
        if (this.invCacheDump == null) {
            this.invCacheDump = this.invCache;
        }
        this.transCache = null;
        this.invCache = null;
    }

    public void enlarge(int i10) {
        Vectors vectors;
        Mesh mesh;
        int[] iArr = this.texture;
        int length = iArr.length + i10;
        if (length <= iArr.length) {
            return;
        }
        Object3D object3D = new Object3D(length);
        Vectors vectors2 = object3D.objVectors;
        Mesh mesh2 = object3D.objMesh;
        int i11 = 0;
        while (true) {
            vectors = this.objVectors;
            if (i11 >= vectors.maxVectors) {
                break;
            }
            vectors2.nuOrg[i11] = vectors.nuOrg[i11];
            vectors2.nvOrg[i11] = vectors.nvOrg[i11];
            i11++;
        }
        vectors.nuOrg = vectors2.nuOrg;
        vectors.nvOrg = vectors2.nvOrg;
        vectors.maxVectors = vectors2.maxVectors;
        vectors.setMesh(this.objMesh);
        this.objMesh.maxVectors = mesh2.maxVectors;
        int i12 = 0;
        while (true) {
            mesh = this.objMesh;
            int[][] iArr2 = mesh.points;
            if (i12 >= iArr2.length) {
                break;
            }
            int[] iArr3 = mesh2.points[i12];
            int[] iArr4 = iArr2[i12];
            iArr3[0] = iArr4[0];
            iArr3[1] = iArr4[1];
            iArr3[2] = iArr4[2];
            i12++;
        }
        mesh.points = mesh2.points;
        int i13 = 0;
        while (true) {
            Mesh mesh3 = this.objMesh;
            float[] fArr = mesh3.xOrg;
            if (i13 >= fArr.length) {
                mesh3.xOrg = mesh2.xOrg;
                mesh3.yOrg = mesh2.yOrg;
                mesh3.zOrg = mesh2.zOrg;
                mesh3.nxOrg = mesh2.nxOrg;
                mesh3.nyOrg = mesh2.nyOrg;
                mesh3.nzOrg = mesh2.nzOrg;
                mesh3.coords = mesh2.coords;
                int[] iArr5 = this.texture;
                System.arraycopy(iArr5, 0, object3D.texture, 0, iArr5.length);
                this.texture = object3D.texture;
                return;
            }
            mesh2.xOrg[i13] = fArr[i13];
            mesh2.yOrg[i13] = mesh3.yOrg[i13];
            mesh2.zOrg[i13] = mesh3.zOrg[i13];
            mesh2.nxOrg[i13] = mesh3.nxOrg[i13];
            mesh2.nyOrg[i13] = mesh3.nyOrg[i13];
            mesh2.nzOrg[i13] = mesh3.nzOrg[i13];
            mesh2.coords[i13] = mesh3.coords[i13];
            i13++;
        }
    }

    public void forceGeometryIndices(boolean z10) {
        this.forcedIndexed = z10;
    }

    public RGBColor getAdditionalColor() {
        return this.addColorInstance;
    }

    public Animation getAnimationSequence() {
        return this.anim;
    }

    public SimpleVector getCenter() {
        return SimpleVector.create(this.centerX, this.centerY, this.centerZ);
    }

    public Iterator<CollisionListener> getCollisionListeners() {
        ArrayList<CollisionListener> arrayList = this.collisionListener;
        return arrayList != null ? arrayList.iterator() : new ArrayList(0).iterator();
    }

    public boolean getCulling() {
        return this.doCulling;
    }

    public int getEllipsoidMode() {
        return this.ellipsoidMode;
    }

    public int getID() {
        return this.number - 2;
    }

    public Matrix getInverseWorldTransformation() {
        Matrix matrix;
        Matrix worldTransformation = getWorldTransformation();
        if (this.lazyTransforms && (matrix = this.invCache) != null) {
            return matrix.cloneMatrix();
        }
        Matrix invert = worldTransformation.invert();
        if (!this.lazyTransforms) {
            return invert;
        }
        Matrix matrix2 = this.invCacheDump;
        if (matrix2 != null) {
            this.invCache = matrix2;
            this.invCacheDump = null;
            matrix2.setTo(invert);
            return invert;
        }
        this.invCache = invert.cloneMatrix();
        return invert;
    }

    public boolean getLazyTransformationState() {
        return this.lazyTransforms;
    }

    public int getLightCount() {
        if (this.nearestLights == null) {
            return 0;
        }
        int i10 = 0;
        while (true) {
            float[][] fArr = this.nearestLights;
            if (i10 >= fArr.length) {
                return fArr.length;
            }
            if (fArr[i10][0] == -9999.0f) {
                return i10;
            }
            i10++;
        }
    }

    public int getLighting() {
        return this.isLit ? 0 : 1;
    }

    public int getMaxLights() {
        return this.maxLights;
    }

    public Mesh getMesh() {
        return this.objMesh;
    }

    public String getName() {
        return this.name;
    }

    public OcTree getOcTree() {
        return this.ocTree;
    }

    public SimpleVector getOrigin() {
        return this.originMatrix.getTranslation();
    }

    public Matrix getOriginMatrix() {
        return this.originMatrix;
    }

    public Object3D[] getParents() {
        int i10 = this.parentCnt;
        Object3D[] object3DArr = new Object3D[i10];
        if (i10 != 0) {
            System.arraycopy(this.parent, 0, object3DArr, 0, i10);
        }
        return object3DArr;
    }

    public PolygonManager getPolygonManager() {
        if (this.polyManager == null) {
            this.polyManager = new PolygonManager(this);
        }
        return this.polyManager;
    }

    public final void getProjectedPoint(float f10, float f11, float f12, SimpleVector simpleVector, float[] fArr, Matrix matrix) {
        float[][] fArr2 = getWorldTransformation(matrix).mat;
        float[] fArr3 = fArr2[0];
        float f13 = fArr3[0];
        float[] fArr4 = fArr2[1];
        float f14 = fArr4[0];
        float f15 = fArr4[1];
        float[] fArr5 = fArr2[2];
        float f16 = fArr5[1];
        float f17 = fArr5[0];
        float f18 = fArr3[1];
        float f19 = fArr5[2];
        float f20 = fArr4[2];
        float f21 = fArr3[2];
        float[] fArr6 = fArr2[3];
        float f22 = fArr6[0];
        float f23 = (f13 * f10) + (f14 * f11) + (f12 * f17) + f22;
        float f24 = (f10 * f18) + (f15 * f11) + (f12 * f16) + fArr6[1];
        float f25 = (f21 * f10) + (f20 * f11) + (f12 * f19) + fArr6[2];
        if (simpleVector != null) {
            simpleVector.f83625x = f23;
            simpleVector.f83626y = f24;
            simpleVector.f83627z = f25;
        }
        if (fArr != null) {
            fArr[0] = f23;
            fArr[1] = f24;
            fArr[2] = f25;
        }
    }

    public IRenderHook getRenderHook() {
        return this.renderHook;
    }

    public Matrix getRotationMatrix() {
        return this.rotationMatrix;
    }

    public SimpleVector getRotationPivot() {
        return SimpleVector.create(this.xRotationCenter, this.yRotationCenter, this.zRotationCenter);
    }

    public float getScale() {
        return this.scaleFactor;
    }

    public GLSLShader getShader() {
        return this.shader;
    }

    public GLSLShader getShaderInternal() {
        World world;
        GLSLShader gLSLShader;
        GLSLShader gLSLShader2 = this.shader;
        return (gLSLShader2 != null || (world = this.myWorld) == null || (gLSLShader = world.globalShader) == null) ? gLSLShader2 : gLSLShader;
    }

    public Matrix getTextureMatrix() {
        return this.textureMatrix;
    }

    public SimpleVector getTransformedCenter() {
        return getTransformedCenter(new SimpleVector());
    }

    public SimpleVector getTranslation() {
        return this.translationMatrix.getTranslation();
    }

    public Matrix getTranslationMatrix() {
        return this.translationMatrix;
    }

    public int getTransparency() {
        if (this.isTrans) {
            return this.transValue;
        }
        return -1;
    }

    public int getTransparencyMode() {
        return this.transMode;
    }

    public Object getUserObject() {
        return this.userObj;
    }

    public Virtualizer getVirtualizer() {
        return this.virtualizer;
    }

    public boolean getVisibility() {
        return this.isVisible;
    }

    public Matrix getWorldTransformation() {
        Matrix matrix;
        if (this.lazyTransforms && (matrix = this.transCache) != null) {
            return matrix.cloneMatrix();
        }
        Matrix matrix2 = new Matrix();
        float[] fArr = matrix2.mat[3];
        float[] fArr2 = this.translationMatrix.mat[3];
        float[] fArr3 = this.originMatrix.mat[3];
        fArr[0] = -this.xRotationCenter;
        fArr[1] = -this.yRotationCenter;
        fArr[2] = -this.zRotationCenter;
        if (!this.isBillBoard) {
            matrix2.matMul(this.rotationMatrix);
        } else {
            World world = this.myWorld;
            if (world == null) {
                return new Matrix();
            }
            this.mat2 = world.camera.backMatrix;
            Matrix tmpMatrix = getTmpMatrix(1);
            this.mat2.invert(tmpMatrix);
            tmpMatrix.scalarMul(this.scaleFactor);
            matrix2.matMul(tmpMatrix);
        }
        matrix2.translate(this.xRotationCenter + fArr2[0] + fArr3[0], this.yRotationCenter + fArr2[1] + fArr3[1], this.zRotationCenter + fArr2[2] + fArr3[2]);
        if (this.parentCnt != 0) {
            if (this.isBillBoard) {
                matrix2 = recurseObjectsBillboarded(matrix2);
            } else {
                matrix2 = recurseObjects(matrix2);
            }
        }
        if (!this.lazyTransforms) {
            return matrix2;
        }
        Matrix matrix3 = this.transCacheDump;
        if (matrix3 != null) {
            this.transCache = matrix3;
            this.transCacheDump = null;
            matrix3.setTo(matrix2);
            return matrix2;
        }
        this.transCache = matrix2.cloneMatrix();
        return matrix2;
    }

    public SimpleVector getXAxis() {
        SimpleVector xAxis = this.rotationMatrix.getXAxis();
        xAxis.scalarMul(1.0f / this.scaleFactor);
        return xAxis;
    }

    public SimpleVector getYAxis() {
        SimpleVector yAxis = this.rotationMatrix.getYAxis();
        yAxis.scalarMul(1.0f / this.scaleFactor);
        return yAxis;
    }

    public SimpleVector getZAxis() {
        SimpleVector zAxis = this.rotationMatrix.getZAxis();
        zAxis.scalarMul(1.0f / this.scaleFactor);
        return zAxis;
    }

    public boolean hasChild(Object3D object3D) {
        if (object3D != null) {
            return object3D.hasParent(this);
        }
        Logger.log("Testing a null-Object3D for being a child is rather senseless!", 1);
        return false;
    }

    public boolean hasParent(Object3D object3D) {
        if (object3D == null) {
            Logger.log("Testing a null-Object3D for being a parent is rather senseless!", 1);
            return false;
        }
        for (int i10 = 0; i10 < this.parentCnt; i10++) {
            if (this.parent[i10].number == object3D.number) {
                return true;
            }
        }
        return false;
    }

    public boolean hasVertexAlpha() {
        return this.objVectors.alpha != null;
    }

    public void invert() {
        int i10 = 0;
        while (true) {
            Mesh mesh = this.objMesh;
            if (i10 >= mesh.anzTri) {
                return;
            }
            int[] iArr = mesh.points[i10];
            int i11 = iArr[0];
            int i12 = iArr[2];
            int[] iArr2 = mesh.coords;
            int i13 = iArr2[i11];
            iArr2[i11] = iArr2[i12];
            iArr2[i12] = i13;
            Vectors vectors = this.objVectors;
            float[] fArr = vectors.nuOrg;
            float f10 = fArr[i11];
            fArr[i11] = fArr[i12];
            fArr[i12] = f10;
            float[] fArr2 = vectors.nvOrg;
            float f11 = fArr2[i11];
            fArr2[i11] = fArr2[i12];
            fArr2[i12] = f11;
            i10++;
        }
    }

    public void invertCulling(boolean z10) {
        this.reverseCulling = z10;
    }

    public boolean isCompiled() {
        ArrayList<CompiledInstance> arrayList = this.compiled;
        return (arrayList == null || arrayList == null || arrayList.size() <= 0) ? false : true;
    }

    public boolean isEnvmapped() {
        return this.isEnvmapped;
    }

    public boolean isTransparent() {
        return this.isTrans;
    }

    public void notifyCollisionListeners(int i10, int i11, Object3D[] object3DArr, SimpleVector simpleVector) {
        notifyCollisionListeners(null, i10, i11, object3DArr, simpleVector);
    }

    public float rayIntersectsAABB(SimpleVector simpleVector, SimpleVector simpleVector2, boolean z10) {
        return rayIntersectsAABB(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, z10);
    }

    public void reallyStrip() {
        this.toStrip = false;
        this.hasBeenStripped = true;
        if (!this.dynamic && this.staticUV) {
            this.objVectors.strip();
            this.objMesh.strongStrip(this.myWorld, this);
        }
        if (this.compiled == null || !Config.aggressiveStripping) {
            return;
        }
        this.oneTextureSet = true;
        int[][] iArr = this.multiTex;
        int length = (iArr != null ? iArr.length : 0) + 1;
        int[] iArr2 = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr2[i10] = -111;
        }
        Iterator<CompiledInstance> it = this.compiled.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int i11 = it.next().polyIndex;
            int i12 = this.texture[i11];
            int i13 = iArr2[0];
            if (i12 != i13 && i13 != -111) {
                this.oneTextureSet = false;
                break;
            }
            iArr2[0] = i12;
            if (this.multiTex != null) {
                int i14 = 0;
                while (true) {
                    int[][] iArr3 = this.multiTex;
                    if (i14 < iArr3.length) {
                        int i15 = i14 + 1;
                        int i16 = iArr2[i15];
                        int i17 = iArr3[i14][i11];
                        if (i16 != i17 && i16 != -111) {
                            this.oneTextureSet = false;
                            break;
                        } else {
                            iArr2[i15] = i17;
                            i14 = i15;
                        }
                    }
                }
            }
        }
        if (!this.oneTextureSet) {
            Logger.log("Object '" + getName() + "' uses multiple texture sets!");
            return;
        }
        Logger.log("Object '" + getName() + "' uses one texture set!");
        this.texture = r2;
        int[] iArr4 = {iArr2[0]};
        int[][] iArr5 = this.multiTex;
        if (iArr5 == null) {
            return;
        }
        this.multiTex = (int[][]) Array.newInstance(Integer.TYPE, iArr5.length, 1);
        int i18 = 0;
        while (true) {
            int[][] iArr6 = this.multiTex;
            if (i18 >= iArr6.length) {
                return;
            }
            int[] iArr7 = iArr6[i18];
            i18++;
            iArr7[0] = iArr2[i18];
        }
    }

    public void removeChild(Object3D object3D) {
        if (object3D != null) {
            object3D.removeParent(this);
        } else {
            Logger.log("Tried to remove a non-existent Object3D from the child collection!", 0);
        }
    }

    public synchronized void removeCollisionListener(CollisionListener collisionListener) {
        ArrayList<CollisionListener> arrayList = this.collisionListener;
        if (arrayList != null) {
            arrayList.remove(collisionListener);
            globalListenerCount--;
            if (this.collisionListener.size() == 0) {
                this.collisionListener = null;
            }
        }
    }

    public void removeParent(Object3D object3D) {
        if (object3D == null) {
            Logger.log("Tried to remove a non-existent object from the parent collection!", 0);
            return;
        }
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            int i11 = this.parentCnt;
            if (i10 >= i11) {
                break;
            }
            if (this.parent[i10].number == object3D.number) {
                z10 = true;
                if (i10 != i11 - 1) {
                    int i12 = i10;
                    while (i12 < this.parentCnt - 1) {
                        Object3D[] object3DArr = this.parent;
                        int i13 = i12 + 1;
                        object3DArr[i12] = object3DArr[i13];
                        i12 = i13;
                    }
                }
                this.parentCnt--;
            }
            i10++;
        }
        if (z10) {
            return;
        }
        Logger.log("Tried to remove an object from the parent collection that isn't part of it!", 0);
    }

    public final void render() {
        Object3D object3D;
        float f10;
        Lights lights = !this.isLit ? DUMMY_LIGHTS : this.myWorld.lights;
        int i10 = lights.lightCnt;
        VisList visList = this.myWorld.visList;
        char c10 = 2;
        if (this.nearestLights == null) {
            this.nearestLights = (float[][]) Array.newInstance(Float.TYPE, 8, 7);
        }
        float[][] fArr = this.nearestLights;
        fArr[0][0] = -9999.0f;
        fArr[1][0] = -9999.0f;
        fArr[2][0] = -9999.0f;
        char c11 = 3;
        fArr[3][0] = -9999.0f;
        char c12 = 4;
        fArr[4][0] = -9999.0f;
        fArr[5][0] = -9999.0f;
        fArr[6][0] = -9999.0f;
        fArr[7][0] = -9999.0f;
        if (this.isLit && i10 > 0) {
            ArrayList<float[]> arrayList = lightsList;
            arrayList.clear();
            if (litData.length < i10) {
                litData = (float[][]) Array.newInstance(Float.TYPE, i10, 2);
            }
            SimpleVector simpleVector = null;
            int i11 = 0;
            while (true) {
                f10 = -1.0f;
                if (i11 >= i10) {
                    break;
                }
                if (lights.isVisible[i11]) {
                    if (simpleVector == null) {
                        fillTransformedCenter(tempTC);
                        simpleVector = tempTC;
                    }
                    float f11 = lights.distanceOverride[i11];
                    if (f11 == -1.0f) {
                        tempCS.set(lights.xOrg[i11], lights.yOrg[i11], lights.zOrg[i11]);
                        f11 = simpleVector.lengthBetween(tempCS);
                    }
                    float f12 = lights.discardDistance[i11];
                    if (f11 > f12) {
                        if (f12 < 0.0f) {
                            float f13 = Config.lightDiscardDistance;
                            if (f13 >= 0.0f && f13 <= f11) {
                            }
                        }
                    }
                    if (i10 > 8) {
                        for (int i12 = 0; i12 < arrayList.size(); i12++) {
                            if (f11 < arrayList.get(i12)[0]) {
                                float[] fArr2 = litData[i11];
                                fArr2[0] = f11;
                                fArr2[1] = i11;
                                arrayList.add(i12, fArr2);
                                break;
                            }
                        }
                    }
                    float[] fArr3 = litData[i11];
                    fArr3[0] = f11;
                    fArr3[1] = i11;
                    arrayList.add(fArr3);
                }
                i11++;
                c10 = 2;
                c11 = 3;
                c12 = 4;
            }
            int i13 = this.maxLights;
            if (i13 > arrayList.size()) {
                i13 = arrayList.size();
            }
            int i14 = 0;
            while (i14 < i13) {
                int i15 = (int) arrayList.get(i14)[1];
                float attenuation = lights.getAttenuation(i15);
                if (attenuation != f10 && attenuation < 0.0f && Config.fadeoutLight) {
                    attenuation = Config.linearDiv;
                }
                float[] fArr4 = this.nearestLights[i14];
                fArr4[0] = attenuation;
                fArr4[1] = lights.xTr[i15];
                fArr4[c10] = -lights.yTr[i15];
                fArr4[c11] = -lights.zTr[i15];
                fArr4[c12] = lights.rOrg[i15] / 255.0f;
                fArr4[5] = lights.gOrg[i15] / 255.0f;
                fArr4[6] = lights.bOrg[i15] / 255.0f;
                i14++;
                f10 = -1.0f;
            }
        }
        if (this.dynamic && this.modified) {
            visList.addToFill(this);
            Object3D object3D2 = this.shareWith;
            if (object3D2 != null) {
                object3D2.modified = true;
            }
        }
        if (this.dynamic && (object3D = this.shareWith) != null && object3D.modified) {
            visList.addToFill(object3D);
        }
    }

    public void resetCollisionStatus() {
        this.wasCollider = false;
    }

    public void resetPolygonIDCount() {
        this.pIDCount = 0;
        this.lastAddedID = -1;
    }

    public final SimpleVector reverseTransform(Matrix matrix, SimpleVector simpleVector, boolean z10) {
        float[][] fArr = getWorldTransformation(matrix).mat;
        float[] fArr2 = fArr[0];
        float f10 = fArr2[0];
        float[] fArr3 = fArr[1];
        float f11 = fArr3[0];
        float f12 = fArr3[1];
        float[] fArr4 = fArr[2];
        float f13 = fArr4[1];
        float f14 = fArr4[0];
        float f15 = fArr2[1];
        float f16 = fArr4[2];
        float f17 = fArr3[2];
        float f18 = fArr2[2];
        float[] fArr5 = fArr[3];
        float f19 = fArr5[0];
        float f20 = fArr5[1];
        float f21 = fArr5[2];
        float f22 = simpleVector.f83625x;
        float f23 = simpleVector.f83626y;
        float f24 = (f10 * f22) + (f11 * f23);
        float f25 = simpleVector.f83627z;
        float f26 = f24 + (f14 * f25);
        float f27 = (f15 * f22) + (f12 * f23) + (f13 * f25);
        float f28 = (f22 * f18) + (f23 * f17) + (f25 * f16);
        if (z10) {
            f26 += f19;
            f27 += f20;
            f28 += f21;
        }
        simpleVector.set(f26, f27, f28);
        return simpleVector;
    }

    public void rotateAxis(SimpleVector simpleVector, float f10) {
        this.rotationMatrix.rotateAxis(simpleVector, f10);
    }

    public void rotateMesh() {
        this.objMesh.rotateMesh(this.rotationMatrix, this.xRotationCenter, this.yRotationCenter, this.zRotationCenter, this.scaleFactor);
        Animation animation = this.anim;
        if (animation != null) {
            animation.rotateMesh(this.rotationMatrix, this.xRotationCenter, this.yRotationCenter, this.zRotationCenter, this.scaleFactor);
        }
        this.skipPivot = false;
        calcBoundingBox();
    }

    public void rotateX(float f10) {
        this.rotationMatrix.rotateX(f10);
    }

    public void rotateY(float f10) {
        this.rotationMatrix.rotateY(f10);
    }

    public void rotateZ(float f10) {
        this.rotationMatrix.rotateZ(f10);
    }

    public void scale(float f10) {
        if (f10 <= 0.0f) {
            Logger.log("Scale has to be greater than zero!", 0);
        } else {
            this.scaleFactor *= f10;
            this.rotationMatrix.scalarMul(f10);
        }
    }

    public void setAdditionalColor(RGBColor rGBColor) {
        int red = rGBColor.getRed();
        int green = rGBColor.getGreen();
        int blue = rGBColor.getBlue();
        this.addColorInstance = rGBColor;
        if (red < 0 || red >= 256 || green < 0 || green >= 256 || blue < 0 || blue >= 256) {
            Logger.log("Color values need to be in the range of [0..255]!", 0);
            return;
        }
        this.addColorR = red;
        this.addColorG = green;
        this.addColorB = blue;
    }

    public void setAnimationSequence(Animation animation) {
        if (animation == null) {
            this.anim = null;
            return;
        }
        if (this.hasBeenBuild && !this.dynamic) {
            Logger.log("You are adding an Animation to an Object3D that has already been build in static mode. Consider to use { calcNormals(); calcBoundingBox(); } instead of build() and call build() only after the animation has been set.", 1);
        }
        if (animation.aktFrames == 0) {
            Logger.log("This Animation is empty!", 0);
            return;
        }
        if (animation.keyFrames[0].anzCoords == this.objMesh.anzCoords) {
            this.anim = animation;
            animation.validate(this);
            return;
        }
        Logger.log("The sizes of the Animation's Meshes (" + animation.keyFrames[0].anzCoords + ") and the object's Mesh (" + this.objMesh.anzCoords + ") don't match!", 0);
    }

    public void setBillboarding(boolean z10) {
        this.isBillBoard = z10;
    }

    public void setBoundingBox(float f10, float f11, float f12, float f13, float f14, float f15) {
        Mesh mesh = this.objMesh;
        int i10 = mesh.obbStart;
        if (i10 != 0) {
            mesh.anzCoords = i10;
            mesh.obbStart = 0;
            mesh.obbEnd = 0;
        }
        Vectors vectors = this.objVectors;
        if (vectors != null) {
            mesh.obbStart = vectors.addVertex(f10, f12, f14);
            this.objVectors.addVertex(f10, f12, f15);
            this.objVectors.addVertex(f11, f12, f14);
            this.objVectors.addVertex(f11, f12, f15);
            this.objVectors.addVertex(f11, f13, f14);
            this.objVectors.addVertex(f11, f13, f15);
            this.objVectors.addVertex(f10, f13, f14);
            this.objMesh.obbEnd = this.objVectors.addVertex(f10, f13, f15);
            this.hasBoundingBox = true;
        }
    }

    public void setCenter(SimpleVector simpleVector) {
        this.centerX = simpleVector.f83625x;
        this.centerY = simpleVector.f83626y;
        this.centerZ = simpleVector.f83627z;
    }

    public void setCollisionMode(int i10) {
        if (i10 == 0) {
            this.isPotentialCollider = false;
            this.mayCollide = false;
            return;
        }
        if ((i10 & 1) == 1) {
            this.isPotentialCollider = true;
        } else {
            this.isPotentialCollider = false;
        }
        if ((i10 & 2) == 2) {
            this.mayCollide = true;
        } else {
            this.mayCollide = false;
        }
    }

    public void setCollisionOptimization(boolean z10) {
        if (this.largestPolygonSize == -1.0f) {
            this.largestPolygonSize = this.objMesh.getLargestCoveredDistance();
        }
        this.optimizeColDet = z10;
    }

    public void setCulling(boolean z10) {
        this.doCulling = z10;
    }

    public void setEllipsoidMode(int i10) {
        this.ellipsoidMode = i10;
    }

    public void setEnvmapped(boolean z10) {
        this.isEnvmapped = z10;
    }

    public void setFixedPointMode(boolean z10) {
        this.fixedPointMode = z10;
    }

    public void setLighting(int i10) {
        if (i10 == 0) {
            this.isLit = true;
        }
        if (i10 == 1) {
            this.isLit = false;
        }
    }

    public void setMaxLights(int i10) {
        this.maxLights = Math.min(Math.max(i10, 0), 8);
    }

    public void setMesh(Mesh mesh) {
        this.objMesh = mesh;
        Vectors vectors = this.objVectors;
        if (vectors != null) {
            vectors.setMesh(mesh);
        }
    }

    public void setName(String str) {
        World world = this.myWorld;
        if (world == null || world.getInternalObjectByName(str) == null) {
            this.name = str;
            return;
        }
        Logger.log("Object with name '" + str + "' already exists!", 0);
    }

    public void setOcTree(OcTree ocTree) {
        this.ocTree = ocTree;
    }

    public void setOrientation(SimpleVector simpleVector, SimpleVector simpleVector2) {
        float scale = getScale();
        setScale(1.0f);
        this.rotationMatrix.setOrientation(simpleVector, simpleVector2);
        setScale(scale);
    }

    public void setOrigin(SimpleVector simpleVector) {
        this.originMatrix.setIdentity();
        this.originMatrix.translate(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
    }

    public void setRenderHook(IRenderHook iRenderHook) {
        this.renderHook = iRenderHook;
    }

    public void setRotationMatrix(Matrix matrix) {
        this.rotationMatrix = matrix;
    }

    public void setRotationPivot(SimpleVector simpleVector) {
        this.xRotationCenter = simpleVector.f83625x;
        this.yRotationCenter = simpleVector.f83626y;
        this.zRotationCenter = simpleVector.f83627z;
    }

    public void setScale(float f10) {
        float f11 = this.scaleFactor;
        if (f11 == 0.0f || f10 <= 0.0f) {
            Logger.log("Invalid scale!", 0);
            return;
        }
        float f12 = f10 / f11;
        if (f12 < 1.0E-4f) {
            f12 = 1.0E-4f;
        }
        scale(f12);
    }

    public void setShader(GLSLShader gLSLShader) {
        this.shader = gLSLShader;
    }

    public void setShadingMode(int i10) {
        this.isFlatShaded = false;
        if (i10 == 1) {
            this.isFlatShaded = true;
        }
    }

    public void setSortOffset(float f10) {
        this.sortOffset = f10;
    }

    public void setSpecularLighting(boolean z10) {
        this.doSpecularLighting = z10;
    }

    public void setTexture(String str) {
        int textureID = TextureManager.getInstance().getTextureID(str);
        if (textureID != -1) {
            int length = this.texture.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.texture[i10] = textureID;
            }
            return;
        }
        Logger.log("Tried to set an undefined texture!", 0);
    }

    public void setTextureMatrix(Matrix matrix) {
        this.textureMatrix = matrix;
    }

    public void setTranslationMatrix(Matrix matrix) {
        this.translationMatrix = matrix;
    }

    public void setTransparency(int i10) {
        this.transValue = i10;
        if (i10 >= 0) {
            this.isTrans = true;
        } else {
            this.isTrans = false;
        }
    }

    public void setTransparencyMode(int i10) {
        this.transMode = i10;
    }

    public void setUserObject(Object obj) {
        this.userObj = obj;
    }

    public void setVirtualizer(Virtualizer virtualizer) {
        this.virtualizer = virtualizer;
    }

    public void setVisibility(boolean z10) {
        this.isVisible = z10;
    }

    public void shareCompiledData(Object3D object3D) {
        if (object3D.shareWith != null) {
            Logger.log("Can't enable share data with an object that shares data itself! Use the source object instead!", 0);
            return;
        }
        if (this.sharing) {
            Logger.log("This object already shares data with '" + object3D.getName() + "'", 0);
            return;
        }
        if (object3D.ocTree != null || this.ocTree != null) {
            Logger.log("No data sharing with octrees supported!", 0);
        } else if (object3D.objMesh != this.objMesh) {
            Logger.log("Can't share data from different meshes!", 0);
        } else {
            this.shareWith = object3D;
        }
    }

    public void shareTextureData(Object3D object3D) {
        this.texture = object3D.texture;
        this.multiTex = object3D.multiTex;
        this.multiMode = object3D.multiMode;
    }

    public boolean sphereIntersectsAABB(SimpleVector simpleVector, float f10) {
        return sphereIntersectsAABB(simpleVector.toArray(), f10);
    }

    public void strip() {
        ArrayList<CompiledInstance> arrayList = this.compiled;
        if (arrayList != null && arrayList.size() > 0) {
            reallyStrip();
        }
        this.toStrip = true;
    }

    public void touch() {
        if (this.dynamic) {
            this.modified = true;
        }
        if (this.lazyTransforms) {
            enableLazyTransformations();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01bd A[LOOP:0: B:22:0x011a->B:36:0x01bd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x019f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0291 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0183  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean transformVertices(FrameBuffer frameBuffer) {
        int i10;
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        float[] fArr;
        int i19;
        int i20;
        boolean z11;
        float f10;
        float f11;
        Camera camera = this.myWorld.camera;
        float f12 = camera.divx;
        float f13 = camera.divy;
        float f14 = Config.nearPlane;
        Matrix matrix = this.mat5;
        float[][] fArr2 = matrix.mat;
        this.mat2 = camera.backMatrix;
        Mesh mesh = this.objMesh;
        float[] fArr3 = mesh.zOrg;
        float[] fArr4 = mesh.xOrg;
        float[] fArr5 = mesh.yOrg;
        if (!this.lazyTransforms || this.isBillBoard) {
            Matrix matrix2 = matBill;
            matrix.setIdentity();
            float[] fArr6 = fArr2[3];
            float[] fArr7 = this.translationMatrix.mat[3];
            float[] fArr8 = this.originMatrix.mat[3];
            fArr6[0] = -this.xRotationCenter;
            fArr6[1] = -this.yRotationCenter;
            fArr6[2] = -this.zRotationCenter;
            if (this.isBillBoard) {
                if (matrix2 == null) {
                    matrix2 = new Matrix();
                    matBill = matrix2;
                }
                this.mat2.invert3x3(matrix2);
                matrix2.scalarMul(this.scaleFactor);
                matrix.matMul(matrix2);
            } else {
                matrix.matMul(this.rotationMatrix);
            }
            matrix.translate(this.xRotationCenter + fArr7[0] + fArr8[0], this.yRotationCenter + fArr7[1] + fArr8[1], this.zRotationCenter + fArr7[2] + fArr8[2]);
            if (this.parentCnt != 0) {
                matrix = this.isBillBoard ? recurseObjectsBillboarded(matrix) : recurseObjects(matrix);
            }
        } else {
            getWorldTransformation(matrix);
        }
        this.transBuffer.setTo(matrix);
        Camera camera2 = this.myWorld.camera;
        matrix.translate(-camera2.backBx, -camera2.backBy, -camera2.backBz);
        matrix.matMul(this.mat2);
        float[] fArr9 = fArr2[0];
        float f15 = fArr9[0];
        float f16 = fArr9[1];
        float f17 = fArr9[2];
        float[] fArr10 = fArr2[1];
        float f18 = fArr10[0];
        float f19 = fArr10[1];
        float f20 = fArr10[2];
        float[] fArr11 = fArr2[2];
        float f21 = fArr11[1];
        float f22 = fArr11[2];
        float f23 = fArr11[0];
        float[] fArr12 = fArr2[3];
        float f24 = fArr12[0];
        float f25 = fArr12[1];
        float f26 = fArr12[2];
        OcTree ocTree = this.ocTree;
        boolean z12 = ocTree != null && ocTree.getRenderingUse();
        if (z12) {
            i10 = this.ocTree.getVisibleLeafs(matrix, f12, f13);
            if (i10 == 0) {
                return true;
            }
        } else {
            i10 = 0;
        }
        if (this.hasBoundingBox) {
            Mesh mesh2 = this.objMesh;
            int i21 = mesh2.obbStart;
            int i22 = mesh2.obbEnd;
            if (i21 <= (i22 + 1) - i21) {
                i12 = i21 - 1;
                i21 = 0;
            } else {
                i12 = i22;
            }
            i11 = i10;
            int i23 = i21;
            int i24 = 0;
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            while (true) {
                if (i23 > i12) {
                    i13 = i24;
                    i14 = i25;
                    i15 = i26;
                    i16 = i27;
                    i17 = i28;
                    i18 = i29;
                    break;
                }
                float f27 = fArr3[i23];
                float f28 = fArr4[i23];
                float f29 = fArr5[i23];
                float f30 = (f28 * f15) + (f29 * f18) + (f27 * f23) + f24;
                float f31 = (f28 * f16) + (f29 * f19) + (f27 * f21) + f25;
                float f32 = (f28 * f17) + (f29 * f20) + (f27 * f22) + f26;
                if (f32 < f14) {
                    i24++;
                } else if (f32 > Config.farPlane) {
                    i25++;
                } else {
                    fArr = fArr5;
                    i19 = i25;
                    i20 = i24;
                    z11 = false;
                    f10 = f32 * f12;
                    float f33 = f12;
                    if (f30 >= (-f10)) {
                        i26++;
                    } else {
                        if (f30 > f10) {
                            i27++;
                        }
                        f11 = f32 * f13;
                        if (f31 < (-f11)) {
                            i28++;
                        } else {
                            if (f31 > f11) {
                                i29++;
                            }
                            if (z11) {
                                i13 = i20;
                                i15 = i26;
                                i16 = i27;
                                i17 = i28;
                                i18 = i29;
                                i14 = i19;
                                break;
                            }
                            i23++;
                            i24 = i20;
                            i25 = i19;
                            fArr5 = fArr;
                            f12 = f33;
                        }
                        z11 = true;
                        if (z11) {
                        }
                    }
                    z11 = true;
                    f11 = f32 * f13;
                    if (f31 < (-f11)) {
                    }
                    z11 = true;
                    if (z11) {
                    }
                }
                fArr = fArr5;
                i19 = i25;
                i20 = i24;
                z11 = true;
                f10 = f32 * f12;
                float f332 = f12;
                if (f30 >= (-f10)) {
                }
                z11 = true;
                f11 = f32 * f13;
                if (f31 < (-f11)) {
                }
                z11 = true;
                if (z11) {
                }
            }
            int i30 = (i12 + 1) - i21;
            if (i18 == i30 || i16 == i30 || i17 == i30 || i15 == i30 || i13 == i30 || i14 == i30) {
                z10 = true;
                if (!z10) {
                    return z10;
                }
                this.object3DRendered = true;
                if (z12) {
                    if (this.sectors == null) {
                        this.sectors = new HashSet<>(1);
                    }
                    this.sectors.clear();
                    OcTreeNode[] leafList = this.ocTree.getLeafList();
                    int i31 = i11;
                    for (int i32 = 0; i32 < i31; i32++) {
                        this.sectors.add(IntegerC.valueOf(leafList[i32].getID()));
                    }
                }
                int size = this.compiled.size();
                for (int i33 = 0; i33 < size; i33++) {
                    Object3D object3D = this.shareWith;
                    CompiledInstance compiledInstance = object3D != null ? object3D.compiled.get(i33) : this.compiled.get(i33);
                    if ((!z12 || compiledInstance.getTreeID() == -1) ? true : this.sectors.contains(IntegerC.valueOf(compiledInstance.getTreeID()))) {
                        if (this.isTrans || !Config.stateOrientedSorting) {
                            this.myWorld.visList.addToList(this, (this.centerX * f17) + (this.centerY * f20) + (this.centerZ * f22) + f26, i33, compiledInstance);
                        } else {
                            int[] iArr = this.texture;
                            float f34 = (iArr.length > 1 ? iArr[compiledInstance.polyIndex] : iArr[0]) + 10000;
                            if (this.shader != null) {
                                f34 += r8.f83616id * 1000;
                            }
                            if (f34 > 990000.0f) {
                                f34 -= 1000000.0f;
                            }
                            this.myWorld.visList.addToList(this, f34, i33, compiledInstance);
                        }
                    }
                }
                return false;
            }
        } else {
            i11 = i10;
        }
        z10 = false;
        if (!z10) {
        }
    }

    public void translate(SimpleVector simpleVector) {
        this.translationMatrix.translate(simpleVector);
    }

    public void translateMesh() {
        this.objMesh.translateMesh(this.translationMatrix, this.originMatrix);
        Animation animation = this.anim;
        if (animation != null) {
            animation.translateMesh(this.translationMatrix, this.originMatrix);
        }
        this.skipPivot = false;
        calcBoundingBox();
    }

    public boolean wasTargetOfLastCollision() {
        return this.wasCollider;
    }

    public boolean wasVisible() {
        return this.object3DRendered;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0273 A[LOOP:1: B:26:0x011a->B:40:0x0273, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x024f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final float collide(float[] fArr, float[] fArr2, float f10, float f11, boolean z10) {
        int i10;
        Object[] objArr;
        boolean z11;
        OcTreeNode[] ocTreeNodeArr;
        float f12;
        OcTreeNode[] ocTreeNodeArr2;
        int i11;
        float f13;
        int i12;
        int i13;
        char c10;
        char c11;
        boolean z12;
        createCollisionArrays();
        float f14 = Config.collideOffset;
        if (this.optimizeColDet) {
            float f15 = this.largestPolygonSize;
            if (f15 != -1.0f && z10) {
                float f16 = f15 + 2.0f + f10;
                if (f16 < f14) {
                    f14 = f16;
                }
            }
        }
        float[][] fArr3 = getInverseWorldTransformation(this.mat6).mat;
        int i14 = 0;
        float[] fArr4 = fArr3[0];
        float f17 = fArr4[0];
        float[] fArr5 = fArr3[1];
        float f18 = fArr5[0];
        float f19 = fArr5[1];
        float[] fArr6 = fArr3[2];
        float f20 = fArr6[1];
        float f21 = fArr6[0];
        float f22 = fArr4[1];
        float f23 = fArr6[2];
        float f24 = fArr5[2];
        float f25 = fArr4[2];
        float[] fArr7 = fArr3[3];
        float f26 = fArr7[0];
        float f27 = fArr7[1];
        float f28 = fArr7[2];
        float[] fArr8 = dirCol;
        float f29 = fArr2[0] * f17;
        float f30 = fArr2[1];
        float f31 = fArr2[2];
        fArr8[0] = f29 + (f30 * f18) + (f31 * f21);
        float f32 = fArr2[0];
        fArr8[1] = (f32 * f22) + (f30 * f19) + (f31 * f20);
        fArr8[2] = (f32 * f25) + (fArr2[1] * f24) + (f31 * f23);
        float f33 = fArr[0];
        float f34 = fArr[1];
        float f35 = (f17 * f33) + (f18 * f34);
        float f36 = fArr[2];
        float f37 = f35 + (f21 * f36) + f26;
        float f38 = (f22 * f33) + (f19 * f34) + (f20 * f36) + f27;
        float f39 = (f33 * f25) + (f34 * f24) + (f36 * f23) + f28;
        float[] fArr9 = origCol;
        fArr9[0] = f37;
        fArr9[1] = f38;
        fArr9[2] = f39;
        OcTree ocTree = this.ocTree;
        if (ocTree == null || !ocTree.getCollisionUse()) {
            i10 = 0;
            objArr = null;
        } else {
            OcTree ocTree2 = this.ocTree;
            float[] fArr10 = origCol;
            objArr = ocTree2.getColliderLeafs(fArr10[0], fArr10[1], fArr10[2], (f11 + f10) * ocTree2.getRadiusMultiplier());
            i10 = ((Integer) objArr[0]).intValue();
            if (i10 == 0) {
                return 1.0E12f;
            }
        }
        int i15 = this.objMesh.anzTri;
        OcTree ocTree3 = this.ocTree;
        if (ocTree3 == null || !ocTree3.getCollisionUse()) {
            z11 = false;
            ocTreeNodeArr = null;
        } else {
            ocTreeNodeArr = (OcTreeNode[]) objArr[1];
            z11 = true;
        }
        Mesh mesh = this.objMesh;
        int[] iArr = mesh.coords;
        float[] fArr11 = mesh.xOrg;
        float[] fArr12 = mesh.yOrg;
        float[] fArr13 = mesh.zOrg;
        int i16 = 0;
        boolean z13 = false;
        float f40 = 1.0E12f;
        int i17 = i15;
        int[] iArr2 = null;
        int i18 = -1;
        while (true) {
            if (z11) {
                iArr2 = ocTreeNodeArr[i16].getPolygons();
                i17 = ocTreeNodeArr[i16].getPolyCount();
                i16++;
            }
            int i19 = i17;
            int i20 = i16;
            int[][] iArr3 = this.objMesh.points;
            float f41 = f14 * f14;
            int i21 = i14;
            while (true) {
                if (i21 >= i19) {
                    f12 = f14;
                    ocTreeNodeArr2 = ocTreeNodeArr;
                    i11 = i14;
                    f13 = f37;
                    i12 = i19;
                    i13 = i18;
                    c10 = 2;
                    c11 = '\ud4a5';
                    break;
                }
                int i22 = z11 ? iArr2[i21] : i21;
                int[] iArr4 = iArr3[i22];
                int i23 = iArr[iArr4[i14]];
                float f42 = fArr11[i23];
                float f43 = fArr12[i23];
                float f44 = fArr13[i23];
                float f45 = f42 - f37;
                float f46 = f43 - f38;
                float f47 = f44 - f39;
                c11 = '\ud4a5';
                if (f11 == 1.0E12f || (f45 * f45 <= f41 && f46 * f46 <= f41 && f47 * f47 <= f41)) {
                    int i24 = iArr[iArr4[2]];
                    int i25 = iArr[iArr4[1]];
                    float[] fArr14 = edge1Col;
                    fArr14[i14] = fArr11[i25] - f42;
                    fArr14[1] = fArr12[i25] - f43;
                    fArr14[2] = fArr13[i25] - f44;
                    float[] fArr15 = edge2Col;
                    fArr15[0] = fArr11[i24] - f42;
                    fArr15[1] = fArr12[i24] - f43;
                    fArr15[2] = fArr13[i24] - f44;
                    f12 = f14;
                    ocTreeNodeArr2 = ocTreeNodeArr;
                    MathUtils.calcCross(pvecCol, dirCol, fArr15);
                    float calcDot = MathUtils.calcDot(edge1Col, pvecCol);
                    if (calcDot >= 1.0E-9f) {
                        float f48 = 1.0f / calcDot;
                        float[] fArr16 = tvecCol;
                        i11 = 0;
                        fArr16[0] = f37 - f42;
                        fArr16[1] = f38 - f43;
                        c10 = 2;
                        fArr16[2] = f39 - f44;
                        float calcDot2 = MathUtils.calcDot(fArr16, pvecCol) * f48;
                        float f49 = f37;
                        i12 = i19;
                        if (calcDot2 < 0.0d || calcDot2 > 1.0f) {
                            f13 = f49;
                        } else {
                            f13 = f49;
                            MathUtils.calcCross(qvecCol, tvecCol, edge1Col);
                            if (MathUtils.calcDot(dirCol, qvecCol) * f48 >= 0.0d && calcDot2 + r3 <= 1.0d) {
                                float calcDot3 = MathUtils.calcDot(edge2Col, qvecCol) * f48;
                                if (calcDot3 >= f10 || calcDot3 < 0.0f) {
                                    if (calcDot3 < f40 && calcDot3 >= 0.0f) {
                                        f40 = calcDot3;
                                        i18 = i22;
                                    }
                                    z12 = false;
                                } else {
                                    f40 = calcDot3;
                                    i18 = i22;
                                    z12 = true;
                                }
                                z13 = z12;
                            }
                        }
                        if (!z13) {
                            i13 = i18;
                            break;
                        }
                        i21++;
                        f37 = f13;
                        i14 = i11;
                        i19 = i12;
                        f14 = f12;
                        ocTreeNodeArr = ocTreeNodeArr2;
                    } else {
                        f13 = f37;
                        i12 = i19;
                        c10 = 2;
                        i11 = 0;
                    }
                } else {
                    f12 = f14;
                    ocTreeNodeArr2 = ocTreeNodeArr;
                    i11 = i14;
                    f13 = f37;
                    i12 = i19;
                    c10 = 2;
                }
                if (!z13) {
                }
            }
            if (!z11 || i20 >= i10) {
                break;
            }
            f37 = f13;
            i18 = i13;
            i16 = i20;
            i14 = i11;
            i17 = i12;
            f14 = f12;
            ocTreeNodeArr = ocTreeNodeArr2;
        }
        if (i13 != -1) {
            addPolygonID(i13);
        }
        return f40;
    }

    public final int addTriangle(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        return addTriangle(f10, f11, f12, 0.0f, 0.0f, f13, f14, f15, 0.0f, 0.0f, f16, f17, f18, 0.0f, 0.0f, -1, 0, false);
    }

    public void build(boolean z10) {
        try {
            this.hasBeenBuild = true;
            if (!this.objMesh.normalsCalculated) {
                calcCenter();
                calcBoundingBox();
                calcNormals();
            } else {
                calcCenter();
                if (this.objMesh.obbStart != 0) {
                    this.hasBoundingBox = true;
                } else {
                    calcBoundingBox();
                }
            }
            GLSLShader gLSLShader = this.shader;
            if (gLSLShader != null && gLSLShader.needsTangents) {
                Mesh mesh = this.objMesh;
                if (!mesh.tangentsCalculated) {
                    mesh.calculateTangentVectors(this.objVectors);
                }
            }
            if (this.anim == null && getMesh().myController == null && z10) {
                compile();
                return;
            }
            compile(true, z10);
        } catch (Exception e10) {
            e10.printStackTrace();
            Logger.log("Couldn't build() object (" + this.name + ")! Check if the object is assigned to a world and if the TextureManager has all required textures loaded.", 0);
        }
    }

    public void compile(boolean z10) {
        compile(z10, true);
    }

    public SimpleVector getTransformedCenter(SimpleVector simpleVector) {
        if (simpleVector == null) {
            simpleVector = new SimpleVector();
        }
        getProjectedPoint(this.centerX, this.centerY, this.centerZ, simpleVector, null, mat7);
        return simpleVector;
    }

    public SimpleVector getTranslation(SimpleVector simpleVector) {
        if (simpleVector == null) {
            simpleVector = new SimpleVector();
        }
        float[] fArr = this.translationMatrix.mat[3];
        simpleVector.set(fArr[0], fArr[1], fArr[2]);
        return simpleVector;
    }

    public void notifyCollisionListeners(Object3D object3D, int i10, int i11, Object3D[] object3DArr, SimpleVector simpleVector) {
        if (this.collisionListener == null || this.disableListeners) {
            return;
        }
        CollisionEvent collisionEvent = new CollisionEvent(this, object3D, i10, i11, object3DArr, simpleVector);
        int size = this.collisionListener.size();
        for (int i12 = 0; i12 < size; i12++) {
            CollisionListener collisionListener = this.collisionListener.get(i12);
            if (collisionListener.requiresPolygonIDs() && collisionEvent.getPolygonIDs() == null) {
                collisionEvent.setPolygonIDs(this.polygonIDs, this.pIDCount);
            }
            collisionListener.collision(collisionEvent);
        }
    }

    public float rayIntersectsAABB(SimpleVector simpleVector, SimpleVector simpleVector2) {
        return rayIntersectsAABB(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, false);
    }

    public final boolean sphereIntersectsAABB(float[] fArr, float f10) {
        boolean z10 = false;
        if (!this.hasBoundingBox) {
            return false;
        }
        float[][] fArr2 = getInverseWorldTransformation(this.mat6).mat;
        float[] fArr3 = fArr2[0];
        float f11 = fArr3[0];
        float[] fArr4 = fArr2[1];
        float f12 = fArr4[0];
        float f13 = fArr4[1];
        float[] fArr5 = fArr2[2];
        float f14 = fArr5[1];
        float f15 = fArr5[0];
        float f16 = fArr3[1];
        float f17 = fArr5[2];
        float f18 = fArr4[2];
        float f19 = fArr3[2];
        float[] fArr6 = fArr2[3];
        float f20 = fArr6[0];
        float f21 = fArr6[1];
        float f22 = fArr6[2];
        float f23 = fArr[0];
        float f24 = fArr[1];
        float f25 = (f11 * f23) + (f12 * f24);
        float f26 = fArr[2];
        float f27 = f25 + (f15 * f26) + f20;
        float f28 = (f16 * f23) + (f13 * f24) + (f14 * f26) + f21;
        float f29 = (f23 * f19) + (f24 * f18) + (f26 * f17) + f22;
        Mesh mesh = this.objMesh;
        int i10 = mesh.obbStart;
        float f30 = mesh.xOrg[i10];
        float f31 = mesh.yOrg[i10];
        float f32 = mesh.zOrg[i10];
        int i11 = 1;
        float f33 = f30;
        float f34 = f31;
        float f35 = f34;
        float f36 = f33;
        float f37 = f32;
        while (i11 < 8) {
            Mesh mesh2 = this.objMesh;
            int i12 = i11 + i10;
            float f38 = mesh2.xOrg[i12];
            float f39 = mesh2.zOrg[i12];
            float f40 = mesh2.yOrg[i12];
            if (f38 < f36) {
                f36 = f38;
            } else if (f38 > f33) {
                f33 = f38;
            }
            if (f40 < f34) {
                f34 = f40;
            } else if (f40 > f35) {
                f35 = f40;
            }
            if (f39 < f32) {
                f32 = f39;
            } else if (f39 > f37) {
                f37 = f39;
            }
            i11++;
            z10 = false;
        }
        if (f27 + f10 < f36 || f27 - f10 > f33 || f28 + f10 < f34 || f28 - f10 > f35 || f29 + f10 < f32 || f29 - f10 > f37) {
            return z10;
        }
        return true;
    }

    public void translate(float f10, float f11, float f12) {
        this.translationMatrix.translate(f10, f11, f12);
    }

    public int addTriangle(SimpleVector simpleVector, float f10, float f11, SimpleVector simpleVector2, float f12, float f13, SimpleVector simpleVector3, float f14, float f15) {
        return addTriangle(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, f10, f11, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, f12, f13, simpleVector3.f83625x, simpleVector3.f83626y, simpleVector3.f83627z, f14, f15, -1, 0, false);
    }

    public void compile(boolean z10, boolean z11) {
        if (this.compiled != null) {
            return;
        }
        this.dynamic = z10;
        this.indexed = ((z10 || FrameBuffer.versionHint >= 2 || this.objMesh.anzTri >= 1000) && z11) || this.forcedIndexed;
        this.staticUV = z11;
        this.batchSize = -1;
        compileInternal();
    }

    public float rayIntersectsAABB(float[] fArr, float[] fArr2) {
        return rayIntersectsAABB(fArr[0], fArr[1], fArr[2], fArr2[0], fArr2[1], fArr2[2], false);
    }

    public final int addTriangle(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24) {
        return addTriangle(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, -1, 0, false);
    }

    public void animate(float f10) {
        animate(f10, 0);
    }

    public float rayIntersectsAABB(float[] fArr, float[] fArr2, boolean z10) {
        return rayIntersectsAABB(fArr[0], fArr[1], fArr[2], fArr2[0], fArr2[1], fArr2[2], z10);
    }

    public int addTriangle(SimpleVector simpleVector, float f10, float f11, SimpleVector simpleVector2, float f12, float f13, SimpleVector simpleVector3, float f14, float f15, int i10) {
        return addTriangle(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, f10, f11, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, f12, f13, simpleVector3.f83625x, simpleVector3.f83626y, simpleVector3.f83627z, f14, f15, i10, 0, false);
    }

    public void align(Object3D object3D) {
        float scale = getScale();
        setScale(1.0f);
        this.rotationMatrix = object3D.rotationMatrix.cloneMatrix();
        setScale(scale);
    }

    public final float rayIntersectsAABB(float f10, float f11, float f12, float f13, float f14, float f15, boolean z10) {
        float f16;
        float f17;
        float f18;
        float f19;
        if (!this.hasBoundingBox) {
            return 1.0E12f;
        }
        float[][] fArr = getInverseWorldTransformation(this.mat6).mat;
        float[] fArr2 = fArr[0];
        float f20 = fArr2[0];
        float[] fArr3 = fArr[1];
        float f21 = fArr3[0];
        float f22 = fArr3[1];
        float[] fArr4 = fArr[2];
        float f23 = fArr4[1];
        float f24 = fArr4[0];
        float f25 = fArr2[1];
        float f26 = fArr4[2];
        float f27 = fArr3[2];
        float f28 = fArr2[2];
        float[] fArr5 = fArr[3];
        float f29 = (f13 * f20) + (f14 * f21) + (f15 * f24);
        float f30 = (f13 * f25) + (f14 * f22) + (f15 * f23);
        float f31 = (f13 * f28) + (f14 * f27) + (f15 * f26);
        float f32 = (f20 * f10) + (f21 * f11) + (f12 * f24) + fArr5[0];
        float f33 = (f10 * f25) + (f11 * f22) + (f12 * f23) + fArr5[1];
        float f34 = (f28 * f10) + (f27 * f11) + (f12 * f26) + fArr5[2];
        if (!z10) {
            float sqrt = FloatMath.sqrt((f29 * f29) + (f30 * f30) + (f31 * f31));
            f29 /= sqrt;
            f30 /= sqrt;
            f31 /= sqrt;
        }
        Mesh mesh = this.objMesh;
        int i10 = mesh.obbStart;
        float[] fArr6 = mesh.xOrg;
        float[] fArr7 = mesh.yOrg;
        float[] fArr8 = mesh.zOrg;
        float f35 = fArr6[i10];
        float f36 = fArr7[i10];
        float f37 = fArr8[i10];
        float f38 = f37;
        float f39 = f35;
        float f40 = f36;
        for (int i11 = 1; i11 < 8; i11++) {
            int i12 = i11 + i10;
            float f41 = fArr6[i12];
            float f42 = fArr8[i12];
            float f43 = fArr7[i12];
            if (f41 < f35) {
                f35 = f41;
            } else if (f41 > f39) {
                f39 = f41;
            }
            if (f43 < f40) {
                f40 = f43;
            } else if (f43 > f36) {
                f36 = f43;
            }
            if (f42 < f37) {
                f37 = f42;
            } else if (f42 > f38) {
                f38 = f42;
            }
        }
        float f44 = 1.0E11f;
        float f45 = -1.0E11f;
        if (Math.abs(f29) > 1.0E-9f) {
            f17 = (f35 - f32) / f29;
            f16 = (f39 - f32) / f29;
            if (f17 > f16) {
                f16 = f17;
                f17 = f16;
            }
        } else {
            f16 = 1.0E11f;
            f17 = -1.0E11f;
        }
        if (Math.abs(f30) > 1.0E-9f) {
            f19 = (f40 - f33) / f30;
            f18 = (f36 - f33) / f30;
            if (f19 > f18) {
                f18 = f19;
                f19 = f18;
            }
        } else {
            f18 = 1.0E11f;
            f19 = -1.0E11f;
        }
        if (Math.abs(f31) > 1.0E-9f) {
            f44 = (f37 - f34) / f31;
            float f46 = (f38 - f34) / f31;
            if (f44 > f46) {
                f45 = f46;
            } else {
                f45 = f44;
                f44 = f46;
            }
        }
        if (f17 < f19) {
            f17 = f19;
        }
        if (f17 >= f45) {
            f45 = f17;
        }
        if (f16 > f18) {
            f16 = f18;
        }
        if (f16 <= f44) {
            f44 = f16;
        }
        if (f45 > f44 || f44 <= 0.0f) {
            return 1.0E12f;
        }
        return f45;
    }

    public final int addTriangle(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, int i10) {
        return addTriangle(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, i10, 0, false);
    }

    public void setTexture(TextureInfo textureInfo) {
        int[] iArr = this.texture;
        if (iArr == null) {
            return;
        }
        int i10 = 1;
        if (textureInfo.stageCnt > 1) {
            if (this.multiTex == null) {
                int i11 = Config.maxTextureLayers - 1;
                int[] iArr2 = {i11, iArr.length};
                Class<Integer> cls = Integer.TYPE;
                this.multiTex = (int[][]) Array.newInstance(cls, iArr2);
                this.multiMode = (int[][]) Array.newInstance(cls, i11, this.texture.length);
                int length = this.texture.length;
                for (int i12 = 0; i12 < length; i12++) {
                    for (int i13 = 0; i13 < i11; i13++) {
                        this.multiTex[i13][i12] = -1;
                    }
                }
            }
            this.objVectors.createMultiCoords();
            this.usesMultiTexturing = true;
        } else {
            this.usesMultiTexturing = false;
        }
        int i14 = textureInfo.textures[0];
        if (i14 != -1) {
            int length2 = this.texture.length;
            for (int i15 = 0; i15 < length2; i15++) {
                this.texture[i15] = i14;
            }
        } else {
            Logger.log("Tried to set an undefined texture!", 0);
        }
        while (true) {
            int i16 = textureInfo.stageCnt;
            if (i10 >= i16) {
                this.maxStagesUsed = i16;
                return;
            }
            int i17 = textureInfo.textures[i10];
            int i18 = textureInfo.mode[i10];
            int i19 = i10 - 1;
            int[][] iArr3 = this.multiMode;
            int[] iArr4 = iArr3[i19];
            int[][] iArr5 = this.multiTex;
            int[] iArr6 = iArr5[i19];
            if (iArr3.length != iArr5.length) {
                int length3 = this.texture.length;
                for (int i20 = 0; i20 < this.objMesh.anzTri; i20++) {
                    iArr4[i20] = i18;
                }
                for (int i21 = 0; i21 < length3; i21++) {
                    iArr6[i21] = i17;
                }
            } else {
                int i22 = this.objMesh.anzTri;
                for (int i23 = 0; i23 < i22; i23++) {
                    iArr4[i23] = i18;
                    iArr6[i23] = i17;
                }
            }
            Vectors vectors = this.objVectors;
            float[] fArr = vectors.uMul[i19];
            float[] fArr2 = vectors.vMul[i19];
            int i24 = 0;
            while (true) {
                Vectors vectors2 = this.objVectors;
                float[] fArr3 = vectors2.nuOrg;
                if (i24 >= fArr3.length) {
                    break;
                }
                fArr[i24] = fArr3[i24];
                fArr2[i24] = vectors2.nvOrg[i24];
                i24++;
            }
            i10++;
        }
    }

    public int addTriangle(SimpleVector simpleVector, float f10, float f11, SimpleVector simpleVector2, float f12, float f13, SimpleVector simpleVector3, float f14, float f15, int i10, int i11) {
        return addTriangle(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, f10, f11, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, f12, f13, simpleVector3.f83625x, simpleVector3.f83626y, simpleVector3.f83627z, f14, f15, i10, i11, true);
    }

    public int addTriangle(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3, TextureInfo textureInfo) {
        return addTriangle(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, 0.0f, 0.0f, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, 0.0f, 0.0f, simpleVector3.f83625x, simpleVector3.f83626y, simpleVector3.f83627z, 0.0f, 0.0f, 0, 0, false, null, textureInfo);
    }

    public final int addTriangle(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, int i10, int i11, boolean z10) {
        return addTriangle(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, i10, i11, z10, null);
    }

    public final int addTriangle(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, int i10, int i11, boolean z10, int[] iArr) {
        return addTriangle(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, i10, i11, z10, iArr, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ff A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TRY_ENTER, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014d A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01aa A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c6 A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0218 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0220 A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0226 A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022c A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0232 A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0238 A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x023e A[Catch: ArrayIndexOutOfBoundsException -> 0x0060, TryCatch #1 {ArrayIndexOutOfBoundsException -> 0x0060, blocks: (B:135:0x002c, B:139:0x0033, B:142:0x004a, B:143:0x0053, B:152:0x0058, B:153:0x0081, B:157:0x00a2, B:159:0x00aa, B:4:0x00c7, B:10:0x00d5, B:12:0x00e3, B:14:0x00e9, B:18:0x00ff, B:19:0x0105, B:22:0x010e, B:24:0x0115, B:27:0x0130, B:31:0x0149, B:33:0x014d, B:36:0x015e, B:37:0x0164, B:40:0x016d, B:42:0x0174, B:45:0x018e, B:47:0x01aa, B:50:0x01c6, B:51:0x01cc, B:54:0x01d5, B:56:0x01dc, B:59:0x01f6, B:64:0x020d, B:75:0x021c, B:77:0x0220, B:78:0x0222, B:80:0x0226, B:81:0x0228, B:83:0x022c, B:84:0x022e, B:86:0x0232, B:87:0x0234, B:89:0x0238, B:90:0x023a, B:92:0x023e, B:93:0x0240, B:96:0x024e, B:98:0x0255, B:101:0x026d, B:107:0x01be, B:110:0x0155, B:146:0x0066, B:150:0x006b, B:148:0x006e), top: B:134:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x024d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int addTriangle(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, int i10, int i11, boolean z10, int[] iArr, TextureInfo textureInfo) {
        String str;
        String str2;
        int i12;
        float f25;
        float f26;
        float f27;
        float f28;
        float f29;
        int i13;
        float f30;
        int[] iArr2;
        int i14;
        int i15;
        boolean z11;
        int i16;
        int i17;
        int i18;
        float f31;
        float f32;
        float f33;
        int i19;
        int i20;
        Mesh mesh;
        if (textureInfo == null) {
            str2 = "Polygon index out of range - object is too large!";
            f28 = f13;
            f25 = f14;
            f26 = f18;
            f27 = f19;
            f30 = f23;
            f29 = f24;
            i13 = i10;
        } else {
            try {
                if (this.multiTex != null || textureInfo.stageCnt <= 1) {
                    str2 = "Polygon index out of range - object is too large!";
                } else {
                    int i21 = Config.maxTextureLayers - 1;
                    str2 = "Polygon index out of range - object is too large!";
                    try {
                        iArr2 = new int[2];
                        iArr2[1] = this.texture.length;
                        i14 = 0;
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        str = str2;
                        i12 = 0;
                        Logger.log(str, i12);
                        return this.objMesh.anzTri - 1;
                    }
                    try {
                        iArr2[0] = i21;
                        Class<Integer> cls = Integer.TYPE;
                        this.multiTex = (int[][]) Array.newInstance(cls, iArr2);
                        int i22 = Config.maxTextureLayers - 1;
                        int[] iArr3 = new int[2];
                        iArr3[1] = this.texture.length;
                        i14 = 0;
                        iArr3[0] = i22;
                        this.multiMode = (int[][]) Array.newInstance(cls, iArr3);
                        for (int i23 = 0; i23 < this.texture.length; i23++) {
                            for (int i24 = 0; i24 < Config.maxTextureLayers - 1; i24++) {
                                this.multiTex[i24][i23] = -1;
                            }
                        }
                        this.objVectors.createMultiCoords();
                        this.usesMultiTexturing = true;
                    } catch (ArrayIndexOutOfBoundsException unused2) {
                        i12 = i14;
                        str = str2;
                        Logger.log(str, i12);
                        return this.objMesh.anzTri - 1;
                    }
                }
                try {
                    float f34 = textureInfo.f83628u0[0];
                    f25 = textureInfo.f83631v0[0];
                    f26 = textureInfo.f83629u1[0];
                    f27 = textureInfo.f83632v1[0];
                    float f35 = textureInfo.f83630u2[0];
                    float f36 = textureInfo.f83633v2[0];
                    int i25 = textureInfo.textures[0];
                    int i26 = this.maxStagesUsed;
                    int i27 = textureInfo.stageCnt;
                    if (i26 < i27) {
                        this.maxStagesUsed = i27;
                    }
                    f28 = f34;
                    f29 = f36;
                    i13 = i25;
                    f30 = f35;
                } catch (ArrayIndexOutOfBoundsException unused3) {
                    i12 = 0;
                    str = str2;
                    Logger.log(str, i12);
                    return this.objMesh.anzTri - 1;
                }
            } catch (ArrayIndexOutOfBoundsException unused4) {
                str = "Polygon index out of range - object is too large!";
                i12 = 0;
                Logger.log(str, i12);
                return this.objMesh.anzTri - 1;
            }
        }
        if (!this.usesMultiTexturing || textureInfo == null) {
            i15 = -1;
            z11 = false;
        } else {
            i15 = -1;
            z11 = true;
        }
        if (i13 == i15) {
            i13 = 0;
        }
        Mesh mesh2 = this.objMesh;
        int i28 = i13;
        int i29 = mesh2.anzVectors;
        float f37 = f27;
        if (i29 + 3 < mesh2.maxVectors) {
            int i30 = mesh2.anzTri;
            try {
                if (!this.neverOptimize) {
                    i17 = this.objVectors.checkCoords(f10, f11, f12);
                } else if (iArr != null) {
                    try {
                        i17 = iArr[0];
                    } catch (ArrayIndexOutOfBoundsException unused5) {
                        i12 = 0;
                        str = str2;
                        Logger.log(str, i12);
                        return this.objMesh.anzTri - 1;
                    }
                } else {
                    i16 = -1;
                    i17 = -1;
                    if (i17 == i16) {
                        i17 = this.objVectors.addVertex(f10, f11, f12);
                    }
                    this.objMesh.coords[i29] = i17;
                    if (z11) {
                        int i31 = 0;
                        while (i31 < textureInfo.stageCnt - 1) {
                            Vectors vectors = this.objVectors;
                            int i32 = i31 + 1;
                            vectors.uMul[i31][i29] = textureInfo.f83628u0[i32];
                            vectors.vMul[i31][i29] = textureInfo.f83631v0[i32];
                            i31 = i32;
                        }
                    }
                    Vectors vectors2 = this.objVectors;
                    vectors2.nuOrg[i29] = f28;
                    vectors2.nvOrg[i29] = f25;
                    Mesh mesh3 = this.objMesh;
                    int i33 = mesh3.anzVectors + 1;
                    mesh3.anzVectors = i33;
                    mesh3.points[i30][0] = i29;
                    if (this.neverOptimize) {
                        i18 = vectors2.checkCoords(f15, f16, f17);
                    } else {
                        i18 = iArr != null ? iArr[1] : -1;
                    }
                    if (i18 == -1) {
                        i18 = this.objVectors.addVertex(f15, f16, f17);
                    }
                    this.objMesh.coords[i33] = i18;
                    if (z11) {
                        int i34 = 0;
                        while (i34 < textureInfo.stageCnt - 1) {
                            Vectors vectors3 = this.objVectors;
                            int i35 = i34 + 1;
                            vectors3.uMul[i34][i33] = textureInfo.f83629u1[i35];
                            vectors3.vMul[i34][i33] = textureInfo.f83632v1[i35];
                            i34 = i35;
                        }
                    }
                    Vectors vectors4 = this.objVectors;
                    vectors4.nuOrg[i33] = f26;
                    vectors4.nvOrg[i33] = f37;
                    Mesh mesh4 = this.objMesh;
                    int i36 = mesh4.anzVectors + 1;
                    mesh4.anzVectors = i36;
                    mesh4.points[i30][1] = i33;
                    if (this.neverOptimize) {
                        f31 = f20;
                        f32 = f21;
                        f33 = f22;
                        i20 = vectors4.checkCoords(f31, f32, f33);
                    } else {
                        f31 = f20;
                        f32 = f21;
                        f33 = f22;
                        if (iArr != null) {
                            i20 = iArr[2];
                        } else {
                            i19 = -1;
                            i20 = -1;
                            if (i20 == i19) {
                                i20 = this.objVectors.addVertex(f31, f32, f33);
                            }
                            this.objMesh.coords[i36] = i20;
                            if (z11) {
                                int i37 = 0;
                                while (i37 < textureInfo.stageCnt - 1) {
                                    Vectors vectors5 = this.objVectors;
                                    int i38 = i37 + 1;
                                    vectors5.uMul[i37][i36] = textureInfo.f83630u2[i38];
                                    vectors5.vMul[i37][i36] = textureInfo.f83633v2[i38];
                                    i37 = i38;
                                }
                            }
                            Vectors vectors6 = this.objVectors;
                            vectors6.nuOrg[i36] = f30;
                            vectors6.nvOrg[i36] = f29;
                            mesh = this.objMesh;
                            mesh.anzVectors++;
                            if (iArr != null) {
                                try {
                                    iArr[0] = i17;
                                    iArr[1] = i18;
                                    iArr[2] = i20;
                                } catch (ArrayIndexOutOfBoundsException unused6) {
                                    i12 = 0;
                                    str = str2;
                                    Logger.log(str, i12);
                                    return this.objMesh.anzTri - 1;
                                }
                            }
                            if (i20 != i17 && i20 != i18 && i18 != i17) {
                                if (i20 < this.lowestPos) {
                                    this.lowestPos = i20;
                                }
                                if (i18 < this.lowestPos) {
                                    this.lowestPos = i18;
                                }
                                if (i17 < this.lowestPos) {
                                    this.lowestPos = i17;
                                }
                                if (i20 > this.highestPos) {
                                    this.highestPos = i20;
                                }
                                if (i18 > this.highestPos) {
                                    this.highestPos = i18;
                                }
                                if (i17 > this.highestPos) {
                                    this.highestPos = i17;
                                }
                                mesh.points[i30][2] = i36;
                                this.texture[i30] = i28;
                                if (z11) {
                                    int i39 = 0;
                                    while (i39 < textureInfo.stageCnt - 1) {
                                        int i40 = i39 + 1;
                                        this.multiTex[i39][i30] = textureInfo.textures[i40];
                                        this.multiMode[i39][i30] = textureInfo.mode[i40];
                                        i39 = i40;
                                    }
                                }
                                this.objMesh.anzTri++;
                            }
                        }
                    }
                    i19 = -1;
                    if (i20 == i19) {
                    }
                    this.objMesh.coords[i36] = i20;
                    if (z11) {
                    }
                    Vectors vectors62 = this.objVectors;
                    vectors62.nuOrg[i36] = f30;
                    vectors62.nvOrg[i36] = f29;
                    mesh = this.objMesh;
                    mesh.anzVectors++;
                    if (iArr != null) {
                    }
                    if (i20 != i17) {
                        if (i20 < this.lowestPos) {
                        }
                        if (i18 < this.lowestPos) {
                        }
                        if (i17 < this.lowestPos) {
                        }
                        if (i20 > this.highestPos) {
                        }
                        if (i18 > this.highestPos) {
                        }
                        if (i17 > this.highestPos) {
                        }
                        mesh.points[i30][2] = i36;
                        this.texture[i30] = i28;
                        if (z11) {
                        }
                        this.objMesh.anzTri++;
                    }
                }
                mesh3.points[i30][0] = i29;
                if (this.neverOptimize) {
                }
                if (i18 == -1) {
                }
                this.objMesh.coords[i33] = i18;
                if (z11) {
                }
                Vectors vectors42 = this.objVectors;
                vectors42.nuOrg[i33] = f26;
                vectors42.nvOrg[i33] = f37;
                Mesh mesh42 = this.objMesh;
                int i362 = mesh42.anzVectors + 1;
                mesh42.anzVectors = i362;
                mesh42.points[i30][1] = i33;
                if (this.neverOptimize) {
                }
                i19 = -1;
                if (i20 == i19) {
                }
                this.objMesh.coords[i362] = i20;
                if (z11) {
                }
                Vectors vectors622 = this.objVectors;
                vectors622.nuOrg[i362] = f30;
                vectors622.nvOrg[i362] = f29;
                mesh = this.objMesh;
                mesh.anzVectors++;
                if (iArr != null) {
                }
                if (i20 != i17) {
                }
            } catch (ArrayIndexOutOfBoundsException unused7) {
                i12 = 0;
            }
            i16 = -1;
            if (i17 == i16) {
            }
            this.objMesh.coords[i29] = i17;
            if (z11) {
            }
            Vectors vectors22 = this.objVectors;
            vectors22.nuOrg[i29] = f28;
            vectors22.nvOrg[i29] = f25;
            Mesh mesh32 = this.objMesh;
            int i332 = mesh32.anzVectors + 1;
            mesh32.anzVectors = i332;
        } else {
            str = str2;
            i12 = 0;
            try {
                Logger.log(str, 0);
            } catch (ArrayIndexOutOfBoundsException unused8) {
                Logger.log(str, i12);
                return this.objMesh.anzTri - 1;
            }
        }
        return this.objMesh.anzTri - 1;
    }

    public Matrix getInverseWorldTransformation(Matrix matrix) {
        Matrix matrix2;
        if (matrix == null) {
            matrix = new Matrix();
        }
        Matrix worldTransformation = getWorldTransformation(matrix);
        if (this.lazyTransforms && (matrix2 = this.invCache) != null) {
            matrix.setTo(matrix2);
        } else {
            Matrix invert = worldTransformation.invert(matrix);
            if (this.lazyTransforms) {
                Matrix matrix3 = this.invCacheDump;
                if (matrix3 != null) {
                    this.invCache = matrix3;
                    this.invCacheDump = null;
                    matrix3.setTo(invert);
                } else {
                    this.invCache = invert.cloneMatrix();
                }
            }
            if (matrix != invert) {
                matrix.setTo(invert);
            }
        }
        return matrix;
    }

    public float calcMinDistance(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        return calcMinDistance(simpleVector, simpleVector2, f10, true);
    }

    public float calcMinDistance(SimpleVector simpleVector, SimpleVector simpleVector2, float f10, boolean z10) {
        this.wasCollider = false;
        resetPolygonIDCount();
        float f11 = Config.collideOffset;
        Config.collideOffset = f10;
        createCollisionArrays();
        float[] fArr = origColParam;
        fArr[0] = simpleVector.f83625x;
        fArr[1] = simpleVector.f83626y;
        fArr[2] = simpleVector.f83627z;
        float[] fArr2 = dirColParam;
        fArr2[0] = simpleVector2.f83625x;
        fArr2[1] = simpleVector2.f83626y;
        fArr2[2] = simpleVector2.f83627z;
        float collide = collide(fArr, fArr2, 0.0f, f10, false);
        Config.collideOffset = f11;
        if (z10 && collide != 1.0E12f) {
            if (this.collisionListener != null) {
                SimpleVector create = SimpleVector.create(simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z);
                create.scalarMul(collide);
                create.add(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
                notifyCollisionListeners(0, 0, new Object3D[]{this}, create);
            }
            this.wasCollider = true;
        }
        return collide;
    }

    public Matrix getWorldTransformation(Matrix matrix) {
        Matrix matrix2;
        Matrix matrix3;
        if (matrix == null) {
            matrix = new Matrix();
        }
        if (this.lazyTransforms && (matrix3 = this.transCache) != null) {
            matrix.setTo(matrix3);
        } else {
            matrix.setIdentity();
            Matrix tmpMatrix = getTmpMatrix(0);
            tmpMatrix.setIdentity();
            float[] fArr = matrix.mat[3];
            float[] fArr2 = this.translationMatrix.mat[3];
            float[] fArr3 = this.originMatrix.mat[3];
            float f10 = this.xRotationCenter;
            fArr[0] = -f10;
            float f11 = this.yRotationCenter;
            fArr[1] = -f11;
            float f12 = this.zRotationCenter;
            fArr[2] = -f12;
            float[] fArr4 = tmpMatrix.mat[3];
            fArr4[0] = f10 + fArr2[0] + fArr3[0];
            fArr4[1] = f11 + fArr2[1] + fArr3[1];
            fArr4[2] = f12 + fArr2[2] + fArr3[2];
            if (!this.isBillBoard) {
                matrix.matMul(this.rotationMatrix);
            } else {
                Matrix tmpMatrix2 = getTmpMatrix(1);
                this.mat2.invert(tmpMatrix2);
                tmpMatrix2.scalarMul(this.scaleFactor);
                matrix.matMul(tmpMatrix2);
            }
            matrix.matMul(tmpMatrix);
            if (this.parentCnt == 0) {
                matrix2 = matrix;
            } else if (this.isBillBoard) {
                matrix2 = recurseObjectsBillboarded(matrix);
            } else {
                matrix2 = recurseObjects(matrix);
            }
            if (this.lazyTransforms) {
                Matrix matrix4 = this.transCacheDump;
                if (matrix4 != null) {
                    this.transCache = matrix4;
                    this.transCacheDump = null;
                    matrix4.setTo(matrix2);
                } else {
                    this.transCache = matrix2.cloneMatrix();
                }
            }
            if (matrix != matrix2) {
                matrix.setTo(matrix2);
            }
        }
        return matrix;
    }

    public Object3D(int i10) {
        this.transMode = 0;
        this.sortOffset = 0.0f;
        this.number = 0;
        this.name = "";
        this.maxStagesUsed = 0;
        this.usesMultiTexturing = false;
        this.parentCnt = 0;
        this.compiled = null;
        this.dynamic = false;
        this.modified = false;
        this.indexed = true;
        this.forcedIndexed = false;
        this.batchSize = -1;
        this.staticUV = true;
        this.nearestLights = null;
        this.toStrip = false;
        this.renderHook = null;
        this.sharing = false;
        this.shareWith = null;
        this.transBuffer = new Matrix();
        this.collisionListener = null;
        this.disableListeners = false;
        this.polygonIDs = null;
        this.pIDCount = 0;
        this.lastAddedID = -1;
        this.rotationMatrix = new Matrix();
        this.translationMatrix = new Matrix();
        this.originMatrix = new Matrix();
        this.mat2 = new Matrix();
        this.mat5 = new Matrix();
        this.mat6 = new Matrix();
        this.neverOptimize = false;
        this.transCache = null;
        this.invCache = null;
        this.transCacheDump = null;
        this.invCacheDump = null;
        this.optimizeColDet = false;
        this.largestPolygonSize = -1.0f;
        this.polyManager = null;
        this.ellipsoidMode = 0;
        this.userObj = null;
        this.reverseCulling = false;
        this.hasBeenBuild = false;
        this.hasBeenStripped = false;
        this.fixedPointMode = true;
        this.oneTextureSet = false;
        this.addColorInstance = new RGBColor();
        this.sectors = null;
        this.maxLights = 8;
        this.textureMatrix = null;
        this.skipPivot = false;
        this.virtualizer = null;
        this.t0Vel = null;
        this.fromBaseToIntersection = null;
        this.planeIntersectionPoint = null;
        this.trianglePlane = null;
        this.newT = null;
        init(i10);
    }

    public Object3D(Object3D object3D) {
        this(object3D, false);
    }

    public Object3D(Object3D object3D, boolean z10) {
        int[] iArr;
        int i10 = 0;
        this.transMode = 0;
        this.sortOffset = 0.0f;
        this.number = 0;
        this.name = "";
        this.maxStagesUsed = 0;
        this.usesMultiTexturing = false;
        this.parentCnt = 0;
        this.compiled = null;
        this.dynamic = false;
        this.modified = false;
        this.indexed = true;
        this.forcedIndexed = false;
        this.batchSize = -1;
        this.staticUV = true;
        this.nearestLights = null;
        this.toStrip = false;
        this.renderHook = null;
        this.sharing = false;
        this.shareWith = null;
        this.transBuffer = new Matrix();
        this.collisionListener = null;
        this.disableListeners = false;
        this.polygonIDs = null;
        this.pIDCount = 0;
        this.lastAddedID = -1;
        this.rotationMatrix = new Matrix();
        this.translationMatrix = new Matrix();
        this.originMatrix = new Matrix();
        this.mat2 = new Matrix();
        this.mat5 = new Matrix();
        this.mat6 = new Matrix();
        this.neverOptimize = false;
        this.transCache = null;
        this.invCache = null;
        this.transCacheDump = null;
        this.invCacheDump = null;
        this.optimizeColDet = false;
        this.largestPolygonSize = -1.0f;
        this.polyManager = null;
        this.ellipsoidMode = 0;
        this.userObj = null;
        this.reverseCulling = false;
        this.hasBeenBuild = false;
        this.hasBeenStripped = false;
        this.fixedPointMode = true;
        this.oneTextureSet = false;
        this.addColorInstance = new RGBColor();
        this.sectors = null;
        this.maxLights = 8;
        this.textureMatrix = null;
        this.skipPivot = false;
        this.virtualizer = null;
        this.t0Vel = null;
        this.fromBaseToIntersection = null;
        this.planeIntersectionPoint = null;
        this.trianglePlane = null;
        this.newT = null;
        if (object3D != null && (iArr = object3D.texture) != null) {
            i10 = iArr.length;
        }
        init(i10 + 8);
        if (i10 != 0) {
            copy(object3D, z10);
        }
    }
}
