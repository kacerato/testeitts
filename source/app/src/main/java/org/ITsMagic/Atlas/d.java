package org.ITsMagic.Atlas;

import Ug.h;
import com.itsmagic.engine.Engines.Engine.Vertex.BVHMesh;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import org.ITsMagic.Atlas.a;
import org.ITsMagic.Atlas.d;

public final class d {

    public static final class a {

        public final NativeFloatBuffer f99985a;

        public final NativeFloatBuffer f99986b;

        public final NativeFloatBuffer f99987c;

        public final NativeFloatBuffer f99988d;

        public final NativeFloatBuffer f99989e;

        public final NativeFloatBuffer f99990f;

        public final NativeFloatBuffer f99991g;

        public final NativeFloatBuffer f99992h;

        public final NativeFloatBuffer f99993i;

        public final NativeIntBuffer f99994j;

        public final NativeIntBuffer f99995k;

        public int f99996l;

        public a(int capacity) {
            this.f99985a = new NativeFloatBuffer(capacity);
            this.f99986b = new NativeFloatBuffer(capacity);
            this.f99987c = new NativeFloatBuffer(capacity);
            this.f99988d = new NativeFloatBuffer(capacity);
            this.f99989e = new NativeFloatBuffer(capacity);
            this.f99990f = new NativeFloatBuffer(capacity);
            this.f99991g = new NativeFloatBuffer(capacity);
            this.f99992h = new NativeFloatBuffer(capacity);
            this.f99993i = new NativeFloatBuffer(capacity);
            this.f99994j = new NativeIntBuffer(capacity);
            this.f99995k = new NativeIntBuffer(capacity);
        }

        public void a() {
            this.f99985a.destroy();
            this.f99986b.destroy();
            this.f99987c.destroy();
            this.f99988d.destroy();
            this.f99989e.destroy();
            this.f99990f.destroy();
            this.f99991g.destroy();
            this.f99992h.destroy();
            this.f99993i.destroy();
            this.f99994j.destroy();
            this.f99995k.destroy();
        }
    }

    public interface b {
        a a(Bb.b output, List<h> bakeDataList);
    }

    public interface c<T> {
        int a(a surfels, InterfaceC1902d lightData, e meshData, int start, int end);

        InterfaceC1902d b(List<T> lights);

        void c(a surfels, InterfaceC1902d lightData, e meshData, int outputWidth, int start, int end, NativeFloatBuffer outputPixels);
    }

    public interface InterfaceC1902d {
        int a();

        default void destroy() {
        }
    }

    public static final class e {

        public final long[] f99997a;

        public final long[] f99998b;

        public final long[] f99999c;

        public final long[] f100000d;

        public final long[] f100001e;

        public final int[] f100002f;

        public e(long[] verticesPointers, long[] trianglesPointers, long[] nodeBoundsPointers, long[] nodeMetaPointers, long[] triangleOrderPointers, int[] nodeCounts) {
            this.f99997a = verticesPointers;
            this.f99998b = trianglesPointers;
            this.f99999c = nodeBoundsPointers;
            this.f100000d = nodeMetaPointers;
            this.f100001e = triangleOrderPointers;
            this.f100002f = nodeCounts;
        }

        public static e a(List<BVHMesh> meshes) {
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
                    if (bVHMesh.A() != null && bVHMesh.v() != null && bVHMesh.l() != null && bVHMesh.n() != null && bVHMesh.p() != null && bVHMesh.m() > 0) {
                        arrayList.add(Long.valueOf(NativeFloatBuffer.getCriticalDirectCppPointer(bVHMesh.A(), 0L)));
                        arrayList2.add(Long.valueOf(NativeIntBuffer.getCriticalDirectCppPointer(bVHMesh.v(), 0L)));
                        arrayList3.add(Long.valueOf(NativeFloatBuffer.getCriticalDirectCppPointer(bVHMesh.l(), 0L)));
                        arrayList4.add(Long.valueOf(NativeIntBuffer.getCriticalDirectCppPointer(bVHMesh.n(), 0L)));
                        arrayList5.add(Long.valueOf(NativeIntBuffer.getCriticalDirectCppPointer(bVHMesh.p(), 0L)));
                        arrayList6.add(Integer.valueOf(bVHMesh.m()));
                    }
                }
            }
            return new e(c(arrayList), c(arrayList2), c(arrayList3), c(arrayList4), c(arrayList5), b(arrayList6));
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

    public static final class f {

        public final int f100003a;

        public final int f100004b;

        public f(int start, int end) {
            this.f100003a = start;
            this.f100004b = end;
        }
    }

    public static void c(Bb.b output, NativeFloatBuffer outputPixels) {
        int p10 = output.p();
        int l10 = output.l();
        int max = Math.max(1, p10 * l10 * 4);
        float[] fArr = new float[max];
        outputPixels.get(0, fArr, 0, max);
        int i10 = 0;
        for (int i11 = 0; i11 < l10; i11++) {
            for (int i12 = 0; i12 < p10; i12++) {
                float f10 = fArr[i10 + 3];
                if (f10 > 0.0f) {
                    output.s(i12, i11, f(output.n(i12, i11) + fArr[i10]), f(output.k(i12, i11) + fArr[i10 + 1]), f(output.j(i12, i11) + fArr[i10 + 2]), Math.max(output.i(i12, i11), f10));
                }
                i10 += 4;
            }
        }
    }

    public static List<f> d(int totalItems, int preferredWorkers) {
        int max = Math.max(1, Math.min(totalItems, preferredWorkers));
        int max2 = Math.max(1, (int) Math.ceil(totalItems / max));
        ArrayList arrayList = new ArrayList(max);
        int i10 = 0;
        while (i10 < totalItems) {
            int i11 = i10 + max2;
            arrayList.add(new f(i10, Math.min(totalItems, i11)));
            i10 = i11;
        }
        return arrayList;
    }

    public static <T> int e(Bb.b output, List<h> bakeDataList, List<T> lights, List<BVHMesh> raycastVertices, b surfelBuilder, c<T> bridge) {
        a a10 = surfelBuilder.a(output, bakeDataList);
        try {
            if (a10.f99996l <= 0) {
                return 0;
            }
            InterfaceC1902d b10 = bridge.b(lights);
            if (b10 != null) {
                try {
                    if (b10.a() > 0) {
                        return g(a10, b10, e.a(raycastVertices), bridge);
                    }
                } finally {
                    b10.destroy();
                }
            }
            if (b10 != null) {
            }
            return 0;
        } finally {
            a10.a();
        }
    }

    public static float f(float value) {
        return Math.max(0.0f, Math.min(1.0f, value));
    }

    public static <T> int g(final a surfels, final InterfaceC1902d lightData, final e meshData, final c<T> bridge) {
        List<f> d10 = d(surfels.f99996l, Math.max(1, O9.b.a() - 2));
        if (d10.size() <= 1) {
            return bridge.a(surfels, lightData, meshData, 0, surfels.f99996l);
        }
        ArrayList arrayList = new ArrayList(d10.size());
        for (int i10 = 0; i10 < d10.size(); i10++) {
            final f fVar = d10.get(i10);
            arrayList.add(O9.b.c(new Callable() {
                @Override
                public final Object call() {
                    Object h10;
                    h10 = org.ITsMagic.Atlas.d.h(d.c.this, surfels, lightData, meshData, fVar);
                    return h10;
                }
            }));
        }
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            try {
                i11 += ((Integer) ((Future) arrayList.get(i12)).get()).intValue();
            } catch (Exception e10) {
                throw new RuntimeException("Failed to count native light raycasts", e10);
            }
        }
        return i11;
    }

    public static Object h(c cVar, a aVar, InterfaceC1902d interfaceC1902d, e eVar, f fVar) throws Exception {
        return Integer.valueOf(cVar.a(aVar, interfaceC1902d, eVar, fVar.f100003a, fVar.f100004b));
    }

    public static Object i(c cVar, a aVar, InterfaceC1902d interfaceC1902d, e eVar, Bb.b bVar, f fVar, NativeFloatBuffer nativeFloatBuffer, a.c cVar2, int i10, AtomicInteger atomicInteger, int i11) throws Exception {
        cVar.c(aVar, interfaceC1902d, eVar, bVar.p(), fVar.f100003a, fVar.f100004b, nativeFloatBuffer);
        if (cVar2 == null || i10 <= 0) {
            return null;
        }
        int addAndGet = atomicInteger.addAndGet(i11);
        synchronized (cVar2) {
            cVar2.a(addAndGet, i10, addAndGet / i10, "");
        }
        return null;
    }

    public static <T> void j(Bb.b output, List<h> bakeDataList, List<T> lights, int plannedRaycasts, List<BVHMesh> raycastVertices, b surfelBuilder, c<T> bridge, a.c listener) {
        a a10 = surfelBuilder.a(output, bakeDataList);
        try {
            if (a10.f99996l <= 0) {
                if (listener != null) {
                    listener.a(0, 0, 1.0f, "");
                }
                return;
            }
            InterfaceC1902d b10 = bridge.b(lights);
            if (b10 != null) {
                try {
                    if (b10.a() > 0) {
                        e a11 = e.a(raycastVertices);
                        if (plannedRaycasts < 0) {
                            plannedRaycasts = g(a10, b10, a11, bridge);
                        }
                        k(output, a10, b10, a11, plannedRaycasts, bridge, listener);
                        b10.destroy();
                        return;
                    }
                } finally {
                    if (b10 != null) {
                        b10.destroy();
                    }
                }
            }
            if (listener != null) {
                listener.a(0, 0, 1.0f, "");
            }
        } finally {
            a10.a();
        }
    }

    public static <T> void k(final Bb.b output, final a surfels, final InterfaceC1902d lightData, final e meshData, final int totalPlanned, final c<T> bridge, final a.c listener) {
        final NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(Math.max(1, output.p() * output.l() * 4));
        try {
            nativeFloatBuffer.fill(0.0f);
            List<f> d10 = d(surfels.f99996l, Math.max(1, O9.b.a() - 2));
            int[] iArr = new int[d10.size()];
            for (int i10 = 0; i10 < d10.size(); i10++) {
                f fVar = d10.get(i10);
                iArr[i10] = bridge.a(surfels, lightData, meshData, fVar.f100003a, fVar.f100004b);
            }
            String str = "";
            if (listener != null) {
                if (totalPlanned <= 0) {
                    listener.a(0, 0, 0.0f, "");
                } else {
                    listener.a(0, totalPlanned, 0.0f, "");
                }
            }
            final AtomicInteger atomicInteger = new AtomicInteger();
            ArrayList arrayList = new ArrayList(d10.size());
            int i11 = 0;
            while (i11 < d10.size()) {
                final f fVar2 = d10.get(i11);
                final int i12 = iArr[i11];
                ArrayList arrayList2 = arrayList;
                arrayList2.add(O9.b.c(new Callable() {
                    @Override
                    public final Object call() {
                        Object i13;
                        i13 = org.ITsMagic.Atlas.d.i(d.c.this, surfels, lightData, meshData, output, fVar2, nativeFloatBuffer, listener, totalPlanned, atomicInteger, i12);
                        return i13;
                    }
                }));
                i11++;
                arrayList = arrayList2;
                iArr = iArr;
                str = str;
                d10 = d10;
            }
            ArrayList arrayList3 = arrayList;
            String str2 = str;
            for (int i13 = 0; i13 < arrayList3.size(); i13++) {
                try {
                    ((Future) arrayList3.get(i13)).get();
                } catch (Exception e10) {
                    throw new RuntimeException("Failed to rasterize native direct light", e10);
                }
            }
            c(output, nativeFloatBuffer);
            if (listener != null) {
                if (totalPlanned <= 0) {
                    listener.a(0, 0, 1.0f, str2);
                } else {
                    listener.a(totalPlanned, totalPlanned, 1.0f, str2);
                }
            }
        } finally {
            nativeFloatBuffer.destroy();
        }
    }
}
