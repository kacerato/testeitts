package org.ITsMagic.Atlas;

import JAVARuntime.Vertex;
import aa.C3593a;
import aa.C3595c;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.AreaEditorComponent;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
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
import org.ITsMagic.Atlas.BounceGIRasterizer;
import org.ITsMagic.Atlas.a;
import vc.n;
import vc.p;
import vc.q;

public class BounceGIRasterizer {

    public static final int f99794c = 32;

    public static final int f99795d = 256;

    public static final float f99796e = 1.0E-5f;

    public static final float f99797f = 1.0E-8f;

    public static final boolean f99798g = true;

    public static final float f99799h = 0.01f;

    public static final float f99800i = 0.05f;

    public static final float f99801j = 0.05f;

    public static final float f99802k = 0.35f;

    public static final float f99803l = 0.25f;

    public final List<BVHMesh> f99804a;

    public final Bb.b f99805b;

    public class a implements Runnable {

        public final int f99806b;

        public final int f99807c;

        public final k f99808d;

        public final j f99809e;

        public final float f99810f;

        public final d f99811g;

        public final boolean f99812h;

        public final Bb.b f99813i;

        public final a.c f99814j;

        public final AtomicInteger f99815k;

        public final int f99816l;

        public a(final int val$rangeStart, final int val$rangeEnd, final k val$surfels, final j val$hash, final float val$maxBounceDistance, final d val$config, final boolean val$useGiVisibility, final Bb.b val$gi, final a.c val$listener, final AtomicInteger val$executedCount, final int val$total) {
            this.f99806b = val$rangeStart;
            this.f99807c = val$rangeEnd;
            this.f99808d = val$surfels;
            this.f99809e = val$hash;
            this.f99810f = val$maxBounceDistance;
            this.f99811g = val$config;
            this.f99812h = val$useGiVisibility;
            this.f99813i = val$gi;
            this.f99814j = val$listener;
            this.f99815k = val$executedCount;
            this.f99816l = val$total;
        }

        @Override
        public void run() {
            l lVar = new l(null);
            int i10 = 0;
            for (int i11 = this.f99806b; i11 < this.f99807c; i11++) {
                BounceGIRasterizer.this.f(i11, this.f99808d, this.f99809e, this.f99810f, this.f99811g, this.f99812h, this.f99813i, lVar);
                i10++;
                if (this.f99814j != null && i10 >= 32) {
                    BounceGIRasterizer.this.x(this.f99815k.addAndGet(i10), this.f99816l, this.f99814j);
                    i10 = 0;
                }
            }
            if (this.f99814j == null || i10 <= 0) {
                return;
            }
            BounceGIRasterizer.this.x(this.f99815k.addAndGet(i10), this.f99816l, this.f99814j);
        }
    }

    public static class b {

        public static final int[] f99818a;

        static {
            int[] iArr = new int[AreaEditorComponent.r.values().length];
            f99818a = iArr;
            try {
                iArr[AreaEditorComponent.r.SHORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f99818a[AreaEditorComponent.r.BALANCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f99818a[AreaEditorComponent.r.LONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class c {

        public float f99819a;

        public float f99820b;

        public float f99821c;

        public c() {
        }

        public c(a aVar) {
            this();
        }
    }

    public static class d {

        public final float f99822a;

        public final float f99823b;

        public final int f99824c;

        public d(float emitterThreshold, float radiusMultiplier, int maxEmitterSamples) {
            this.f99822a = emitterThreshold;
            this.f99823b = radiusMultiplier;
            this.f99824c = maxEmitterSamples;
        }

        public static d a(AreaEditorComponent.r mode) {
            if (mode == null) {
                mode = AreaEditorComponent.r.BALANCED;
            }
            int i10 = b.f99818a[mode.ordinal()];
            if (i10 == 1) {
                return new d(0.0015f, 0.68f, 1024);
            }
            if (i10 == 2) {
                return new d(0.0015f, 1.1f, 1024);
            }
            if (i10 == 3) {
                return new d(0.0015f, 1.6f, 1024);
            }
            throw new RuntimeException();
        }
    }

    public static class e {

        public final f f99825a;

        public final float f99826b;

        public e(f emitters, float maxBounceDistance) {
            this.f99825a = emitters;
            this.f99826b = maxBounceDistance;
        }
    }

    public static class f {

        public final NativeIntBuffer f99827a;

        public int f99828b;

        public f(int capacity) {
            this.f99827a = new NativeIntBuffer(capacity);
        }

        public void a() {
            this.f99827a.destroy();
        }
    }

    public static class g {

        public final NativeFloatBuffer f99829a;

        public g(int capacity) {
            this.f99829a = new NativeFloatBuffer(capacity);
        }

        public void a() {
            this.f99829a.destroy();
        }
    }

    public static class h {

        public final long[] f99830a;

        public final long[] f99831b;

        public final long[] f99832c;

        public final long[] f99833d;

        public final long[] f99834e;

        public final int[] f99835f;

        public h(long[] verticesPointers, long[] trianglesPointers, long[] nodeBoundsPointers, long[] nodeMetaPointers, long[] triangleOrderPointers, int[] nodeCounts) {
            this.f99830a = verticesPointers;
            this.f99831b = trianglesPointers;
            this.f99832c = nodeBoundsPointers;
            this.f99833d = nodeMetaPointers;
            this.f99834e = triangleOrderPointers;
            this.f99835f = nodeCounts;
        }

        public static h a() {
            return new h(null, null, null, null, null, null);
        }

        public static h b(List<BVHMesh> meshes) {
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
            return new h(d(arrayList), d(arrayList2), d(arrayList3), d(arrayList4), d(arrayList5), c(arrayList6));
        }

        public static int[] c(List<Integer> values) {
            int[] iArr = new int[values.size()];
            for (int i10 = 0; i10 < values.size(); i10++) {
                iArr[i10] = values.get(i10).intValue();
            }
            return iArr;
        }

        public static long[] d(List<Long> values) {
            long[] jArr = new long[values.size()];
            for (int i10 = 0; i10 < values.size(); i10++) {
                jArr[i10] = values.get(i10).longValue();
            }
            return jArr;
        }
    }

    public static class i {

        public final float f99836a;

        public final long[] f99837b;

        public final NativeIntBuffer f99838c;

        public final NativeIntBuffer f99839d;

        public final NativeIntBuffer f99840e;

        public i(float cellSize, long[] cellKeys, NativeIntBuffer cellStarts, NativeIntBuffer cellCounts, NativeIntBuffer cellIndices) {
            this.f99836a = cellSize;
            this.f99837b = cellKeys;
            this.f99838c = cellStarts;
            this.f99839d = cellCounts;
            this.f99840e = cellIndices;
        }

        public static i b(j hash) {
            ArrayList arrayList = new ArrayList(hash.f99842b.o());
            Collections.sort(arrayList);
            int size = arrayList.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                ArrayList arrayList2 = (ArrayList) hash.f99842b.get(arrayList.get(i11));
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
                ArrayList arrayList3 = (ArrayList) hash.f99842b.get(l10);
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
            return new i(hash.f99841a, jArr, nativeIntBuffer, nativeIntBuffer2, nativeIntBuffer3);
        }

        public void a() {
            this.f99838c.destroy();
            this.f99839d.destroy();
            this.f99840e.destroy();
        }
    }

    public static class j {

        public final float f99841a;

        public final HashMap<Long, ArrayList<Integer>> f99842b = new HashMap<>();

        public j(float cellSize) {
            this.f99841a = cellSize;
        }

        public void c(k surfels, int surfelIndex) {
            long d10 = d(f(surfels.f99843a.get(surfelIndex)), f(surfels.f99844b.get(surfelIndex)), f(surfels.f99845c.get(surfelIndex)));
            ArrayList<Integer> arrayList = this.f99842b.get(Long.valueOf(d10));
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f99842b.put(Long.valueOf(d10), arrayList);
            }
            arrayList.add(Integer.valueOf(surfelIndex));
        }

        public final long d(int x10, int y10, int z10) {
            return ((y10 & 2097151) << 21) | ((x10 & 2097151) << 42) | (2097151 & z10);
        }

        public List<Integer> e(Vector3 position, float radius) {
            ArrayList arrayList = new ArrayList();
            int max = Math.max(1, (int) Math.ceil(radius / this.f99841a));
            int f10 = f(position.getX());
            int f11 = f(position.getY());
            int f12 = f(position.getZ());
            for (int i10 = f12 - max; i10 <= f12 + max; i10++) {
                for (int i11 = f11 - max; i11 <= f11 + max; i11++) {
                    for (int i12 = f10 - max; i12 <= f10 + max; i12++) {
                        ArrayList<Integer> arrayList2 = this.f99842b.get(Long.valueOf(d(i12, i11, i10)));
                        if (arrayList2 != null) {
                            arrayList.addAll(arrayList2);
                        }
                    }
                }
            }
            return arrayList;
        }

        public final int f(float value) {
            return (int) Math.floor(value / this.f99841a);
        }
    }

    public static class k {

        public final NativeFloatBuffer f99843a;

        public final NativeFloatBuffer f99844b;

        public final NativeFloatBuffer f99845c;

        public final NativeFloatBuffer f99846d;

        public final NativeFloatBuffer f99847e;

        public final NativeFloatBuffer f99848f;

        public final NativeFloatBuffer f99849g;

        public final NativeFloatBuffer f99850h;

        public final NativeFloatBuffer f99851i;

        public final NativeFloatBuffer f99852j;

        public final NativeIntBuffer f99853k;

        public final NativeIntBuffer f99854l;

        public int f99855m;

        public k(int capacity) {
            this.f99843a = new NativeFloatBuffer(capacity);
            this.f99844b = new NativeFloatBuffer(capacity);
            this.f99845c = new NativeFloatBuffer(capacity);
            this.f99846d = new NativeFloatBuffer(capacity);
            this.f99847e = new NativeFloatBuffer(capacity);
            this.f99848f = new NativeFloatBuffer(capacity);
            this.f99849g = new NativeFloatBuffer(capacity);
            this.f99850h = new NativeFloatBuffer(capacity);
            this.f99851i = new NativeFloatBuffer(capacity);
            this.f99852j = new NativeFloatBuffer(capacity);
            this.f99853k = new NativeIntBuffer(capacity);
            this.f99854l = new NativeIntBuffer(capacity);
        }

        public void a() {
            this.f99843a.destroy();
            this.f99844b.destroy();
            this.f99845c.destroy();
            this.f99846d.destroy();
            this.f99847e.destroy();
            this.f99848f.destroy();
            this.f99849g.destroy();
            this.f99850h.destroy();
            this.f99851i.destroy();
            this.f99852j.destroy();
            this.f99853k.destroy();
            this.f99854l.destroy();
        }
    }

    static {
        System.loadLibrary("vertex");
    }

    public BounceGIRasterizer(List<BVHMesh> raycastVertices, Bb.b normalAtlasTexture) {
        this.f99804a = raycastVertices;
        this.f99805b = normalAtlasTexture;
    }

    private static native int nativeBuildEmitterIndices(long emitLumaPointer, int surfelCount, float emitterThreshold, long outputIndicesPointer);

    private static native float nativeComputeMaxBounceDistance(long posXPointer, long posYPointer, long posZPointer, int surfelCount, long emitterIndicesPointer, int emitterCount, float radiusMultiplier);

    private static native void nativeRasterizeRange(long posXPointer, long posYPointer, long posZPointer, long normalXPointer, long normalYPointer, long normalZPointer, long emitRPointer, long emitGPointer, long emitBPointer, long pixelXPointer, long pixelYPointer, int surfelCount, long cellStartsPointer, long cellCountsPointer, long cellIndicesPointer, long[] cellKeys, float cellSize, float maxBounceDistance, int maxEmitterSamples, int giWidth, int rangeStart, int rangeEnd, long outputPixelsPointer, boolean useGiVisibility, long[] meshVerticesPointers, long[] meshTrianglesPointers, long[] meshNodeBoundsPointers, long[] meshNodeMetaPointers, long[] meshTriangleOrderPointers, int[] meshNodeCounts);

    public static float o(float ax, float ay, float bx, float by, float px, float py) {
        return ((px - ax) * (by - ay)) - ((py - ay) * (bx - ax));
    }

    public static Object s(Runnable runnable) throws Exception {
        runnable.run();
        return null;
    }

    public final boolean e(int receiverIndex, float receiverPosX, float receiverPosY, float receiverPosZ, float receiverNormalX, float receiverNormalY, float receiverNormalZ, int emitterIndex, k surfels, float maxBounceDistance, float maxDistanceSq, boolean useGiVisibility, l scratch) {
        if (emitterIndex == receiverIndex) {
            return false;
        }
        float f10 = surfels.f99849g.get(receiverIndex);
        float f11 = surfels.f99850h.get(receiverIndex);
        float f12 = surfels.f99851i.get(receiverIndex);
        float f13 = surfels.f99849g.get(emitterIndex);
        float f14 = surfels.f99850h.get(emitterIndex);
        float f15 = surfels.f99851i.get(emitterIndex);
        boolean z10 = f13 > f10;
        boolean z11 = f14 > f11;
        boolean z12 = f15 > f12;
        if (!z10 && !z11 && !z12) {
            return false;
        }
        scratch.f99857b.set(surfels.f99843a.get(emitterIndex) - receiverPosX, surfels.f99844b.get(emitterIndex) - receiverPosY, surfels.f99845c.get(emitterIndex) - receiverPosZ);
        float lengthSquared = scratch.f99857b.lengthSquared();
        if (lengthSquared <= 1.0E-8f || lengthSquared > maxDistanceSq) {
            return false;
        }
        float sqrt = (float) Math.sqrt(lengthSquared);
        scratch.f99857b.divLocal(sqrt);
        float t10 = t((scratch.f99857b.getX() * receiverNormalX) + (scratch.f99857b.getY() * receiverNormalY) + (scratch.f99857b.getZ() * receiverNormalZ));
        if (t10 <= 1.0E-8f) {
            return false;
        }
        float t11 = t((surfels.f99846d.get(emitterIndex) * (-scratch.f99857b.getX())) + (surfels.f99847e.get(emitterIndex) * (-scratch.f99857b.getY())) + (surfels.f99848f.get(emitterIndex) * (-scratch.f99857b.getZ())));
        if (t11 <= 1.0E-8f) {
            return false;
        }
        if (useGiVisibility && q(scratch.f99858c, scratch.f99859d, scratch.f99857b, sqrt, scratch)) {
            return false;
        }
        float m10 = m(lengthSquared, maxBounceDistance);
        if (m10 <= 0.0f) {
            return false;
        }
        float f16 = t10 * ((t11 * 0.65f) + 0.35f) * m10;
        c cVar = scratch.f99860e;
        cVar.f99819a = z10 ? f13 * f16 : 0.0f;
        cVar.f99820b = z11 ? f14 * f16 : 0.0f;
        cVar.f99821c = z12 ? f15 * f16 : 0.0f;
        return true;
    }

    public final void f(int receiverIndex, k surfels, j hash, float maxBounceDistance, d config, boolean useGiVisibility, Bb.b gi2, l scratch) {
        float f10;
        float f11;
        float f12;
        float f13 = surfels.f99843a.get(receiverIndex);
        float f14 = surfels.f99844b.get(receiverIndex);
        float f15 = surfels.f99845c.get(receiverIndex);
        float f16 = surfels.f99846d.get(receiverIndex);
        float f17 = surfels.f99847e.get(receiverIndex);
        float f18 = surfels.f99848f.get(receiverIndex);
        scratch.f99858c.set(f13, f14, f15);
        scratch.f99859d.set(f16, f17, f18);
        float f19 = maxBounceDistance * maxBounceDistance;
        List<Integer> e10 = hash.e(scratch.f99858c, maxBounceDistance);
        int size = e10.size();
        int i10 = config.f99824c;
        if (i10 <= 0 || size <= i10) {
            List<Integer> list = e10;
            int i11 = 0;
            f10 = 0.0f;
            f11 = 0.0f;
            f12 = 0.0f;
            while (i11 < size) {
                int i12 = i11;
                List<Integer> list2 = list;
                if (e(receiverIndex, f13, f14, f15, f16, f17, f18, list.get(i11).intValue(), surfels, maxBounceDistance, f19, useGiVisibility, scratch)) {
                    c cVar = scratch.f99860e;
                    f10 += cVar.f99819a;
                    f11 += cVar.f99820b;
                    f12 += cVar.f99821c;
                }
                i11 = i12 + 1;
                list = list2;
            }
        } else {
            int[] iArr = new int[i10];
            float[] fArr = new float[i10];
            int i13 = 0;
            int i14 = 0;
            while (i13 < size) {
                int intValue = e10.get(i13).intValue();
                float[] fArr2 = fArr;
                int[] iArr2 = iArr;
                int i15 = i10;
                int i16 = size;
                List<Integer> list3 = e10;
                float f20 = f18;
                float f21 = f17;
                float f22 = f16;
                float f23 = f15;
                float f24 = f14;
                float f25 = f13;
                float l10 = l(receiverIndex, f13, f14, f15, f16, f17, f20, intValue, surfels, f19);
                if (l10 > 0.0f) {
                    if (i14 < i15) {
                        iArr2[i14] = intValue;
                        fArr2[i14] = l10;
                        i14++;
                    } else {
                        float f26 = fArr2[0];
                        int i17 = 0;
                        for (int i18 = 1; i18 < i15; i18++) {
                            float f27 = fArr2[i18];
                            if (f27 < f26) {
                                i17 = i18;
                                f26 = f27;
                            }
                        }
                        if (l10 > f26) {
                            iArr2[i17] = intValue;
                            fArr2[i17] = l10;
                        }
                    }
                }
                i13++;
                i10 = i15;
                e10 = list3;
                size = i16;
                fArr = fArr2;
                iArr = iArr2;
                f18 = f20;
                f17 = f21;
                f16 = f22;
                f15 = f23;
                f14 = f24;
                f13 = f25;
            }
            int[] iArr3 = iArr;
            float f28 = f18;
            float f29 = f17;
            float f30 = f16;
            float f31 = f15;
            float f32 = f14;
            float f33 = f13;
            int i19 = 0;
            f10 = 0.0f;
            f11 = 0.0f;
            f12 = 0.0f;
            while (i19 < i14) {
                int i20 = i14;
                if (e(receiverIndex, f33, f32, f31, f30, f29, f28, iArr3[i19], surfels, maxBounceDistance, f19, useGiVisibility, scratch)) {
                    c cVar2 = scratch.f99860e;
                    f10 += cVar2.f99819a;
                    f11 += cVar2.f99820b;
                    f12 += cVar2.f99821c;
                }
                i19++;
                i14 = i20;
            }
        }
        float f34 = f10;
        float f35 = f11;
        float f36 = f12;
        if (f34 > 0.0f || f35 > 0.0f || f36 > 0.0f) {
            gi2.s(surfels.f99853k.get(receiverIndex), surfels.f99854l.get(receiverIndex), k(f34), k(f35), k(f36), 1.0f);
        }
    }

    public final void g(Bb.b gi2, g outputPixels) {
        int p10 = gi2.p();
        int l10 = gi2.l();
        int max = Math.max(1, p10 * l10 * 4);
        float[] fArr = new float[max];
        outputPixels.f99829a.get(0, fArr, 0, max);
        int i10 = 0;
        for (int i11 = 0; i11 < l10; i11++) {
            for (int i12 = 0; i12 < p10; i12++) {
                float f10 = fArr[i10];
                float f11 = fArr[i10 + 1];
                float f12 = fArr[i10 + 2];
                float f13 = fArr[i10 + 3];
                if (f13 > 0.0f) {
                    gi2.s(i12, i11, f10, f11, f12, f13);
                }
                i10 += 4;
            }
        }
    }

    public final f h(k surfels, float emitterThreshold) {
        f fVar = new f(Math.max(1, surfels.f99855m));
        for (int i10 = 0; i10 < surfels.f99855m; i10++) {
            try {
                if (surfels.f99852j.get(i10) > emitterThreshold) {
                    fVar.f99827a.set(fVar.f99828b, i10);
                    fVar.f99828b++;
                }
            } catch (RuntimeException e10) {
                fVar.a();
                throw e10;
            }
        }
        return fVar;
    }

    public final e i(k surfels, d config) {
        f fVar = new f(Math.max(1, surfels.f99855m));
        try {
            long criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99852j, 0L);
            long criticalDirectCppPointer2 = NativeIntBuffer.getCriticalDirectCppPointer(fVar.f99827a, 0L);
            int nativeBuildEmitterIndices = nativeBuildEmitterIndices(criticalDirectCppPointer, surfels.f99855m, config.f99822a, criticalDirectCppPointer2);
            fVar.f99828b = nativeBuildEmitterIndices;
            return nativeBuildEmitterIndices <= 0 ? new e(fVar, 1.0f) : new e(fVar, nativeComputeMaxBounceDistance(NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99843a, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99844b, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99845c, 0L), surfels.f99855m, criticalDirectCppPointer2, fVar.f99828b, config.f99823b));
        } catch (RuntimeException e10) {
            fVar.a();
            throw e10;
        } catch (UnsatisfiedLinkError unused) {
            fVar.a();
            f h10 = h(surfels, config.f99822a);
            return new e(h10, n(surfels, h10, config));
        }
    }

    public final k j(Bb.b gi2, Bb.b direct, Bb.b albedo, Bb.b emissive, List<Ug.h> bakeDataList, float bounceIntensity) {
        NativeIntBuffer nativeIntBuffer;
        k kVar;
        int i10;
        int i11;
        n nVar;
        p pVar;
        q qVar;
        q qVar2;
        int i12;
        NativeIntBuffer nativeIntBuffer2;
        k kVar2;
        boolean z10;
        q qVar3;
        float f10;
        float f11;
        float f12;
        q qVar4;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        int i13;
        int i14;
        float f22;
        float f23;
        int i15;
        int i16;
        q qVar5;
        int i17;
        float f24;
        float f25;
        int i18;
        float f26;
        int i19;
        float f27;
        int i20;
        int i21;
        n nVar2;
        p pVar2;
        q qVar6;
        int p10 = gi2.p();
        int l10 = gi2.l();
        boolean z11 = true;
        int max = Math.max(1, p10 * l10);
        k kVar3 = new k(max);
        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(max);
        nativeIntBuffer3.fill(-1);
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        int i22 = 0;
        while (i22 < bakeDataList.size()) {
            try {
                Ug.h hVar = bakeDataList.get(i22);
                if (hVar != null && hVar.a() != null) {
                    Ug.g a10 = hVar.a();
                    q i23 = a10.i();
                    q c10 = a10.c();
                    p a11 = a10.a();
                    n g10 = a10.g();
                    if (i23 != null && a11 != null && g10 != null) {
                        int i24 = 0;
                        while (i24 < g10.b()) {
                            int h10 = g10.h(i24);
                            int i25 = g10.i(i24);
                            int j10 = g10.j(i24);
                            if (h10 >= 0 && i25 >= 0 && j10 >= 0 && h10 < a11.b() && i25 < a11.b() && j10 < a11.b() && h10 < i23.d() && i25 < i23.d() && j10 < i23.d()) {
                                int i26 = p10 - 1;
                                float f28 = i26;
                                float i27 = a11.i(h10) * f28;
                                k kVar4 = kVar3;
                                int i28 = l10 - 1;
                                int i29 = i24;
                                float f29 = i28;
                                NativeIntBuffer nativeIntBuffer4 = nativeIntBuffer3;
                                float j11 = (1.0f - a11.j(h10)) * f29;
                                try {
                                    int i30 = i22;
                                    float i31 = a11.i(i25) * f28;
                                    float j12 = (1.0f - a11.j(i25)) * f29;
                                    float i32 = f28 * a11.i(j10);
                                    float j13 = f29 * (1.0f - a11.j(j10));
                                    float o10 = o(i27, j11, i31, j12, i32, j13);
                                    if (Math.abs(o10) <= 1.0E-5f) {
                                        i10 = p10;
                                        nVar = g10;
                                        pVar = a11;
                                        qVar = c10;
                                        qVar2 = i23;
                                        kVar2 = kVar4;
                                        i11 = i29;
                                        nativeIntBuffer2 = nativeIntBuffer4;
                                        i12 = i30;
                                        z10 = true;
                                    } else {
                                        n nVar3 = g10;
                                        p pVar3 = a11;
                                        int F10 = Nc.b.F(0, (int) Math.floor(Math.min(i27, Math.min(i31, i32))), i26);
                                        q qVar7 = c10;
                                        int F11 = Nc.b.F(0, (int) Math.ceil(Math.max(i27, Math.max(i31, i32))), i26);
                                        int F12 = Nc.b.F(0, (int) Math.floor(Math.min(j11, Math.min(j12, j13))), i28);
                                        int F13 = Nc.b.F(0, (int) Math.ceil(Math.max(j11, Math.max(j12, j13))), i28);
                                        float m10 = i23.m(h10);
                                        float n10 = i23.n(h10);
                                        float o11 = i23.o(h10);
                                        float m11 = i23.m(i25);
                                        float n11 = i23.n(i25);
                                        float o12 = i23.o(i25);
                                        float m12 = i23.m(j10);
                                        float n12 = i23.n(j10);
                                        float o13 = i23.o(j10);
                                        float f30 = n11 - n10;
                                        float f31 = o13 - o11;
                                        float f32 = o12 - o11;
                                        float f33 = n12 - n10;
                                        float f34 = (f30 * f31) - (f32 * f33);
                                        float f35 = m12 - m10;
                                        float f36 = m11 - m10;
                                        float f37 = (f32 * f35) - (f31 * f36);
                                        float f38 = (f36 * f33) - (f30 * f35);
                                        float f39 = (f34 * f34) + (f37 * f37) + (f38 * f38);
                                        if (f39 > 1.0E-8f) {
                                            qVar3 = i23;
                                            float sqrt = 1.0f / ((float) Math.sqrt(f39));
                                            f10 = f34 * sqrt;
                                            f12 = f37 * sqrt;
                                            f11 = f38 * sqrt;
                                        } else {
                                            qVar3 = i23;
                                            f10 = 0.0f;
                                            f11 = 0.0f;
                                            f12 = 1.0f;
                                        }
                                        if (qVar7 == null || h10 >= qVar7.d() || i25 >= qVar7.d() || j10 >= qVar7.d()) {
                                            qVar4 = qVar7;
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
                                            qVar4 = qVar7;
                                            float m13 = qVar4.m(h10);
                                            float n13 = qVar4.n(h10);
                                            float o14 = qVar4.o(h10);
                                            float m14 = qVar4.m(i25);
                                            float n14 = qVar4.n(i25);
                                            float o15 = qVar4.o(i25);
                                            float m15 = qVar4.m(j10);
                                            float n15 = qVar4.n(j10);
                                            f19 = o14;
                                            f20 = o15;
                                            f21 = qVar4.o(j10);
                                            f13 = m13;
                                            f16 = n13;
                                            f14 = m14;
                                            f17 = n14;
                                            f15 = m15;
                                            f18 = n15;
                                        }
                                        int i33 = F12;
                                        boolean z12 = false;
                                        while (i33 <= F13) {
                                            float f40 = i33 + 0.5f;
                                            int i34 = F11;
                                            int i35 = F10;
                                            while (i35 <= i34) {
                                                float f41 = i35 + 0.5f;
                                                float o16 = o(i31, j12, i32, j13, f41, f40) / o10;
                                                float o17 = o(i32, j13, i27, j11, f41, f40) / o10;
                                                float f42 = (1.0f - o16) - o17;
                                                if (o16 < -1.0E-5f || o17 < -1.0E-5f || f42 < -1.0E-5f) {
                                                    i13 = p10;
                                                    i14 = i35;
                                                    f22 = i27;
                                                    f23 = j13;
                                                    i15 = i34;
                                                    i16 = F13;
                                                    qVar5 = qVar4;
                                                    i17 = i33;
                                                    f24 = j12;
                                                    f25 = i31;
                                                    i18 = i26;
                                                    f26 = j11;
                                                    i19 = i28;
                                                    f27 = i32;
                                                    kVar = kVar4;
                                                    i20 = i29;
                                                    nativeIntBuffer = nativeIntBuffer4;
                                                    i21 = i30;
                                                    nVar2 = nVar3;
                                                    pVar2 = pVar3;
                                                    qVar6 = qVar3;
                                                } else {
                                                    i14 = i35;
                                                    f22 = i27;
                                                    f23 = j13;
                                                    i20 = i29;
                                                    nVar2 = nVar3;
                                                    i16 = F13;
                                                    pVar2 = pVar3;
                                                    qVar5 = qVar4;
                                                    i15 = i34;
                                                    i17 = i33;
                                                    qVar6 = qVar3;
                                                    f24 = j12;
                                                    f25 = i31;
                                                    i21 = i30;
                                                    i13 = p10;
                                                    i18 = i26;
                                                    f26 = j11;
                                                    nativeIntBuffer = nativeIntBuffer4;
                                                    i19 = i28;
                                                    kVar = kVar4;
                                                    f27 = i32;
                                                    try {
                                                        try {
                                                            z(i35, i33, p10, l10, o16, o17, f42, direct, albedo, emissive, nativeIntBuffer4, kVar4, bounceIntensity, vector3, vector32, m10, n10, o11, m11, n11, o12, m12, n12, o13, f13, f16, f19, f14, f17, f20, f15, f18, f21, f10, f12, f11);
                                                            z12 = true;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            nativeIntBuffer.destroy();
                                                            throw th;
                                                        }
                                                    } catch (RuntimeException e10) {
                                                        e = e10;
                                                        kVar.a();
                                                        throw e;
                                                    }
                                                }
                                                i35 = i14 + 1;
                                                i27 = f22;
                                                i29 = i20;
                                                j13 = f23;
                                                nVar3 = nVar2;
                                                pVar3 = pVar2;
                                                F13 = i16;
                                                qVar4 = qVar5;
                                                i34 = i15;
                                                qVar3 = qVar6;
                                                i33 = i17;
                                                j12 = f24;
                                                i30 = i21;
                                                i31 = f25;
                                                p10 = i13;
                                                i26 = i18;
                                                nativeIntBuffer4 = nativeIntBuffer;
                                                j11 = f26;
                                                kVar4 = kVar;
                                                i28 = i19;
                                                i32 = f27;
                                            }
                                            i33++;
                                            F11 = i34;
                                            p10 = p10;
                                        }
                                        i10 = p10;
                                        float f43 = i27;
                                        float f44 = j13;
                                        qVar = qVar4;
                                        float f45 = j12;
                                        float f46 = i31;
                                        int i36 = i26;
                                        float f47 = j11;
                                        int i37 = i28;
                                        float f48 = i32;
                                        kVar2 = kVar4;
                                        i11 = i29;
                                        nativeIntBuffer2 = nativeIntBuffer4;
                                        i12 = i30;
                                        nVar = nVar3;
                                        pVar = pVar3;
                                        qVar2 = qVar3;
                                        z10 = true;
                                        if (!z12) {
                                            z(Nc.b.F(0, Math.round(((f43 + f46) + f48) / 3.0f), i36), Nc.b.F(0, Math.round(((f47 + f45) + f44) / 3.0f), i37), i10, l10, 0.33333334f, 0.33333334f, 0.33333334f, direct, albedo, emissive, nativeIntBuffer2, kVar2, bounceIntensity, vector3, vector32, m10, n10, o11, m11, n11, o12, m12, n12, o13, f13, f16, f19, f14, f17, f20, f15, f18, f21, f10, f12, f11);
                                        }
                                    }
                                    i24 = i11 + 1;
                                    g10 = nVar;
                                    a11 = pVar;
                                    c10 = qVar;
                                    i23 = qVar2;
                                    i22 = i12;
                                    p10 = i10;
                                    nativeIntBuffer3 = nativeIntBuffer2;
                                    kVar3 = kVar2;
                                    z11 = z10;
                                } catch (RuntimeException e11) {
                                    e = e11;
                                    kVar = kVar4;
                                    nativeIntBuffer = nativeIntBuffer4;
                                } catch (Throwable th3) {
                                    th = th3;
                                    nativeIntBuffer = nativeIntBuffer4;
                                    nativeIntBuffer.destroy();
                                    throw th;
                                }
                            }
                            i10 = p10;
                            i11 = i24;
                            nVar = g10;
                            pVar = a11;
                            qVar = c10;
                            qVar2 = i23;
                            i12 = i22;
                            nativeIntBuffer2 = nativeIntBuffer3;
                            kVar2 = kVar3;
                            z10 = z11;
                            i24 = i11 + 1;
                            g10 = nVar;
                            a11 = pVar;
                            c10 = qVar;
                            i23 = qVar2;
                            i22 = i12;
                            p10 = i10;
                            nativeIntBuffer3 = nativeIntBuffer2;
                            kVar3 = kVar2;
                            z11 = z10;
                        }
                    }
                }
                i22++;
                p10 = p10;
                nativeIntBuffer3 = nativeIntBuffer3;
                kVar3 = kVar3;
                z11 = z11;
            } catch (RuntimeException e12) {
                e = e12;
                nativeIntBuffer = nativeIntBuffer3;
                kVar = kVar3;
            } catch (Throwable th4) {
                th = th4;
                nativeIntBuffer = nativeIntBuffer3;
            }
        }
        k kVar5 = kVar3;
        nativeIntBuffer3.destroy();
        return kVar5;
    }

    public final float k(float value) {
        return Math.max(0.0f, Math.min(1.0f, value));
    }

    public final float l(int receiverIndex, float receiverPosX, float receiverPosY, float receiverPosZ, float receiverNormalX, float receiverNormalY, float receiverNormalZ, int emitterIndex, k surfels, float maxDistanceSq) {
        if (emitterIndex == receiverIndex) {
            return 0.0f;
        }
        float f10 = surfels.f99849g.get(receiverIndex);
        float f11 = surfels.f99850h.get(receiverIndex);
        float f12 = surfels.f99851i.get(receiverIndex);
        float max = (Math.max(0.0f, surfels.f99849g.get(emitterIndex) - f10) * 0.2126f) + (Math.max(0.0f, surfels.f99850h.get(emitterIndex) - f11) * 0.7152f) + (Math.max(0.0f, surfels.f99851i.get(emitterIndex) - f12) * 0.0722f);
        if (max <= 1.0E-8f) {
            return 0.0f;
        }
        float f13 = surfels.f99843a.get(emitterIndex) - receiverPosX;
        float f14 = surfels.f99844b.get(emitterIndex) - receiverPosY;
        float f15 = surfels.f99845c.get(emitterIndex) - receiverPosZ;
        float f16 = (f13 * f13) + (f14 * f14) + (f15 * f15);
        if (f16 <= 1.0E-8f || f16 > maxDistanceSq) {
            return 0.0f;
        }
        float sqrt = 1.0f / ((float) Math.sqrt(f16));
        float t10 = t((f13 * receiverNormalX * sqrt) + (f14 * receiverNormalY * sqrt) + (f15 * receiverNormalZ * sqrt));
        if (t10 <= 1.0E-8f) {
            return 0.0f;
        }
        return max * ((t10 * 0.8f) + 0.2f) * m(f16, (float) Math.sqrt(maxDistanceSq));
    }

    public final float m(float distanceSq, float maxBounceDistance) {
        float max = Math.max(0.35f, maxBounceDistance * 0.25f);
        float f10 = max * max;
        return f10 / Math.max(distanceSq, f10);
    }

    public final float n(k surfels, f emitters, d config) {
        if (surfels.f99855m <= 0) {
            return 1.0f;
        }
        float f10 = Float.NEGATIVE_INFINITY;
        float f11 = Float.NEGATIVE_INFINITY;
        float f12 = Float.NEGATIVE_INFINITY;
        float f13 = Float.NEGATIVE_INFINITY;
        float f14 = Float.POSITIVE_INFINITY;
        float f15 = Float.POSITIVE_INFINITY;
        float f16 = Float.POSITIVE_INFINITY;
        for (int i10 = 0; i10 < emitters.f99828b; i10++) {
            int i11 = emitters.f99827a.get(i10);
            float f17 = surfels.f99843a.get(i11);
            float f18 = surfels.f99844b.get(i11);
            float f19 = surfels.f99845c.get(i11);
            f14 = Math.min(f14, f17);
            f15 = Math.min(f15, f18);
            f16 = Math.min(f16, f19);
            f11 = Math.max(f11, f17);
            f12 = Math.max(f12, f18);
            f13 = Math.max(f13, f19);
        }
        float f20 = Float.NEGATIVE_INFINITY;
        float f21 = Float.POSITIVE_INFINITY;
        float f22 = Float.POSITIVE_INFINITY;
        float f23 = Float.POSITIVE_INFINITY;
        int i12 = 0;
        float f24 = Float.NEGATIVE_INFINITY;
        while (i12 < surfels.f99855m) {
            float f25 = surfels.f99843a.get(i12);
            float f26 = f11;
            float f27 = surfels.f99844b.get(i12);
            float f28 = f12;
            float f29 = surfels.f99845c.get(i12);
            f21 = Math.min(f21, f25);
            f22 = Math.min(f22, f27);
            f23 = Math.min(f23, f29);
            f10 = Math.max(f10, f25);
            f24 = Math.max(f24, f27);
            f20 = Math.max(f20, f29);
            i12++;
            f11 = f26;
            f12 = f28;
        }
        return Math.max(1.0f, Math.max(emitters.f99828b > 0 ? new AABB(new Vector3(f14, f15, f16), new Vector3(f11, f12, f13)).getRadius() : 0.0f, new AABB(new Vector3(f21, f22, f23), new Vector3(f10, f24, f20)).getRadius()) * config.f99823b);
    }

    public final float p(Bb.b texture, int x10, int y10, int channel) {
        if (channel == 0) {
            return texture.n(x10, y10);
        }
        if (channel == 1) {
            return texture.k(x10, y10);
        }
        if (channel == 2) {
            return texture.j(x10, y10);
        }
        if (channel != 3) {
            return 0.0f;
        }
        return texture.i(x10, y10);
    }

    public final boolean q(Vector3 worldPosition, Vector3 worldNormal, Vector3 toEmitterDirection, float maxDistance, l scratch) {
        C3593a U10;
        if (maxDistance <= 0.05f) {
            return false;
        }
        C3595c c3595c = scratch.f99856a;
        Vector3 h10 = c3595c.h();
        h10.set(worldPosition);
        h10.addLocal(worldNormal, 0.05f);
        c3595c.e().set(toEmitterDirection);
        float f10 = maxDistance - 0.05f;
        c3595c.f31954c = f10;
        float f11 = f10 - 0.05f;
        if (f11 <= 0.05f) {
            return false;
        }
        for (int i10 = 0; i10 < this.f99804a.size(); i10++) {
            BVHMesh bVHMesh = this.f99804a.get(i10);
            if (bVHMesh != null && bVHMesh.A() != null && bVHMesh.v() != null && (U10 = bVHMesh.U(c3595c, Vertex.RayMode.ClosestPoint, false)) != null && U10.getDistance() > 0.05f && U10.getDistance() < f11) {
                return true;
            }
        }
        return false;
    }

    public final Object r(int i10, int i11, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, k kVar, long j21, long j22, long j23, i iVar, float f10, d dVar, Bb.b bVar, long j24, boolean z10, h hVar, a.c cVar, AtomicInteger atomicInteger, int i12) throws Exception {
        int i13 = i10;
        while (i13 < i11) {
            int i14 = i13 + 256;
            int min = Math.min(i11, i14);
            int i15 = i13;
            nativeRasterizeRange(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, kVar.f99855m, j21, j22, j23, iVar.f99837b, iVar.f99836a, f10, dVar.f99824c, bVar.p(), i15, min, j24, z10, hVar.f99830a, hVar.f99831b, hVar.f99832c, hVar.f99833d, hVar.f99834e, hVar.f99835f);
            if (cVar != null) {
                x(atomicInteger.addAndGet(min - i15), i12, cVar);
            }
            i13 = i14;
        }
        return null;
    }

    public final float t(float dot) {
        return k(Math.abs(dot));
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void u(ub.p giTexture, ub.p directLightTexture, ub.p albedoTexture, ub.p emissiveTexture, List<Ug.h> bakeDataList, float giQuality, AreaEditorComponent.r bounceGIMode, float bounceIntensity, boolean useGiVisibility, a.c listener) {
        f fVar;
        k kVar;
        i b10;
        h b11;
        g gVar;
        if (giTexture == null || directLightTexture == null || albedoTexture == null || bakeDataList == null) {
            return;
        }
        d a10 = d.a(bounceGIMode);
        Bb.b d10 = Bb.b.d(giTexture, 50.0f);
        Bb.b d11 = Bb.b.d(directLightTexture, 50.0f);
        Bb.b d12 = Bb.b.d(albedoTexture, 50.0f);
        Bb.b d13 = emissiveTexture != null ? Bb.b.d(emissiveTexture, 50.0f) : null;
        try {
            d10.f(0.0f, 0.0f, 0.0f, 0.0f);
            k j10 = j(d10, d11, d12, d13, bakeDataList, bounceIntensity);
            try {
                if (j10.f99855m <= 0) {
                    if (listener != null) {
                        listener.a(0, 0, 1.0f, "");
                    }
                    d10.c();
                    j10.a();
                    if (d13 != null) {
                        return;
                    } else {
                        return;
                    }
                }
                try {
                    e i10 = i(j10, a10);
                    f fVar2 = i10.f99825a;
                    try {
                        if (fVar2.f99828b <= 0) {
                            if (listener != null) {
                                int i11 = j10.f99855m;
                                listener.a(i11, i11, 1.0f, "");
                            }
                            d10.c();
                            fVar2.a();
                            j10.a();
                            d10.e();
                            d11.e();
                            d12.e();
                            if (d13 != null) {
                                d13.e();
                                return;
                            }
                            return;
                        }
                        float f10 = i10.f99826b;
                        j jVar = new j(Math.max(f10 * 0.5f, 0.5f));
                        for (int i12 = 0; i12 < fVar2.f99828b; i12++) {
                            try {
                                jVar.c(j10, fVar2.f99827a.get(i12));
                            } catch (Throwable th2) {
                                th = th2;
                                fVar2.a();
                                throw th;
                            }
                        }
                        try {
                            b10 = i.b(jVar);
                        } catch (UnsatisfiedLinkError unused) {
                            fVar = fVar2;
                            kVar = j10;
                        }
                        try {
                            try {
                                b11 = useGiVisibility ? h.b(this.f99804a) : h.a();
                                gVar = new g(Math.max(1, d10.p() * d10.l() * 4));
                                fVar = fVar2;
                                kVar = j10;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                            try {
                                try {
                                    v(j10, b10, b11, f10, a10, useGiVisibility, d10, gVar, listener);
                                    gVar.a();
                                    b10.a();
                                } catch (Throwable th4) {
                                    gVar.a();
                                    throw th4;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                b10.a();
                                throw th;
                            }
                        } catch (UnsatisfiedLinkError unused2) {
                            w(kVar, jVar, f10, a10, useGiVisibility, d10, listener);
                            fVar.a();
                            kVar.a();
                            d10.c();
                            d10.e();
                            d11.e();
                            d12.e();
                            if (d13 == null) {
                            }
                        }
                        fVar.a();
                        kVar.a();
                        d10.c();
                        d10.e();
                        d11.e();
                        d12.e();
                        if (d13 == null) {
                            d13.e();
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    j10.a();
                    throw th;
                }
            } catch (Throwable th8) {
                th = th8;
            }
        } finally {
            d10.e();
            d11.e();
            d12.e();
            if (d13 != null) {
                d13.e();
            }
        }
    }

    public final void v(final k surfels, final i hash, final h meshData, final float maxBounceDistance, final d config, final boolean useGiVisibility, final Bb.b gi2, g outputPixels, final a.c listener) {
        int i10 = surfels.f99855m;
        int i11 = 0;
        if (i10 <= 0) {
            if (listener != null) {
                listener.a(0, 0, 1.0f, "");
                return;
            }
            return;
        }
        outputPixels.f99829a.fill(0.0f);
        int min = Math.min(Math.max(1, O9.b.a() - 2), i10);
        int max = Math.max(1, (int) Math.ceil(i10 / min));
        if (listener != null) {
            listener.a(0, i10, 0.0f, "");
        }
        final long criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99843a, 0L);
        final long criticalDirectCppPointer2 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99844b, 0L);
        final long criticalDirectCppPointer3 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99845c, 0L);
        final long criticalDirectCppPointer4 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99846d, 0L);
        final long criticalDirectCppPointer5 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99847e, 0L);
        final long criticalDirectCppPointer6 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99848f, 0L);
        final long criticalDirectCppPointer7 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99849g, 0L);
        final long criticalDirectCppPointer8 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99850h, 0L);
        final long criticalDirectCppPointer9 = NativeFloatBuffer.getCriticalDirectCppPointer(surfels.f99851i, 0L);
        final long criticalDirectCppPointer10 = NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99853k, 0L);
        final long criticalDirectCppPointer11 = NativeIntBuffer.getCriticalDirectCppPointer(surfels.f99854l, 0L);
        final long criticalDirectCppPointer12 = NativeIntBuffer.getCriticalDirectCppPointer(hash.f99838c, 0L);
        final long criticalDirectCppPointer13 = NativeIntBuffer.getCriticalDirectCppPointer(hash.f99839d, 0L);
        final long criticalDirectCppPointer14 = NativeIntBuffer.getCriticalDirectCppPointer(hash.f99840e, 0L);
        final long criticalDirectCppPointer15 = NativeFloatBuffer.getCriticalDirectCppPointer(outputPixels.f99829a, 0L);
        final AtomicInteger atomicInteger = new AtomicInteger();
        ArrayList arrayList = new ArrayList(min);
        final int i12 = 0;
        while (i12 < i10) {
            int i13 = i12 + max;
            final int min2 = Math.min(i10, i13);
            ArrayList arrayList2 = arrayList;
            final int i14 = i10;
            arrayList2.add(O9.b.c(new Callable() {
                @Override
                public final Object call() {
                    Object r10;
                    r10 = BounceGIRasterizer.this.r(i12, min2, criticalDirectCppPointer, criticalDirectCppPointer2, criticalDirectCppPointer3, criticalDirectCppPointer4, criticalDirectCppPointer5, criticalDirectCppPointer6, criticalDirectCppPointer7, criticalDirectCppPointer8, criticalDirectCppPointer9, criticalDirectCppPointer10, criticalDirectCppPointer11, surfels, criticalDirectCppPointer12, criticalDirectCppPointer13, criticalDirectCppPointer14, hash, maxBounceDistance, config, gi2, criticalDirectCppPointer15, useGiVisibility, meshData, listener, atomicInteger, i14);
                    return r10;
                }
            }));
            arrayList = arrayList2;
            i12 = i13;
            i11 = i11;
            i10 = i14;
        }
        ArrayList arrayList3 = arrayList;
        int i15 = i10;
        while (i11 < arrayList3.size()) {
            try {
                ((Future) arrayList3.get(i11)).get();
                i11++;
            } catch (Exception e10) {
                throw new RuntimeException("Failed to rasterize native GI chunk", e10);
            }
        }
        g(gi2, outputPixels);
        if (listener != null) {
            x(i15, i15, listener);
        }
    }

    public final void w(k surfels, j hash, float maxBounceDistance, d config, boolean useGiVisibility, Bb.b gi2, a.c listener) {
        int i10 = surfels.f99855m;
        int i11 = 0;
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
        AtomicInteger atomicInteger = new AtomicInteger();
        ArrayList arrayList = new ArrayList(min);
        int i12 = 0;
        while (i12 < i10) {
            int i13 = i12 + max;
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new a(i12, Math.min(i10, i13), surfels, hash, maxBounceDistance, config, useGiVisibility, gi2, listener, atomicInteger, i10));
            arrayList = arrayList2;
            i12 = i13;
            i11 = i11;
        }
        ArrayList arrayList3 = arrayList;
        int i14 = i11;
        ArrayList arrayList4 = new ArrayList(arrayList3.size());
        while (i11 < arrayList3.size()) {
            final Runnable runnable = (Runnable) arrayList3.get(i11);
            arrayList4.add(O9.b.c(new Callable() {
                @Override
                public final Object call() {
                    Object s10;
                    s10 = BounceGIRasterizer.s(Runnable.this);
                    return s10;
                }
            }));
            i11++;
        }
        for (int i15 = i14; i15 < arrayList4.size(); i15++) {
            try {
                ((Future) arrayList4.get(i15)).get();
            } catch (Exception e10) {
                throw new RuntimeException("Failed to rasterize GI chunk", e10);
            }
        }
        if (listener != null) {
            x(i10, i10, listener);
        }
    }

    public final void x(int executed, int total, a.c listener) {
        int F10 = Nc.b.F(0, executed, total);
        listener.a(F10, total, total > 0 ? F10 / total : 1.0f, "");
    }

    public final float y(Bb.b texture, float x10, float y10, int channel) {
        int p10 = texture.p();
        int l10 = texture.l();
        if (p10 <= 0 || l10 <= 0) {
            return 0.0f;
        }
        int i10 = p10 - 1;
        int F10 = Nc.b.F(0, (int) Math.floor(x10), i10);
        int i11 = l10 - 1;
        int F11 = Nc.b.F(0, (int) Math.floor(y10), i11);
        int F12 = Nc.b.F(0, F10 + 1, i10);
        int F13 = Nc.b.F(0, F11 + 1, i11);
        float k10 = k(x10 - F10);
        float k11 = k(y10 - F11);
        float p11 = p(texture, F10, F11, channel);
        float p12 = p(texture, F12, F11, channel);
        float p13 = p(texture, F10, F13, channel);
        float f10 = p11 + ((p12 - p11) * k10);
        return f10 + (((p13 + ((p(texture, F12, F13, channel) - p13) * k10)) - f10) * k11);
    }

    public final void z(int px, int py, int giWidth, int giHeight, float w02, float w12, float w22, Bb.b direct, Bb.b albedo, Bb.b emissive, NativeIntBuffer surfelGrid, k surfels, float bounceIntensity, Vector3 worldPosition, Vector3 worldNormal, float v0x, float v0y, float v0z, float v1x, float v1y, float v1z, float v2x, float v2y, float v2z, float n0x, float n0y, float n0z, float n1x, float n1y, float n1z, float n2x, float n2y, float n2z, float fnx, float fny, float fnz) {
        int p10 = direct.p();
        int l10 = direct.l();
        float max = p10 > 1 ? (px / Math.max(1, giWidth - 1)) * (p10 - 1) : 0.0f;
        float max2 = l10 > 1 ? (py / Math.max(1, giHeight - 1)) * (l10 - 1) : 0.0f;
        worldPosition.set((v0x * w02) + (v1x * w12) + (v2x * w22), (v0y * w02) + (v1y * w12) + (v2y * w22), (v0z * w02) + (v1z * w12) + (v2z * w22));
        worldNormal.set((n0x * w02) + (n1x * w12) + (n2x * w22), (n0y * w02) + (n1y * w12) + (n2y * w22), (n0z * w02) + (n1z * w12) + (n2z * w22));
        if (worldNormal.lengthSquared() <= 1.0E-8f) {
            worldNormal.set(fnx, fny, fnz);
        } else {
            worldNormal.normalizeLocal();
        }
        float y10 = y(direct, max, max2, 0);
        float y11 = y(direct, max, max2, 1);
        float y12 = y(direct, max, max2, 2);
        float y13 = y(albedo, max, max2, 0);
        float y14 = y(albedo, max, max2, 1);
        float y15 = y(albedo, max, max2, 2);
        float y16 = emissive != null ? y(emissive, max, max2, 0) : 0.0f;
        float y17 = emissive != null ? y(emissive, max, max2, 1) : 0.0f;
        float y18 = emissive != null ? y(emissive, max, max2, 2) : 0.0f;
        int i10 = (py * giWidth) + px;
        int i11 = surfelGrid.get(i10);
        if (i11 < 0) {
            i11 = surfels.f99855m;
            surfelGrid.set(i10, i11);
            surfels.f99855m++;
        }
        surfels.f99853k.set(i11, px);
        surfels.f99854l.set(i11, py);
        surfels.f99843a.set(i11, worldPosition.getX());
        surfels.f99844b.set(i11, worldPosition.getY());
        surfels.f99845c.set(i11, worldPosition.getZ());
        surfels.f99846d.set(i11, worldNormal.getX());
        surfels.f99847e.set(i11, worldNormal.getY());
        surfels.f99848f.set(i11, worldNormal.getZ());
        float max3 = Math.max(0.0f, bounceIntensity);
        float f10 = (y10 * y13 * max3) + (y16 * 0.1f);
        float f11 = (y11 * y14 * max3) + (y17 * 0.1f);
        float f12 = (y12 * y15 * max3) + (y18 * 0.1f);
        surfels.f99849g.set(i11, f10);
        surfels.f99850h.set(i11, f11);
        surfels.f99851i.set(i11, f12);
        surfels.f99852j.set(i11, (f10 * 0.2126f) + (f11 * 0.7152f) + (f12 * 0.0722f));
    }

    public static class l {

        public final C3595c f99856a;

        public final Vector3 f99857b;

        public final Vector3 f99858c;

        public final Vector3 f99859d;

        public final c f99860e;

        public l() {
            this.f99856a = new C3595c(new Vector3(), new Vector3(0.0f, 0.0f, 1.0f), 1.0f);
            this.f99857b = new Vector3();
            this.f99858c = new Vector3();
            this.f99859d = new Vector3();
            this.f99860e = new c(null);
        }

        public l(a aVar) {
            this();
        }
    }
}
