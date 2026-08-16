package org.ITsMagic.Atlas;

import JAVARuntime.Vertex;
import aa.C3593a;
import aa.C3595c;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.AreaEditorComponent;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.BVHMesh;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import org.ITsMagic.Atlas.AmbientOcclusionRasterizer;
import org.ITsMagic.Atlas.a;
import vc.n;
import vc.p;
import vc.q;

public class AmbientOcclusionRasterizer {

    public static final int f99757b = 32;

    public static final int f99758c = 256;

    public static final float f99759d = 1.0E-5f;

    public static final float f99760e = 1.0E-8f;

    public static final float f99761f = 0.01f;

    public static final float f99762g = 2.0f;

    public final List<BVHMesh> f99763a;

    public static class a {

        public static final int[] f99764a;

        static {
            int[] iArr = new int[AreaEditorComponent.q.values().length];
            f99764a = iArr;
            try {
                iArr[AreaEditorComponent.q.FAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99764a[AreaEditorComponent.q.BALANCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99764a[AreaEditorComponent.q.HIGH_QUALITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class b {

        public final int f99765a;

        public b(int maxOccluderSamples) {
            this.f99765a = maxOccluderSamples;
        }

        public static b a(AreaEditorComponent.q quality) {
            if (quality == null) {
                quality = AreaEditorComponent.q.BALANCED;
            }
            int i10 = a.f99764a[quality.ordinal()];
            if (i10 == 1) {
                return new b(10);
            }
            if (i10 == 2) {
                return new b(24);
            }
            if (i10 == 3) {
                return new b(56);
            }
            throw new RuntimeException();
        }
    }

    public static class c {

        public final NativeFloatBuffer f99766a;

        public c(int capacity) {
            this.f99766a = new NativeFloatBuffer(capacity);
        }

        public void a() {
            this.f99766a.destroy();
        }
    }

    public static class d {

        public final long[] f99767a;

        public final long[] f99768b;

        public final long[] f99769c;

        public final long[] f99770d;

        public final long[] f99771e;

        public final int[] f99772f;

        public d(long[] verticesPointers, long[] trianglesPointers, long[] nodeBoundsPointers, long[] nodeMetaPointers, long[] triangleOrderPointers, int[] nodeCounts) {
            this.f99767a = verticesPointers;
            this.f99768b = trianglesPointers;
            this.f99769c = nodeBoundsPointers;
            this.f99770d = nodeMetaPointers;
            this.f99771e = triangleOrderPointers;
            this.f99772f = nodeCounts;
        }

        public static d a(List<BVHMesh> meshes) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            for (int i10 = 0; i10 < meshes.size(); i10++) {
                BVHMesh bVHMesh = meshes.get(i10);
                if (bVHMesh != null) {
                    if (!bVHMesh.D()) {
                        bVHMesh.apply();
                    }
                    NativeFloatBuffer A10 = bVHMesh.A();
                    NativeIntBuffer v10 = bVHMesh.v();
                    NativeFloatBuffer l10 = bVHMesh.l();
                    NativeIntBuffer n10 = bVHMesh.n();
                    NativeIntBuffer p10 = bVHMesh.p();
                    int m10 = bVHMesh.m();
                    if (A10 != null && v10 != null && l10 != null && n10 != null && p10 != null && m10 > 0) {
                        arrayList.add(Long.valueOf(NativeFloatBuffer.getCriticalDirectCppPointer(A10, 0L)));
                        arrayList2.add(Long.valueOf(NativeIntBuffer.getCriticalDirectCppPointer(v10, 0L)));
                        arrayList3.add(Long.valueOf(NativeFloatBuffer.getCriticalDirectCppPointer(l10, 0L)));
                        arrayList4.add(Long.valueOf(NativeIntBuffer.getCriticalDirectCppPointer(n10, 0L)));
                        arrayList5.add(Long.valueOf(NativeIntBuffer.getCriticalDirectCppPointer(p10, 0L)));
                        arrayList6.add(Integer.valueOf(m10));
                    }
                }
            }
            return new d(c(arrayList), c(arrayList2), c(arrayList3), c(arrayList4), c(arrayList5), b(arrayList6));
        }

        public static int[] b(List<Integer> values) {
            int[] iArr = new int[values.size()];
            for (int i10 = 0; i10 < values.size(); i10++) {
                iArr[i10] = values.get(i10).intValue();
            }
            return iArr;
        }

        public static long[] c(List<Long> values) {
            long[] jArr = new long[values.size()];
            for (int i10 = 0; i10 < values.size(); i10++) {
                jArr[i10] = values.get(i10).longValue();
            }
            return jArr;
        }
    }

    public static class e {

        public final float f99773a;

        public final long[] f99774b;

        public final NativeIntBuffer f99775c;

        public final NativeIntBuffer f99776d;

        public final NativeIntBuffer f99777e;

        public e(float cellSize, long[] cellKeys, NativeIntBuffer cellStarts, NativeIntBuffer cellCounts, NativeIntBuffer cellIndices) {
            this.f99773a = cellSize;
            this.f99774b = cellKeys;
            this.f99775c = cellStarts;
            this.f99776d = cellCounts;
            this.f99777e = cellIndices;
        }

        public static e b(f hash) {
            ArrayList arrayList = new ArrayList(hash.f99779b.o());
            Collections.sort(arrayList);
            int size = arrayList.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                ArrayList arrayList2 = (ArrayList) hash.f99779b.get(arrayList.get(i11));
                if (arrayList2 != null) {
                    i10 += arrayList2.size();
                }
            }
            long[] jArr = new long[size];
            NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(Math.max(1, size));
            NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(Math.max(1, size));
            NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(Math.max(1, i10));
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                Long l10 = (Long) arrayList.get(i13);
                jArr[i13] = l10.longValue();
                ArrayList arrayList3 = (ArrayList) hash.f99779b.get(l10);
                int size2 = arrayList3 != null ? arrayList3.size() : 0;
                nativeIntBuffer.set(i13, i12);
                nativeIntBuffer2.set(i13, size2);
                if (arrayList3 != null) {
                    int i14 = 0;
                    while (i14 < size2) {
                        nativeIntBuffer3.set(i12, ((Integer) arrayList3.get(i14)).intValue());
                        i14++;
                        i12++;
                    }
                }
            }
            return new e(hash.f99778a, jArr, nativeIntBuffer, nativeIntBuffer2, nativeIntBuffer3);
        }

        public void a() {
            this.f99775c.destroy();
            this.f99776d.destroy();
            this.f99777e.destroy();
        }
    }

    public static class f {

        public final float f99778a;

        public final HashMap<Long, ArrayList<Integer>> f99779b = new HashMap<>();

        public f(float cellSize) {
            this.f99778a = cellSize;
        }

        public void c(g surfels, int surfelIndex) {
            long d10 = d(f(surfels.f99780a.get(surfelIndex)), f(surfels.f99781b.get(surfelIndex)), f(surfels.f99782c.get(surfelIndex)));
            ArrayList<Integer> arrayList = this.f99779b.get(Long.valueOf(d10));
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f99779b.put(Long.valueOf(d10), arrayList);
            }
            arrayList.add(Integer.valueOf(surfelIndex));
        }

        public final long d(int x10, int y10, int z10) {
            return ((y10 & 2097151) << 21) | ((x10 & 2097151) << 42) | (2097151 & z10);
        }

        public List<Integer> e(Vector3 position, float radius) {
            ArrayList arrayList = new ArrayList();
            int max = Math.max(1, (int) Math.ceil(radius / this.f99778a));
            int f10 = f(position.getX());
            int f11 = f(position.getY());
            int f12 = f(position.getZ());
            for (int i10 = f12 - max; i10 <= f12 + max; i10++) {
                for (int i11 = f11 - max; i11 <= f11 + max; i11++) {
                    for (int i12 = f10 - max; i12 <= f10 + max; i12++) {
                        ArrayList<Integer> arrayList2 = this.f99779b.get(Long.valueOf(d(i12, i11, i10)));
                        if (arrayList2 != null) {
                            arrayList.addAll(arrayList2);
                        }
                    }
                }
            }
            return arrayList;
        }

        public final int f(float value) {
            return (int) Math.floor(value / this.f99778a);
        }
    }

    public static class g {

        public final NativeFloatBuffer f99780a;

        public final NativeFloatBuffer f99781b;

        public final NativeFloatBuffer f99782c;

        public final NativeFloatBuffer f99783d;

        public final NativeFloatBuffer f99784e;

        public final NativeFloatBuffer f99785f;

        public final NativeIntBuffer f99786g;

        public final NativeIntBuffer f99787h;

        public int f99788i;

        public g(int capacity) {
            this.f99780a = new NativeFloatBuffer(capacity);
            this.f99781b = new NativeFloatBuffer(capacity);
            this.f99782c = new NativeFloatBuffer(capacity);
            this.f99783d = new NativeFloatBuffer(capacity);
            this.f99784e = new NativeFloatBuffer(capacity);
            this.f99785f = new NativeFloatBuffer(capacity);
            this.f99786g = new NativeIntBuffer(capacity);
            this.f99787h = new NativeIntBuffer(capacity);
        }

        public void a() {
            this.f99780a.destroy();
            this.f99781b.destroy();
            this.f99782c.destroy();
            this.f99783d.destroy();
            this.f99784e.destroy();
            this.f99785f.destroy();
            this.f99786g.destroy();
            this.f99787h.destroy();
        }
    }

    static {
        System.loadLibrary("vertex");
    }

    public AmbientOcclusionRasterizer(List<BVHMesh> raycastVertices) {
        this.f99763a = raycastVertices;
    }

    public static float g(float ax, float ay, float bx, float by, float px, float py) {
        return ((px - ax) * (by - ay)) - ((py - ay) * (bx - ax));
    }

    private static native void nativeRasterizeRange(long posXPointer, long posYPointer, long posZPointer, long normalXPointer, long normalYPointer, long normalZPointer, long pixelXPointer, long pixelYPointer, int surfelCount, long cellStartsPointer, long cellCountsPointer, long cellIndicesPointer, long[] cellKeys, float cellSize, float radius, int maxOccluderSamples, float power, int aoWidth, int rangeStart, int rangeEnd, long outputPixelsPointer, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts);

    public final void c(int receiverIndex, g surfels, f hash, float radius, float power, b config, Bb.b ao, h scratch) {
        float f10;
        int i10;
        int i11;
        float f11 = surfels.f99780a.get(receiverIndex);
        float f12 = surfels.f99781b.get(receiverIndex);
        float f13 = surfels.f99782c.get(receiverIndex);
        float f14 = surfels.f99783d.get(receiverIndex);
        float f15 = surfels.f99784e.get(receiverIndex);
        float f16 = surfels.f99785f.get(receiverIndex);
        scratch.f99791c.set(f11, f12, f13);
        scratch.f99792d.set(f14, f15, f16);
        float f17 = radius * radius;
        List<Integer> e10 = hash.e(scratch.f99791c, radius);
        int size = e10.size();
        if (size <= 0) {
            return;
        }
        int i12 = config.f99765a;
        if (i12 <= 0 || size <= i12) {
            f10 = 0.0f;
            int i13 = 0;
            int i14 = 0;
            i10 = 0;
            while (i13 < size) {
                int i15 = i13;
                float o10 = o(receiverIndex, e10.get(i13).intValue(), f11, f12, f13, f14, f15, f16, surfels, radius, f17, scratch);
                f10 += o10;
                if (o10 > 0.0f) {
                    i14++;
                }
                i10++;
                i13 = i15 + 1;
            }
            i11 = i14;
        } else {
            float f18 = size / i12;
            f10 = 0.0f;
            int i16 = 0;
            i10 = 0;
            int i17 = 0;
            while (i16 < i12) {
                int i18 = i16;
                int i19 = i12;
                int i20 = size;
                List<Integer> list = e10;
                float f19 = f16;
                float f20 = f15;
                float f21 = f14;
                float f22 = f13;
                float f23 = f12;
                float f24 = f11;
                float o11 = o(receiverIndex, e10.get(Math.min(size - 1, (int) Math.floor(i16 * f18))).intValue(), f11, f12, f13, f14, f15, f19, surfels, radius, f17, scratch);
                f10 += o11;
                if (o11 > 0.0f) {
                    i17++;
                }
                i10++;
                i16 = i18 + 1;
                e10 = list;
                size = i20;
                i12 = i19;
                f16 = f19;
                f15 = f20;
                f14 = f21;
                f13 = f22;
                f12 = f23;
                f11 = f24;
            }
            i11 = i17;
        }
        if (i10 <= 0 || i11 <= 0 || f10 <= 0.0f) {
            return;
        }
        float pow = (float) Math.pow(f(2.0f * (f10 / Math.max(i11, 1))), Math.max(0.01f, power));
        if (pow <= 0.0f) {
            return;
        }
        ao.s(surfels.f99786g.get(receiverIndex), surfels.f99787h.get(receiverIndex), pow, pow, pow, 1.0f);
    }

    public final void d(Bb.b ao, c outputPixels) {
        int p10 = ao.p();
        int l10 = ao.l();
        int max = Math.max(1, p10 * l10 * 4);
        float[] fArr = new float[max];
        outputPixels.f99766a.get(0, fArr, 0, max);
        int i10 = 0;
        for (int i11 = 0; i11 < l10; i11++) {
            for (int i12 = 0; i12 < p10; i12++) {
                float f10 = fArr[i10];
                float f11 = fArr[i10 + 3];
                if (f11 > 0.0f) {
                    ao.s(i12, i11, f10, f10, f10, f11);
                }
                i10 += 4;
            }
        }
    }

    public final g e(Bb.b ao, List<Ug.h> bakeDataList) {
        NativeIntBuffer nativeIntBuffer;
        g gVar;
        int i10;
        int i11;
        n nVar;
        p pVar;
        q qVar;
        q qVar2;
        int i12;
        NativeIntBuffer nativeIntBuffer2;
        g gVar2;
        boolean z10;
        int i13;
        int i14;
        float f10;
        float f11;
        float f12;
        q qVar3;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        int i15;
        int i16;
        float f22;
        float f23;
        float f24;
        int i17;
        int i18;
        q qVar4;
        float f25;
        q qVar5;
        float f26;
        float f27;
        boolean z11;
        int i19;
        n nVar2;
        int i20;
        int i21;
        int i22;
        int i23;
        int p10 = ao.p();
        int l10 = ao.l();
        boolean z12 = true;
        int max = Math.max(1, p10 * l10);
        g gVar3 = new g(max);
        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(max);
        nativeIntBuffer3.fill(-1);
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        int i24 = 0;
        while (i24 < bakeDataList.size()) {
            try {
                try {
                    Ug.h hVar = bakeDataList.get(i24);
                    if (hVar != null && hVar.a() != null) {
                        Ug.g a10 = hVar.a();
                        q i25 = a10.i();
                        q c10 = a10.c();
                        p a11 = a10.a();
                        n g10 = a10.g();
                        if (i25 != null && a11 != null && g10 != null) {
                            int i26 = 0;
                            while (i26 < g10.b()) {
                                int h10 = g10.h(i26);
                                int i27 = g10.i(i26);
                                int j10 = g10.j(i26);
                                if (h10 >= 0 && i27 >= 0 && j10 >= 0 && h10 < a11.b() && i27 < a11.b() && j10 < a11.b() && h10 < i25.d() && i27 < i25.d() && j10 < i25.d()) {
                                    int i28 = p10 - 1;
                                    float f28 = i28;
                                    float i29 = a11.i(h10) * f28;
                                    int i30 = i24;
                                    boolean z13 = true;
                                    int i31 = l10 - 1;
                                    int i32 = i26;
                                    float f29 = i31;
                                    float j11 = (1.0f - a11.j(h10)) * f29;
                                    n nVar3 = g10;
                                    float i33 = a11.i(i27) * f28;
                                    g gVar4 = gVar3;
                                    float j12 = (1.0f - a11.j(i27)) * f29;
                                    try {
                                        float i34 = f28 * a11.i(j10);
                                        float j13 = f29 * (1.0f - a11.j(j10));
                                        float g11 = g(i29, j11, i33, j12, i34, j13);
                                        if (Math.abs(g11) <= 1.0E-5f) {
                                            i10 = p10;
                                            pVar = a11;
                                            qVar = c10;
                                            qVar2 = i25;
                                            nativeIntBuffer2 = nativeIntBuffer3;
                                            z10 = true;
                                            i12 = i30;
                                            i11 = i32;
                                            nVar = nVar3;
                                            gVar2 = gVar4;
                                            i26 = i11 + 1;
                                            a11 = pVar;
                                            c10 = qVar;
                                            i24 = i12;
                                            g10 = nVar;
                                            i25 = qVar2;
                                            p10 = i10;
                                            nativeIntBuffer3 = nativeIntBuffer2;
                                            gVar3 = gVar2;
                                            z12 = z10;
                                        } else {
                                            pVar = a11;
                                            q qVar6 = c10;
                                            int F10 = Nc.b.F(0, (int) Math.floor(Math.min(i29, Math.min(i33, i34))), i28);
                                            int F11 = Nc.b.F(0, (int) Math.ceil(Math.max(i29, Math.max(i33, i34))), i28);
                                            int F12 = Nc.b.F(0, (int) Math.floor(Math.min(j11, Math.min(j12, j13))), i31);
                                            int F13 = Nc.b.F(0, (int) Math.ceil(Math.max(j11, Math.max(j12, j13))), i31);
                                            q qVar7 = i25;
                                            float m10 = qVar7.m(h10);
                                            float n10 = qVar7.n(h10);
                                            float o10 = qVar7.o(h10);
                                            float m11 = qVar7.m(i27);
                                            float n11 = qVar7.n(i27);
                                            float o11 = qVar7.o(i27);
                                            float m12 = qVar7.m(j10);
                                            float n12 = qVar7.n(j10);
                                            float o12 = qVar7.o(j10);
                                            float f30 = n11 - n10;
                                            float f31 = o12 - o10;
                                            float f32 = o11 - o10;
                                            float f33 = n12 - n10;
                                            float f34 = (f30 * f31) - (f32 * f33);
                                            float f35 = m12 - m10;
                                            float f36 = m11 - m10;
                                            float f37 = (f32 * f35) - (f31 * f36);
                                            float f38 = (f36 * f33) - (f30 * f35);
                                            float f39 = (f34 * f34) + (f37 * f37) + (f38 * f38);
                                            if (f39 > 1.0E-8f) {
                                                i13 = i31;
                                                i14 = i28;
                                                float sqrt = 1.0f / ((float) Math.sqrt(f39));
                                                f10 = f34 * sqrt;
                                                f12 = f37 * sqrt;
                                                f11 = f38 * sqrt;
                                            } else {
                                                i13 = i31;
                                                i14 = i28;
                                                f10 = 0.0f;
                                                f11 = 0.0f;
                                                f12 = 1.0f;
                                            }
                                            if (qVar6 == null || h10 >= qVar6.d() || i27 >= qVar6.d() || j10 >= qVar6.d()) {
                                                qVar3 = qVar6;
                                                f13 = f10;
                                                f14 = f13;
                                                f15 = f14;
                                                f16 = f12;
                                                f17 = f16;
                                                f18 = f17;
                                                f19 = f11;
                                                f20 = f19;
                                                f21 = f20;
                                            } else {
                                                qVar3 = qVar6;
                                                float m13 = qVar3.m(h10);
                                                float n13 = qVar3.n(h10);
                                                float o13 = qVar3.o(h10);
                                                float m14 = qVar3.m(i27);
                                                float n14 = qVar3.n(i27);
                                                float o14 = qVar3.o(i27);
                                                float m15 = qVar3.m(j10);
                                                float n15 = qVar3.n(j10);
                                                f19 = o13;
                                                f20 = o14;
                                                f21 = qVar3.o(j10);
                                                f13 = m13;
                                                f16 = n13;
                                                f14 = m14;
                                                f17 = n14;
                                                f15 = m15;
                                                f18 = n15;
                                            }
                                            int i35 = F12;
                                            boolean z14 = false;
                                            while (i35 <= F13) {
                                                float f40 = i35 + 0.5f;
                                                int i36 = F10;
                                                int i37 = F11;
                                                while (i36 <= i37) {
                                                    float f41 = i36 + 0.5f;
                                                    float g12 = g(i33, j12, i34, j13, f41, f40) / g11;
                                                    float g13 = g(i34, j13, i29, j11, f41, f40) / g11;
                                                    float f42 = (1.0f - g12) - g13;
                                                    if (g12 < -1.0E-5f || g13 < -1.0E-5f || f42 < -1.0E-5f) {
                                                        i15 = p10;
                                                        i16 = i36;
                                                        f22 = i29;
                                                        f23 = j13;
                                                        f24 = i33;
                                                        i17 = i37;
                                                        i18 = F13;
                                                        qVar4 = qVar7;
                                                        f25 = j11;
                                                        qVar5 = qVar3;
                                                        nativeIntBuffer = nativeIntBuffer3;
                                                        f26 = j12;
                                                        f27 = i34;
                                                        z11 = z13;
                                                        i19 = i32;
                                                        nVar2 = nVar3;
                                                        gVar = gVar4;
                                                        i20 = i14;
                                                        i21 = i13;
                                                        i22 = i35;
                                                        i23 = i30;
                                                    } else {
                                                        i16 = i36;
                                                        f22 = i29;
                                                        int i38 = p10;
                                                        f23 = j13;
                                                        i19 = i32;
                                                        f24 = i33;
                                                        nVar2 = nVar3;
                                                        i18 = F13;
                                                        qVar5 = qVar3;
                                                        qVar4 = qVar7;
                                                        i17 = i37;
                                                        f25 = j11;
                                                        i15 = p10;
                                                        int i39 = i13;
                                                        i23 = i30;
                                                        i21 = i39;
                                                        i20 = i14;
                                                        i22 = i35;
                                                        nativeIntBuffer = nativeIntBuffer3;
                                                        f26 = j12;
                                                        gVar = gVar4;
                                                        f27 = i34;
                                                        z11 = z13;
                                                        try {
                                                            try {
                                                                q(i36, i35, i38, nativeIntBuffer3, gVar4, vector3, vector32, m10, n10, o10, m11, n11, o11, m12, n12, o12, f13, f16, f19, f14, f17, f20, f15, f18, f21, f10, f12, f11, g12, g13, f42);
                                                                z14 = z11;
                                                            } catch (RuntimeException e10) {
                                                                e = e10;
                                                                gVar.a();
                                                                throw e;
                                                            }
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            nativeIntBuffer.destroy();
                                                            throw th;
                                                        }
                                                    }
                                                    i36 = i16 + 1;
                                                    qVar3 = qVar5;
                                                    i35 = i22;
                                                    i30 = i23;
                                                    i29 = f22;
                                                    i32 = i19;
                                                    j13 = f23;
                                                    nVar3 = nVar2;
                                                    i33 = f24;
                                                    F13 = i18;
                                                    qVar7 = qVar4;
                                                    i37 = i17;
                                                    j11 = f25;
                                                    p10 = i15;
                                                    i14 = i20;
                                                    nativeIntBuffer3 = nativeIntBuffer;
                                                    gVar4 = gVar;
                                                    j12 = f26;
                                                    z13 = z11;
                                                    i34 = f27;
                                                    i13 = i21;
                                                }
                                                i35++;
                                                F11 = i37;
                                                p10 = p10;
                                                i14 = i14;
                                                i13 = i13;
                                            }
                                            i10 = p10;
                                            float f43 = i29;
                                            float f44 = j13;
                                            float f45 = i33;
                                            qVar2 = qVar7;
                                            float f46 = j11;
                                            qVar = qVar3;
                                            nativeIntBuffer2 = nativeIntBuffer3;
                                            float f47 = j12;
                                            float f48 = i34;
                                            z10 = z13;
                                            i11 = i32;
                                            nVar = nVar3;
                                            gVar2 = gVar4;
                                            int i40 = i14;
                                            int i41 = i13;
                                            i12 = i30;
                                            if (!z14) {
                                                q(Nc.b.F(0, Math.round(((f43 + f45) + f48) / 3.0f), i40), Nc.b.F(0, Math.round(((f46 + f47) + f44) / 3.0f), i41), i10, nativeIntBuffer2, gVar2, vector3, vector32, m10, n10, o10, m11, n11, o11, m12, n12, o12, f13, f16, f19, f14, f17, f20, f15, f18, f21, f10, f12, f11, 0.33333334f, 0.33333334f, 0.33333334f);
                                            }
                                            i26 = i11 + 1;
                                            a11 = pVar;
                                            c10 = qVar;
                                            i24 = i12;
                                            g10 = nVar;
                                            i25 = qVar2;
                                            p10 = i10;
                                            nativeIntBuffer3 = nativeIntBuffer2;
                                            gVar3 = gVar2;
                                            z12 = z10;
                                        }
                                    } catch (RuntimeException e11) {
                                        e = e11;
                                        nativeIntBuffer = nativeIntBuffer3;
                                        gVar = gVar4;
                                    }
                                }
                                i10 = p10;
                                i11 = i26;
                                nVar = g10;
                                pVar = a11;
                                qVar = c10;
                                qVar2 = i25;
                                i12 = i24;
                                nativeIntBuffer2 = nativeIntBuffer3;
                                gVar2 = gVar3;
                                z10 = z12;
                                i26 = i11 + 1;
                                a11 = pVar;
                                c10 = qVar;
                                i24 = i12;
                                g10 = nVar;
                                i25 = qVar2;
                                p10 = i10;
                                nativeIntBuffer3 = nativeIntBuffer2;
                                gVar3 = gVar2;
                                z12 = z10;
                            }
                        }
                    }
                    i24++;
                    p10 = p10;
                    nativeIntBuffer3 = nativeIntBuffer3;
                    gVar3 = gVar3;
                    z12 = z12;
                } catch (RuntimeException e12) {
                    e = e12;
                    nativeIntBuffer = nativeIntBuffer3;
                    gVar = gVar3;
                }
            } catch (Throwable th3) {
                th = th3;
                nativeIntBuffer = nativeIntBuffer3;
                nativeIntBuffer.destroy();
                throw th;
            }
        }
        g gVar5 = gVar3;
        nativeIntBuffer3.destroy();
        return gVar5;
    }

    public final float f(float value) {
        return Math.max(0.0f, Math.min(1.0f, value));
    }

    public final boolean h(Vector3 worldPosition, Vector3 worldNormal, Vector3 toOccluderDirection, float maxDistance, h scratch) {
        C3593a U10;
        if (maxDistance <= 0.01f) {
            return false;
        }
        C3595c c3595c = scratch.f99789a;
        Vector3 h10 = c3595c.h();
        h10.set(worldPosition);
        h10.addLocal(worldNormal, 0.01f);
        c3595c.e().set(toOccluderDirection);
        c3595c.f31954c = maxDistance - 0.01f;
        for (int i10 = 0; i10 < this.f99763a.size(); i10++) {
            BVHMesh bVHMesh = this.f99763a.get(i10);
            if (bVHMesh != null && bVHMesh.A() != null && bVHMesh.v() != null && (U10 = bVHMesh.U(c3595c, Vertex.RayMode.ClosestPoint, false)) != null && U10.getDistance() > 0.01f && U10.getDistance() < c3595c.f31954c) {
                return true;
            }
        }
        return false;
    }

    public final Object i(int i10, int i11, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, g gVar, long j18, long j19, long j20, e eVar, float f10, b bVar, float f11, Bb.b bVar2, long j21, d dVar, a.c cVar, AtomicInteger atomicInteger, int i12) throws Exception {
        int i13 = i10;
        while (i13 < i11) {
            int i14 = i13 + 256;
            int min = Math.min(i11, i14);
            int i15 = i13;
            nativeRasterizeRange(j10, j11, j12, j13, j14, j15, j16, j17, gVar.f99788i, j18, j19, j20, eVar.f99774b, eVar.f99773a, f10, bVar.f99765a, f11, bVar2.p(), i15, min, j21, dVar.f99767a, dVar.f99768b, dVar.f99769c, dVar.f99770d, dVar.f99771e, dVar.f99772f);
            if (cVar != null) {
                n(atomicInteger.addAndGet(min - i15), i12, cVar);
            }
            i13 = i14;
        }
        return null;
    }

    public final Object j(int i10, int i11, g gVar, f fVar, float f10, float f11, b bVar, Bb.b bVar2, a.c cVar, AtomicInteger atomicInteger, int i12) throws Exception {
        h hVar = new h(null);
        int i13 = i10;
        int i14 = i11;
        int i15 = 0;
        while (i13 < i14) {
            int i16 = i13;
            c(i13, gVar, fVar, f10, f11, bVar, bVar2, hVar);
            i15++;
            if (cVar != null && i15 >= 32) {
                n(atomicInteger.addAndGet(i15), i12, cVar);
                i15 = 0;
            }
            i13 = i16 + 1;
            i14 = i11;
        }
        int i17 = i15;
        if (cVar != null && i17 > 0) {
            n(atomicInteger.addAndGet(i17), i12, cVar);
        }
        return null;
    }

    public void k(ub.p aoTexture, List<Ug.h> bakeDataList, float radius, float power, AreaEditorComponent.q quality, a.c listener) {
        e b10;
        if (aoTexture == null || bakeDataList == null || radius <= 0.0f) {
            return;
        }
        b a10 = b.a(quality);
        Bb.b d10 = Bb.b.d(aoTexture, 50.0f);
        try {
            d10.f(0.0f, 0.0f, 0.0f, 0.0f);
            g e10 = e(d10, bakeDataList);
            try {
                if (e10.f99788i <= 0) {
                    if (listener != null) {
                        listener.a(0, 0, 1.0f, "");
                    }
                    d10.c();
                    e10.a();
                    return;
                }
                f fVar = new f(Math.max(radius * 0.5f, 0.5f));
                for (int i10 = 0; i10 < e10.f99788i; i10++) {
                    fVar.c(e10, i10);
                }
                try {
                    try {
                        b10 = e.b(fVar);
                    } catch (UnsatisfiedLinkError unused) {
                        m(e10, fVar, radius, power, a10, d10, listener);
                        e10.a();
                        d10.c();
                    }
                } catch (UnsatisfiedLinkError unused2) {
                    m(e10, fVar, radius, power, a10, d10, listener);
                    e10.a();
                    d10.c();
                }
                try {
                    d a11 = d.a(this.f99763a);
                    c cVar = new c(Math.max(1, d10.p() * d10.l() * 4));
                    try {
                        try {
                            l(e10, b10, a11, radius, power, a10, d10, cVar, listener);
                            cVar.a();
                            b10.a();
                            e10.a();
                            d10.c();
                        } catch (Throwable th2) {
                            cVar.a();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        b10.a();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                e10.a();
                throw th5;
            }
        } finally {
            d10.e();
        }
    }

    public final void l(final g surfels, final e hash, final d meshData, final float radius, final float power, final b config, final Bb.b ao, c outputPixels, final a.c listener) {
        int i10 = surfels.f99788i;
        if (i10 <= 0) {
            if (listener != null) {
                listener.a(0, 0, 1.0f, "");
                return;
            }
            return;
        }
        outputPixels.f99766a.fill(0.0f);
        int min = Math.min(Math.max(1, O9.b.a() - 2), i10);
        int max = Math.max(1, (int) Math.ceil(i10 / min));
        if (listener != null) {
            listener.a(0, i10, 0.0f, "");
        }
        final long criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99780a, 0L);
        final long criticalDirectCppPointer2 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99781b, 0L);
        final long criticalDirectCppPointer3 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99782c, 0L);
        final long criticalDirectCppPointer4 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99783d, 0L);
        final long criticalDirectCppPointer5 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99784e, 0L);
        final long criticalDirectCppPointer6 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99785f, 0L);
        final long criticalDirectCppPointer7 = NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99786g, 0L);
        final long criticalDirectCppPointer8 = NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99787h, 0L);
        final long criticalDirectCppPointer9 = NativeIntBuffer.getCriticalDirectCppPointer(hash.f99775c, 0L);
        final long criticalDirectCppPointer10 = NativeIntBuffer.getCriticalDirectCppPointer(hash.f99776d, 0L);
        final long criticalDirectCppPointer11 = NativeIntBuffer.getCriticalDirectCppPointer(hash.f99777e, 0L);
        final long criticalDirectCppPointer12 = NativeFloatBuffer.getCriticalDirectCppPointer(outputPixels.f99766a, 0L);
        final AtomicInteger atomicInteger = new AtomicInteger();
        ArrayList arrayList = new ArrayList(min);
        final int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 + max;
            final int min2 = Math.min(i10, i12);
            ArrayList arrayList2 = arrayList;
            final int i13 = i10;
            arrayList2.add(O9.b.c(new Callable() {
                @Override
                public final Object call() {
                    Object i14;
                    i14 = AmbientOcclusionRasterizer.this.i(i11, min2, criticalDirectCppPointer, criticalDirectCppPointer2, criticalDirectCppPointer3, criticalDirectCppPointer4, criticalDirectCppPointer5, criticalDirectCppPointer6, criticalDirectCppPointer7, criticalDirectCppPointer8, surfels, criticalDirectCppPointer9, criticalDirectCppPointer10, criticalDirectCppPointer11, hash, radius, config, power, ao, criticalDirectCppPointer12, meshData, listener, atomicInteger, i13);
                    return i14;
                }
            }));
            arrayList = arrayList2;
            i11 = i12;
            i10 = i13;
        }
        int i14 = i10;
        p(arrayList, "native AO");
        d(ao, outputPixels);
        if (listener != null) {
            n(i14, i14, listener);
        }
    }

    public final void m(final g surfels, final f hash, final float radius, final float power, final b config, final Bb.b ao, final a.c listener) {
        final int i10 = surfels.f99788i;
        if (i10 <= 0) {
            if (listener != null) {
                listener.a(0, 0, 1.0f, "");
                return;
            }
            return;
        }
        int min = Math.min(Math.max(1, O9.b.a() - 2), i10);
        int max = Math.max(1, (int) Math.ceil(i10 / min));
        if (listener != null) {
            listener.a(0, i10, 0.0f, "");
        }
        final AtomicInteger atomicInteger = new AtomicInteger();
        ArrayList arrayList = new ArrayList(min);
        final int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 + max;
            final int min2 = Math.min(i10, i12);
            ArrayList arrayList2 = arrayList;
            arrayList2.add(O9.b.c(new Callable() {
                @Override
                public final Object call() {
                    Object j10;
                    j10 = AmbientOcclusionRasterizer.this.j(i11, min2, surfels, hash, radius, power, config, ao, listener, atomicInteger, i10);
                    return j10;
                }
            }));
            arrayList = arrayList2;
            i11 = i12;
        }
        p(arrayList, "AO");
        if (listener != null) {
            n(i10, i10, listener);
        }
    }

    public final void n(int executed, int total, a.c listener) {
        int F10 = Nc.b.F(0, executed, total);
        listener.a(F10, total, total > 0 ? F10 / total : 1.0f, "");
    }

    public final float o(int receiverIndex, int occluderIndex, float receiverPosX, float receiverPosY, float receiverPosZ, float receiverNormalX, float receiverNormalY, float receiverNormalZ, g surfels, float radius, float radiusSq, h scratch) {
        if (occluderIndex == receiverIndex) {
            return 0.0f;
        }
        scratch.f99790b.set(surfels.f99780a.get(occluderIndex) - receiverPosX, surfels.f99781b.get(occluderIndex) - receiverPosY, surfels.f99782c.get(occluderIndex) - receiverPosZ);
        float lengthSquared = scratch.f99790b.lengthSquared();
        if (lengthSquared <= 1.0E-8f || lengthSquared > radiusSq) {
            return 0.0f;
        }
        float sqrt = (float) Math.sqrt(lengthSquared);
        scratch.f99790b.divLocal(sqrt);
        float f10 = f((scratch.f99790b.getX() * receiverNormalX) + (scratch.f99790b.getY() * receiverNormalY) + (scratch.f99790b.getZ() * receiverNormalZ));
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        float f11 = f((surfels.f99783d.get(occluderIndex) * (-scratch.f99790b.getX())) + (surfels.f99784e.get(occluderIndex) * (-scratch.f99790b.getY())) + (surfels.f99785f.get(occluderIndex) * (-scratch.f99790b.getZ())));
        if (f11 <= 0.0f || h(scratch.f99791c, scratch.f99792d, scratch.f99790b, sqrt, scratch)) {
            return 0.0f;
        }
        float f12 = 1.0f - f(sqrt / Math.max(radius, 0.01f));
        if (f12 <= 0.0f) {
            return 0.0f;
        }
        return f10 * ((f11 * 0.75f) + 0.25f) * f12;
    }

    public final void p(List<Future<?>> futures, String label) {
        for (int i10 = 0; i10 < futures.size(); i10++) {
            try {
                futures.get(i10).get();
            } catch (Exception e10) {
                throw new RuntimeException("Failed to rasterize " + label + " chunk", e10);
            }
        }
    }

    public final void q(int px, int py, int aoWidth, NativeIntBuffer surfelGrid, g surfels, Vector3 worldPosition, Vector3 worldNormal, float v0x, float v0y, float v0z, float v1x, float v1y, float v1z, float v2x, float v2y, float v2z, float n0x, float n0y, float n0z, float n1x, float n1y, float n1z, float n2x, float n2y, float n2z, float fnx, float fny, float fnz, float w02, float w12, float w22) {
        worldPosition.set((v0x * w02) + (v1x * w12) + (v2x * w22), (v0y * w02) + (v1y * w12) + (v2y * w22), (v0z * w02) + (v1z * w12) + (v2z * w22));
        worldNormal.set((n0x * w02) + (n1x * w12) + (n2x * w22), (n0y * w02) + (n1y * w12) + (n2y * w22), (n0z * w02) + (n1z * w12) + (n2z * w22));
        if (worldNormal.lengthSquared() <= 1.0E-8f) {
            worldNormal.set(fnx, fny, fnz);
        } else {
            worldNormal.normalizeLocal();
        }
        int i10 = (py * aoWidth) + px;
        int i11 = surfelGrid.get(i10);
        if (i11 < 0) {
            i11 = surfels.f99788i;
            surfelGrid.set(i10, i11);
            surfels.f99788i++;
        }
        surfels.f99786g.set(i11, px);
        surfels.f99787h.set(i11, py);
        surfels.f99780a.set(i11, worldPosition.getX());
        surfels.f99781b.set(i11, worldPosition.getY());
        surfels.f99782c.set(i11, worldPosition.getZ());
        surfels.f99783d.set(i11, worldNormal.getX());
        surfels.f99784e.set(i11, worldNormal.getY());
        surfels.f99785f.set(i11, worldNormal.getZ());
    }

    public static class h {

        public final C3595c f99789a;

        public final Vector3 f99790b;

        public final Vector3 f99791c;

        public final Vector3 f99792d;

        public h() {
            this.f99789a = new C3595c(new Vector3(), new Vector3(0.0f, 0.0f, 1.0f), 1.0f);
            this.f99790b = new Vector3();
            this.f99791c = new Vector3();
            this.f99792d = new Vector3();
        }

        public h(a aVar) {
            this();
        }
    }
}
