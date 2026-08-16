package org.ITsMagic.Atlas;

import Ug.h;
import Ug.k;
import android.util.Log;
import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.ArrayList;
import java.util.List;
import vc.n;
import vc.p;
import vc.q;

@Keep
public class XAtlas {
    private static boolean ALLOW_LOG = true;
    private static final float GENERATE_BATCH_END = 1.0f;
    private static final float GENERATE_BATCH_START = 0.99f;
    private static final float GENERATE_EXPORT_END = 0.99f;
    private static final float GENERATE_EXPORT_START = 0.85f;
    private static final float GENERATE_NATIVE_END = 0.85f;
    private static final float GENERATE_NATIVE_START = 0.1f;
    private static final float GENERATE_PREPARE_END = 0.1f;
    private static final float GENERATE_PREPARE_START = 0.0f;
    private static final int LISTENER_PROGRESS_TOTAL = 1000;
    private static final int NATIVE_PROGRESS_ADD_MESH = 0;
    private static final int NATIVE_PROGRESS_BUILD_OUTPUT_MESHES = 3;
    private static final int NATIVE_PROGRESS_COMPUTE_CHARTS = 1;
    private static final int NATIVE_PROGRESS_PACK_CHARTS = 2;
    private transient a nativeProgressListener;
    private long pointer = -1;
    private final List<b> vertexEntityList = new ArrayList();
    private final List<k> bakeDataList = new ArrayList();
    private final com.itsmagic.engine.Engines.Engine.Vector.f tmpMatrix = new com.itsmagic.engine.Engines.Engine.Vector.f();
    private final Vector3 tmpVertice = new Vector3();
    private boolean garbage = false;
    private int effectiveResolution = 0;
    private int nativeProgressCategory = Integer.MIN_VALUE;
    private int nativeProgressValue = -1;

    public interface a {
        void a(int executed, int total, float progress, String tda);

        void b(String step);
    }

    static {
        System.loadLibrary("xatlas");
        ALLOW_LOG = false;
    }

    private synchronized void clearNativeGenerateProgress() {
        this.nativeProgressListener = null;
        this.nativeProgressCategory = Integer.MIN_VALUE;
        this.nativeProgressValue = -1;
    }

    private void emitGenerateProgress(a listener, float progress) {
        if (listener == null) {
            return;
        }
        float E10 = Nc.b.E(0.0f, progress, 1.0f);
        listener.a(Math.round(1000.0f * E10), 1000, E10, "");
    }

    private static void log(String msg) {
        if (ALLOW_LOG) {
            Log.d("XAtlas", msg);
        }
    }

    private static native boolean nativeAddMeshFromNative(long pointer, long verticesPointer, long trianglesPointer);

    private static native int nativeAtlasCount(long pointer);

    private static native int nativeAtlasHeight(long pointer);

    private static native int nativeAtlasWidth(long pointer);

    private static native void nativeDeleteBuffer(long pointer);

    private static native boolean nativeGenerate(long pointer, boolean allowLog, int resolution, float maxChartArea, float maxBoundaryLength, float normalDeviationWeight, float roundnessWeight, float straightnessWeight, float normalSeamWeight, float textureSeamWeight, int maxChartSize, int padding, boolean bilinear, boolean blockAlign, float texelsPerUnit, XAtlas callbackOwner);

    private float nativeGenerateProgress(int category, int progress) {
        float f10;
        float f11 = progress / 100.0f;
        if (category != 0 && category != 1) {
            if (category == 2) {
                f10 = 1.0f;
            } else {
                if (category != 3) {
                    return f11;
                }
                f10 = 2.0f;
            }
            return (f11 + f10) / 3.0f;
        }
        return f11 / 3.0f;
    }

    private static native float nativeGetFirstAtlasUtilization(long pointer);

    private static native long nativeGetMeshAtlasIndexCount(long pointer, int meshIndex);

    private static native long nativeGetMeshIndiceCount(long pointer, int meshIndex);

    private static native float nativeGetMeshUVFromVertice(long pointer, int meshIndex, long vertice, int uvIndex, long atlasIndex);

    private static native long nativeGetMeshVertexAtlasIndex(long pointer, int meshIndex, long vertice);

    private static native int nativeGetMeshVertexIndice(long pointer, int meshIndex, int indice);

    private static native long nativeGetMeshVertexXRefFromVertice(long pointer, int meshIndex, long vertice);

    private static native long nativeGetMeshVerticeCount(long pointer, int meshIndex);

    public static native long nativeTryCreate();

    @Keep
    private synchronized void onNativeGenerateProgress(int category, int progress) {
        a aVar = this.nativeProgressListener;
        if (aVar == null) {
            return;
        }
        int F10 = Nc.b.F(0, progress, 100);
        if (this.nativeProgressCategory == category && this.nativeProgressValue == F10) {
            return;
        }
        this.nativeProgressCategory = category;
        this.nativeProgressValue = F10;
        emitGenerateProgress(aVar, toPhaseProgress(0.1f, 0.85f, nativeGenerateProgress(category, F10)));
    }

    private synchronized void resetNativeGenerateProgress(a listener) {
        this.nativeProgressListener = listener;
        this.nativeProgressCategory = Integer.MIN_VALUE;
        this.nativeProgressValue = -1;
    }

    private float toPhaseProgress(float phaseStart, float phaseEnd, float progress) {
        return phaseStart + ((phaseEnd - phaseStart) * Nc.b.E(0.0f, progress, 1.0f));
    }

    private boolean validateBuffer(com.itsmagic.engine.Engines.Native.Base.a buffer, int steps, int minimal, String id2) {
        if (buffer.capacity() < minimal) {
            throw new RuntimeException("Mesh ignored " + id2 + " buffer < " + minimal);
        }
        if (buffer.capacity() % steps != 0) {
            throw new RuntimeException("Mesh ignored " + id2 + " buffer is not a divisor of " + steps);
        }
        if (buffer.isNative()) {
            return true;
        }
        throw new RuntimeException("Mesh ignored " + id2 + " buffer is not native");
    }

    public void addInputMesh(Vertex vertex, Material material, float[] renderMatrix) {
        log("Adding vertex");
        this.vertexEntityList.add(new b(vertex, renderMatrix, material));
    }

    public void generate(int forcedResolution, float maxChartArea, float maxBoundaryLength, float normalDeviationWeight, float roundnessWeight, float straightnessWeight, float normalSeamWeight, float textureSeamWeight, int maxChartSize, int padding, float texelsPerUnit, boolean bilinear, boolean blockAlign, boolean allowRecursiveSizeReduction, a listener) {
        ArrayList arrayList;
        int i10;
        int i11;
        a aVar;
        int i12;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar;
        q qVar;
        int i13;
        Vector2 vector2;
        Vector3 vector3;
        q qVar2;
        boolean z10;
        char c10;
        int i14;
        int i15;
        XAtlas xAtlas = this;
        a aVar2 = listener;
        float f10 = 0.0f;
        xAtlas.emitGenerateProgress(aVar2, 0.0f);
        if (forcedResolution > 0) {
            xAtlas.effectiveResolution = forcedResolution;
        } else {
            xAtlas.effectiveResolution = 4096;
        }
        int i16 = 0;
        boolean z11 = forcedResolution > 0;
        ArrayList arrayList2 = new ArrayList();
        boolean z12 = z11;
        boolean z13 = false;
        while (true) {
            xAtlas.pointer = nativeTryCreate();
            log("Atlas created");
            arrayList2.clear();
            ArrayList arrayList3 = new ArrayList();
            for (int i17 = i16; i17 < xAtlas.vertexEntityList.size(); i17++) {
                b bVar = xAtlas.vertexEntityList.get(i17);
                Vertex vertex = bVar.f99904a;
                xAtlas.tmpMatrix.y0(bVar.f99905b);
                NativeFloatBuffer i18 = vertex.i1();
                NativeIntBuffer V02 = vertex.V0();
                if (V02 == null || i18 == null) {
                    arrayList3.add(bVar);
                } else {
                    try {
                        xAtlas.validateBuffer(i18, 3, 9, vertex.f79966b);
                        xAtlas.validateBuffer(V02, 3, 3, vertex.f79966b);
                        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(i18.capacity());
                        nativeFloatBuffer.position(i16);
                        for (int i19 = i16; i19 < i18.capacity(); i19 += 3) {
                            xAtlas.tmpVertice.setX(i18.get(i19));
                            xAtlas.tmpVertice.setY(i18.get(i19 + 1));
                            xAtlas.tmpVertice.setZ(i18.get(i19 + 2));
                            com.itsmagic.engine.Engines.Engine.Vector.f fVar2 = xAtlas.tmpMatrix;
                            Vector3 vector32 = xAtlas.tmpVertice;
                            fVar2.p0(vector32, vector32);
                            nativeFloatBuffer.put(xAtlas.tmpVertice);
                        }
                        boolean nativeAddMeshFromNative = nativeAddMeshFromNative(xAtlas.pointer, nativeFloatBuffer.getCriticalDirectCppPointer(), V02.getCriticalDirectCppPointer());
                        nativeFloatBuffer.destroyImmediate();
                        if (nativeAddMeshFromNative) {
                            arrayList2.add(bVar);
                        } else {
                            arrayList3.add(bVar);
                        }
                        aVar2.a(i17, xAtlas.vertexEntityList.size(), (i17 / xAtlas.vertexEntityList.size()) * 100.0f, "");
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                        arrayList3.add(bVar);
                    }
                }
            }
            xAtlas.vertexEntityList.removeAll(arrayList3);
            arrayList3.clear();
            if (arrayList2.isEmpty()) {
                log("No mesh do bake");
                return;
            }
            aVar2.b("Computing charts");
            aVar2.a(i16, i16, f10, "Please wait...");
            arrayList = arrayList2;
            i10 = i16;
            nativeGenerate(xAtlas.pointer, ALLOW_LOG, xAtlas.effectiveResolution, maxChartArea, maxBoundaryLength, normalDeviationWeight, roundnessWeight, straightnessWeight, normalSeamWeight, textureSeamWeight, maxChartSize, padding, bilinear, blockAlign, texelsPerUnit, this);
            if (!allowRecursiveSizeReduction) {
                break;
            }
            int nativeAtlasCount = nativeAtlasCount(this.pointer);
            if (!z12) {
                z10 = true;
                if (nativeAtlasCount != 1) {
                    c10 = '\u1000';
                    if (nativeAtlasCount < 2 || nativeAtlasCount > 5 || (i15 = this.effectiveResolution) >= 3969) {
                        break;
                    }
                    this.effectiveResolution = Nc.b.F(128, i15 + 128, 4096);
                    nativeDeleteBuffer(this.pointer);
                    aVar2 = listener;
                    xAtlas = this;
                    z13 = z10;
                } else {
                    if (z13) {
                        break;
                    }
                    c10 = '\u1000';
                    this.effectiveResolution = Nc.b.F(128, (int) (nativeGetFirstAtlasUtilization(this.pointer) * 2.0f * 1.5f * 4096.0f), 4096);
                    nativeDeleteBuffer(this.pointer);
                    aVar2 = listener;
                    xAtlas = this;
                    z12 = true;
                }
            } else {
                z10 = true;
                c10 = '\u1000';
                if (nativeAtlasCount < 2 || nativeAtlasCount > 5 || (i14 = this.effectiveResolution) >= 3969) {
                    break;
                }
                this.effectiveResolution = Nc.b.F(128, i14 + 128, 4096);
                nativeDeleteBuffer(this.pointer);
                aVar2 = listener;
                xAtlas = this;
                z13 = z10;
            }
            arrayList2 = arrayList;
            i16 = i10;
            f10 = 0.0f;
        }
        int nativeAtlasCount2 = nativeAtlasCount(this.pointer);
        int nativeAtlasWidth = nativeAtlasWidth(this.pointer);
        int nativeAtlasHeight = nativeAtlasHeight(this.pointer);
        int i20 = i10;
        for (int i21 = i20; i21 < arrayList.size(); i21++) {
            this.vertexEntityList.get(i21);
            for (int i22 = i10; i22 < nativeAtlasCount2; i22++) {
                i20++;
            }
        }
        a aVar3 = listener;
        emitGenerateProgress(aVar3, 0.85f);
        com.itsmagic.engine.Engines.Engine.Vector.f fVar3 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.bakeDataList.clear();
        for (int i23 = i10; i23 < nativeAtlasCount2; i23++) {
            this.bakeDataList.add(new k());
        }
        Vector3 vector33 = new Vector3();
        Vector2 vector22 = new Vector2();
        int i24 = i10;
        int i25 = i24;
        while (i25 < arrayList.size()) {
            b bVar2 = this.vertexEntityList.get(i25);
            fVar3.y0(bVar2.f99905b);
            Vertex vertex2 = bVar2.f99904a;
            int i26 = i24;
            int i27 = i10;
            while (i27 < nativeAtlasCount2) {
                k kVar = this.bakeDataList.get(i27);
                b bVar3 = bVar2;
                int nativeGetMeshVerticeCount = (int) nativeGetMeshVerticeCount(this.pointer, i25);
                int i28 = nativeAtlasHeight;
                int i29 = i20;
                int nativeGetMeshIndiceCount = (int) nativeGetMeshIndiceCount(this.pointer, i25);
                q qVar3 = new q(nativeGetMeshVerticeCount);
                q qVar4 = new q(nativeGetMeshVerticeCount);
                p pVar = new p(nativeGetMeshVerticeCount);
                int i30 = nativeAtlasCount2;
                p pVar2 = new p(nativeGetMeshVerticeCount);
                int i31 = i26;
                n nVar = new n(new NativeIntBuffer(nativeGetMeshIndiceCount));
                Ug.g gVar = new Ug.g();
                gVar.o(qVar3);
                gVar.l(qVar4);
                gVar.k(pVar);
                gVar.m(pVar2);
                gVar.n(nVar);
                int i32 = i10;
                while (i32 < nativeGetMeshVerticeCount) {
                    n nVar2 = nVar;
                    com.itsmagic.engine.Engines.Engine.Vector.f fVar4 = fVar3;
                    Vector3 vector34 = vector33;
                    Vector2 vector23 = vector22;
                    long j10 = i32;
                    if (((int) nativeGetMeshVertexAtlasIndex(this.pointer, i25, j10)) != i27) {
                        qVar3.A(i32, 0.0f, 0.0f, 0.0f);
                        qVar4.A(i32, 0.0f, 0.0f, 0.0f);
                        pVar2.r(i32, 0.0f, 0.0f);
                        pVar.r(i32, 0.0f, 0.0f);
                    } else {
                        int nativeGetMeshVertexXRefFromVertice = (int) nativeGetMeshVertexXRefFromVertice(this.pointer, i25, j10);
                        if (nativeGetMeshVertexXRefFromVertice >= 0) {
                            vertex2.h1(nativeGetMeshVertexXRefFromVertice, vector34);
                            i12 = nativeGetMeshVerticeCount;
                            fVar = fVar4;
                            fVar.p0(vector34, vector34);
                            qVar3.C(i32, vector34);
                            qVar = qVar3;
                            q qVar5 = qVar4;
                            long j11 = i27;
                            int i33 = i25;
                            i13 = i28;
                            pVar.r(i32, nativeGetMeshUVFromVertice(this.pointer, i33, j10, 0, j11) / nativeAtlasWidth, nativeGetMeshUVFromVertice(this.pointer, i33, j10, 1, j11) / i13);
                            vector2 = vector23;
                            try {
                                vertex2.Z0(nativeGetMeshVertexXRefFromVertice, vector2);
                                pVar2.s(i32, vector2);
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            vector3 = vector34;
                            try {
                                vertex2.w0(nativeGetMeshVertexXRefFromVertice, vector3);
                                fVar.g0(vector3, vector3);
                                vector3.normalizeLocal();
                                qVar2 = qVar5;
                                try {
                                    qVar2.C(i32, vector3);
                                } catch (Exception e12) {
                                    e = e12;
                                    e.printStackTrace();
                                    i32++;
                                    vector22 = vector2;
                                    i28 = i13;
                                    qVar4 = qVar2;
                                    vector33 = vector3;
                                    fVar3 = fVar;
                                    qVar3 = qVar;
                                    nVar = nVar2;
                                    nativeGetMeshVerticeCount = i12;
                                }
                            } catch (Exception e13) {
                                e = e13;
                                qVar2 = qVar5;
                            }
                            i32++;
                            vector22 = vector2;
                            i28 = i13;
                            qVar4 = qVar2;
                            vector33 = vector3;
                            fVar3 = fVar;
                            qVar3 = qVar;
                            nVar = nVar2;
                            nativeGetMeshVerticeCount = i12;
                        }
                    }
                    qVar2 = qVar4;
                    vector3 = vector34;
                    i13 = i28;
                    i12 = nativeGetMeshVerticeCount;
                    fVar = fVar4;
                    qVar = qVar3;
                    vector2 = vector23;
                    i32++;
                    vector22 = vector2;
                    i28 = i13;
                    qVar4 = qVar2;
                    vector33 = vector3;
                    fVar3 = fVar;
                    qVar3 = qVar;
                    nVar = nVar2;
                    nativeGetMeshVerticeCount = i12;
                }
                int i34 = i28;
                n nVar3 = nVar;
                com.itsmagic.engine.Engines.Engine.Vector.f fVar5 = fVar3;
                Vector3 vector35 = vector33;
                Vector2 vector24 = vector22;
                int i35 = i10;
                while (i35 < nVar3.b()) {
                    int i36 = i35 * 3;
                    int nativeGetMeshVertexIndice = nativeGetMeshVertexIndice(this.pointer, i25, i36);
                    int i37 = i36 + 1;
                    int nativeGetMeshVertexIndice2 = nativeGetMeshVertexIndice(this.pointer, i25, i37);
                    int i38 = nativeAtlasWidth;
                    int i39 = i36 + 2;
                    int nativeGetMeshVertexIndice3 = nativeGetMeshVertexIndice(this.pointer, i25, i39);
                    nVar3.g().set(i36, nativeGetMeshVertexIndice);
                    nVar3.g().set(i37, nativeGetMeshVertexIndice2);
                    nVar3.g().set(i39, nativeGetMeshVertexIndice3);
                    i35++;
                    nativeAtlasWidth = i38;
                    vector24 = vector24;
                }
                int i40 = nativeAtlasWidth;
                Vector2 vector25 = vector24;
                h hVar = new h(bVar3.f99904a, bVar3.f99905b);
                hVar.f(bVar3.c());
                hVar.e(gVar);
                kVar.a(hVar);
                i26 = i31 + 1;
                if (i29 > 0) {
                    i11 = i29;
                    aVar = listener;
                    emitGenerateProgress(aVar, toPhaseProgress(0.85f, 0.99f, i26 / i11));
                } else {
                    i11 = i29;
                    aVar = listener;
                }
                i27++;
                nativeAtlasWidth = i40;
                aVar3 = aVar;
                nativeAtlasHeight = i34;
                vector33 = vector35;
                fVar3 = fVar5;
                vector22 = vector25;
                bVar2 = bVar3;
                i20 = i11;
                nativeAtlasCount2 = i30;
            }
            i25++;
            nativeAtlasHeight = nativeAtlasHeight;
            fVar3 = fVar3;
            i24 = i26;
            nativeAtlasWidth = nativeAtlasWidth;
            i20 = i20;
            nativeAtlasCount2 = nativeAtlasCount2;
        }
        a aVar4 = aVar3;
        nativeDeleteBuffer(this.pointer);
        emitGenerateProgress(aVar4, 0.99f);
        int i41 = i10;
        while (i41 < this.bakeDataList.size()) {
            this.bakeDataList.get(i41).b();
            i41++;
            emitGenerateProgress(aVar4, toPhaseProgress(0.99f, 1.0f, i41 / this.bakeDataList.size()));
        }
        if (this.bakeDataList.isEmpty()) {
            emitGenerateProgress(aVar4, 1.0f);
        }
    }

    public List<k> getBakeDataList() {
        return this.bakeDataList;
    }

    public int getEffectiveResolution() {
        return this.effectiveResolution;
    }

    public int inputMeshCount() {
        return this.vertexEntityList.size();
    }

    public static class b {

        public Vertex f99904a;

        public final float[] f99905b;

        public final Ac.b f99906c;

        public Material f99907d;

        public b(Vertex vertex, float[] matrix) {
            this.f99905b = new float[16];
            this.f99906c = new Ac.b(Tc.b.L());
            this.f99904a = vertex;
            f(matrix);
        }

        public Material c() {
            return this.f99907d;
        }

        public Vertex d() {
            return this.f99904a;
        }

        public void e(Material material) {
            this.f99907d = material;
        }

        public void f(float[] matrix) {
            Nc.c.b(matrix, this.f99905b);
        }

        public void g(Vertex vertex) {
            this.f99904a = vertex;
        }

        public b(Vertex vertex, float[] matrix, Material material) {
            this.f99905b = new float[16];
            this.f99906c = new Ac.b(Tc.b.L());
            this.f99904a = vertex;
            f(matrix);
            this.f99907d = material;
        }
    }
}
