package Jb;

import com.google.android.filament.IndexBuffer;
import com.google.android.filament.VertexBuffer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public class c {

    public NativeFloatBuffer f10400a;

    public NativeFloatBuffer f10401b;

    public NativeFloatBuffer f10402c;

    public NativeFloatBuffer f10403d;

    public NativeIntBuffer f10404e;

    public NativeFloatBuffer f10405f;

    public NativeFloatBuffer f10406g;

    public FilamentVertexBuffer f10407h;

    public Rb.d f10408i;

    public final InterfaceC0345c f10409j;

    public class a implements Runnable {

        public final NativeFloatBuffer f10410b;

        public final NativeShortBuffer f10411c;

        public final NativeByteBuffer f10412d;

        public final NativeFloatBuffer f10413e;

        public a(final NativeFloatBuffer val$finalGeneratedUvs, final NativeShortBuffer val$finalQuatS4, final NativeByteBuffer val$finalSkinBuffer, final NativeFloatBuffer val$finalBoundsBuffer) {
            this.f10410b = val$finalGeneratedUvs;
            this.f10411c = val$finalQuatS4;
            this.f10412d = val$finalSkinBuffer;
            this.f10413e = val$finalBoundsBuffer;
        }

        @Override
        public void run() {
            NativeFloatBuffer nativeFloatBuffer = this.f10410b;
            if (nativeFloatBuffer != null) {
                nativeFloatBuffer.destroyImmediate();
            }
            this.f10411c.destroyImmediate();
            NativeByteBuffer nativeByteBuffer = this.f10412d;
            if (nativeByteBuffer != null) {
                nativeByteBuffer.destroyImmediate();
            }
            this.f10413e.destroyImmediate();
        }
    }

    public class b implements Runnable {

        public final NativeShortBuffer f10415b;

        public b(final NativeShortBuffer val$finalUshortIndexBuffer) {
            this.f10415b = val$finalUshortIndexBuffer;
        }

        @Override
        public void run() {
            this.f10415b.destroyImmediate();
        }
    }

    public interface InterfaceC0345c {
        void a(FilamentVertexBuffer vertexBuffer, Rb.d indexBuffer);
    }

    public c(NativeFloatBuffer verticesBuffer, NativeFloatBuffer uvsBuffer, NativeIntBuffer trianglesBuffer, NativeFloatBuffer normalsBuffer, NativeFloatBuffer tangentsBuffer, NativeFloatBuffer jointsBuffer, NativeFloatBuffer weightsBuffer, InterfaceC0345c listener) {
        this.f10400a = verticesBuffer;
        this.f10403d = uvsBuffer;
        this.f10404e = trianglesBuffer;
        this.f10401b = normalsBuffer;
        this.f10402c = tangentsBuffer;
        this.f10405f = jointsBuffer;
        this.f10406g = weightsBuffer;
        this.f10409j = listener;
        e();
    }

    public static NativeFloatBuffer b(NativeFloatBuffer vertices, int vcount) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16 = Float.POSITIVE_INFINITY;
        float f17 = Float.NEGATIVE_INFINITY;
        float f18 = Float.NEGATIVE_INFINITY;
        float f19 = Float.NEGATIVE_INFINITY;
        float f20 = Float.POSITIVE_INFINITY;
        float f21 = Float.POSITIVE_INFINITY;
        for (int i10 = 0; i10 < vcount; i10++) {
            int i11 = i10 * 3;
            float f22 = vertices.get(i11);
            float f23 = vertices.get(i11 + 1);
            float f24 = vertices.get(i11 + 2);
            if (f22 < f16) {
                f16 = f22;
            }
            if (f23 < f20) {
                f20 = f23;
            }
            if (f24 < f21) {
                f21 = f24;
            }
            if (f22 > f17) {
                f17 = f22;
            }
            if (f23 > f18) {
                f18 = f23;
            }
            if (f24 > f19) {
                f19 = f24;
            }
        }
        if (vcount <= 0) {
            f15 = 0.0f;
            f14 = 0.0f;
            f13 = 0.0f;
            f12 = 0.0f;
            f11 = 0.0f;
            f10 = 0.0f;
        } else {
            f10 = f19;
            f11 = f18;
            f12 = f17;
            f13 = f21;
            f14 = f20;
            f15 = f16;
        }
        return Vertex.N(f15, f14, f13, f12, f11, f10, vcount);
    }

    public static NativeShortBuffer c(NativeFloatBuffer vertices, NativeFloatBuffer uvs, NativeFloatBuffer normals, NativeFloatBuffer tangents, NativeIntBuffer triangles, int vcount) {
        return g(vertices, normals, tangents, vcount) ? new Jb.a(vertices, normals, tangents, triangles).b() : new g(vertices, uvs, normals, triangles).b();
    }

    public static NativeByteBuffer d(NativeFloatBuffer joints, NativeFloatBuffer weights, int vcount) {
        float f10;
        float f11;
        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(vcount * 8);
        for (int i10 = 0; i10 < vcount; i10++) {
            int n10 = n(joints, i10, 0);
            int n11 = n(joints, i10, 1);
            int n12 = n(joints, i10, 2);
            int n13 = n(joints, i10, 3);
            float q10 = q(weights, i10, 0);
            float q11 = q(weights, i10, 1);
            float q12 = q(weights, i10, 2);
            float q13 = q10 + q11 + q12 + q(weights, i10, 3);
            float f12 = 0.0f;
            if (q13 <= 0.0f) {
                f11 = 1.0f;
                n11 = 0;
                n12 = 0;
                n13 = 0;
                f10 = 0.0f;
            } else {
                f10 = q12 / q13;
                f12 = q11 / q13;
                f11 = q10 / q13;
            }
            int p10 = p(f11);
            int p11 = p(f12);
            int p12 = p(f10);
            int i11 = ((255 - p10) - p11) - p12;
            if (i11 < 0) {
                i11 = 0;
            } else if (i11 > 255) {
                i11 = 255;
            }
            nativeByteBuffer.put((byte) h(n10));
            nativeByteBuffer.put((byte) h(n11));
            nativeByteBuffer.put((byte) h(n12));
            nativeByteBuffer.put((byte) h(n13));
            nativeByteBuffer.put((byte) p10);
            nativeByteBuffer.put((byte) p11);
            nativeByteBuffer.put((byte) p12);
            nativeByteBuffer.put((byte) i11);
        }
        nativeByteBuffer.position(0);
        return nativeByteBuffer;
    }

    public static NativeShortBuffer f(NativeIntBuffer tris) {
        int capacity = tris.capacity();
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(capacity);
        for (int i10 = 0; i10 < capacity; i10++) {
            nativeShortBuffer.put((short) (tris.get(i10) & 65535));
        }
        nativeShortBuffer.position(0);
        return nativeShortBuffer;
    }

    public static boolean g(NativeFloatBuffer vertices, NativeFloatBuffer normals, NativeFloatBuffer tangents, int vcount) {
        return (vertices == null || normals == null || tangents == null || normals.capacity() < vcount * 3 || tangents.capacity() < vcount * 4) ? false : true;
    }

    public static int h(int x10) {
        if (x10 < 0) {
            return 0;
        }
        if (x10 > 255) {
            return 255;
        }
        return x10;
    }

    public static int n(NativeFloatBuffer joints, int v10, int k10) {
        int i10 = (v10 * 4) + k10;
        if (joints != null && i10 < joints.capacity()) {
            return h(Math.round(joints.get(i10)));
        }
        return 0;
    }

    public static int p(float w01) {
        int round = Math.round(w01 * 255.0f);
        if (round < 0) {
            round = 0;
        }
        if (round > 255) {
            return 255;
        }
        return round;
    }

    public static float q(NativeFloatBuffer weights, int v10, int k10) {
        int i10 = (v10 * 4) + k10;
        if (weights == null || i10 >= weights.capacity()) {
            return 0.0f;
        }
        float f10 = weights.get(i10);
        if (f10 < 0.0f) {
            return 0.0f;
        }
        return f10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b2 A[Catch: all -> 0x00ae, TryCatch #5 {all -> 0x00ae, blocks: (B:51:0x00aa, B:37:0x00b2, B:39:0x00b7, B:41:0x00bc, B:43:0x00c1, B:44:0x00c4), top: B:50:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b7 A[Catch: all -> 0x00ae, TryCatch #5 {all -> 0x00ae, blocks: (B:51:0x00aa, B:37:0x00b2, B:39:0x00b7, B:41:0x00bc, B:43:0x00c1, B:44:0x00c4), top: B:50:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc A[Catch: all -> 0x00ae, TryCatch #5 {all -> 0x00ae, blocks: (B:51:0x00aa, B:37:0x00b2, B:39:0x00b7, B:41:0x00bc, B:43:0x00c1, B:44:0x00c4), top: B:50:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c1 A[Catch: all -> 0x00ae, TryCatch #5 {all -> 0x00ae, blocks: (B:51:0x00aa, B:37:0x00b2, B:39:0x00b7, B:41:0x00bc, B:43:0x00c1, B:44:0x00c4), top: B:50:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e() {
        final NativeShortBuffer nativeShortBuffer;
        NativeByteBuffer nativeByteBuffer;
        com.itsmagic.engine.Engines.Native.Base.a aVar;
        com.itsmagic.engine.Engines.Native.Base.a aVar2;
        NativeFloatBuffer nativeFloatBuffer;
        final NativeFloatBuffer nativeFloatBuffer2;
        final boolean m10;
        final int l10 = l();
        NativeIntBuffer nativeIntBuffer = this.f10404e;
        final int capacity = nativeIntBuffer != null ? nativeIntBuffer.capacity() : 0;
        int i10 = capacity / 3;
        if (l10 == 0 || i10 == 0) {
            return;
        }
        NativeFloatBuffer nativeFloatBuffer3 = this.f10403d;
        NativeFloatBuffer nativeFloatBuffer4 = null;
        try {
            final NativeFloatBuffer i11 = i(l10);
            if (i11 != null) {
                nativeFloatBuffer = i11;
            } else {
                try {
                    nativeFloatBuffer = this.f10403d;
                } catch (Throwable th2) {
                    th = th2;
                    nativeShortBuffer = null;
                    nativeByteBuffer = null;
                    aVar = nativeByteBuffer;
                    nativeFloatBuffer2 = aVar;
                    nativeFloatBuffer4 = i11;
                    aVar2 = nativeFloatBuffer2;
                    if (nativeFloatBuffer4 != null) {
                    }
                    if (aVar2 != null) {
                    }
                    if (nativeShortBuffer != null) {
                    }
                    if (nativeByteBuffer != null) {
                    }
                    if (aVar != null) {
                    }
                    throw th;
                }
            }
            nativeShortBuffer = c(this.f10400a, nativeFloatBuffer, this.f10401b, this.f10402c, this.f10404e, l10);
            try {
                m10 = m(l10);
                nativeByteBuffer = m10 ? d(this.f10405f, this.f10406g, l10) : null;
            } catch (Throwable th3) {
                th = th3;
                nativeByteBuffer = null;
                aVar = nativeByteBuffer;
                nativeFloatBuffer2 = aVar;
                nativeFloatBuffer4 = i11;
                aVar2 = nativeFloatBuffer2;
                if (nativeFloatBuffer4 != null) {
                }
                if (aVar2 != null) {
                }
                if (nativeShortBuffer != null) {
                }
                if (nativeByteBuffer != null) {
                }
                if (aVar != null) {
                }
                throw th;
            }
            try {
                final boolean z10 = this.f10404e.findMaxValue() <= 65535;
                aVar = z10 ? f(this.f10404e) : null;
                try {
                    nativeFloatBuffer2 = b(this.f10400a, l10);
                    try {
                        final NativeFloatBuffer nativeFloatBuffer5 = nativeFloatBuffer;
                        final NativeByteBuffer nativeByteBuffer2 = nativeByteBuffer;
                        final NativeShortBuffer nativeShortBuffer2 = aVar;
                        K8.a.I(new Runnable() {
                            @Override
                            public final void run() {
                                c.this.o(l10, m10, nativeFloatBuffer5, nativeShortBuffer, nativeByteBuffer2, nativeFloatBuffer2, i11, z10, capacity, nativeShortBuffer2);
                            }
                        });
                        this.f10403d = nativeFloatBuffer3;
                    } catch (Throwable th4) {
                        th = th4;
                        nativeFloatBuffer4 = i11;
                        aVar2 = nativeFloatBuffer2;
                        if (nativeFloatBuffer4 != null) {
                            try {
                                nativeFloatBuffer4.destroyImmediate();
                            } catch (Throwable th5) {
                                this.f10403d = nativeFloatBuffer3;
                                throw th5;
                            }
                        }
                        if (aVar2 != null) {
                            aVar2.destroyImmediate();
                        }
                        if (nativeShortBuffer != null) {
                            nativeShortBuffer.destroyImmediate();
                        }
                        if (nativeByteBuffer != null) {
                            nativeByteBuffer.destroyImmediate();
                        }
                        if (aVar != null) {
                            aVar.destroyImmediate();
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    nativeFloatBuffer2 = 0;
                }
            } catch (Throwable th7) {
                th = th7;
                aVar = null;
                nativeFloatBuffer2 = aVar;
                nativeFloatBuffer4 = i11;
                aVar2 = nativeFloatBuffer2;
                if (nativeFloatBuffer4 != null) {
                }
                if (aVar2 != null) {
                }
                if (nativeShortBuffer != null) {
                }
                if (nativeByteBuffer != null) {
                }
                if (aVar != null) {
                }
                throw th;
            }
        } catch (Throwable th8) {
            th = th8;
            nativeShortBuffer = null;
            nativeByteBuffer = null;
            aVar = null;
            aVar2 = null;
        }
    }

    public final NativeFloatBuffer i(int vertexCount) {
        NativeFloatBuffer nativeFloatBuffer = this.f10403d;
        if (nativeFloatBuffer != null && nativeFloatBuffer.capacity() >= vertexCount * 2) {
            return null;
        }
        NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(vertexCount * 2);
        NativeFloatBuffer nativeFloatBuffer3 = this.f10403d;
        int min = nativeFloatBuffer3 != null ? Math.min(vertexCount, nativeFloatBuffer3.capacity() / 2) : 0;
        NativeFloatBuffer nativeFloatBuffer4 = this.f10403d;
        if (nativeFloatBuffer4 != null && min > 0) {
            nativeFloatBuffer2.put(nativeFloatBuffer4, min * 2);
        }
        while (min < vertexCount) {
            int i10 = min * 3;
            float f10 = this.f10400a.get(i10);
            float f11 = this.f10400a.get(i10 + 2);
            int i11 = min * 2;
            nativeFloatBuffer2.set(i11, f10);
            nativeFloatBuffer2.set(i11 + 1, f11);
            min++;
        }
        nativeFloatBuffer2.position(0);
        return nativeFloatBuffer2;
    }

    public Rb.d j() {
        return this.f10408i;
    }

    public FilamentVertexBuffer k() {
        return this.f10407h;
    }

    public final int l() {
        NativeFloatBuffer nativeFloatBuffer = this.f10400a;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public final boolean m(int vcount) {
        NativeFloatBuffer nativeFloatBuffer = this.f10405f;
        if (nativeFloatBuffer == null || this.f10406g == null) {
            return false;
        }
        int i10 = vcount * 4;
        int i11 = vcount * 3;
        return Math.min(nativeFloatBuffer.capacity(), i10) >= i11 && Math.min(this.f10406g.capacity(), i10) >= i11;
    }

    public final void o(int i10, boolean z10, NativeFloatBuffer nativeFloatBuffer, NativeShortBuffer nativeShortBuffer, NativeByteBuffer nativeByteBuffer, NativeFloatBuffer nativeFloatBuffer2, NativeFloatBuffer nativeFloatBuffer3, boolean z11, int i11, NativeShortBuffer nativeShortBuffer2) {
        VertexBuffer.b c10 = new VertexBuffer.b().h(i10).c(z10 ? 5 : 4);
        VertexBuffer.c cVar = VertexBuffer.c.POSITION;
        VertexBuffer.a aVar = VertexBuffer.a.FLOAT3;
        VertexBuffer.b b10 = c10.b(cVar, 0, aVar, 0, 12);
        VertexBuffer.c cVar2 = VertexBuffer.c.UV0;
        NativeFloatBuffer.b precision = nativeFloatBuffer.getPrecision();
        NativeFloatBuffer.b bVar = NativeFloatBuffer.b.FLOAT16;
        VertexBuffer.b b11 = b10.b(cVar2, 1, precision == bVar ? VertexBuffer.a.HALF2 : VertexBuffer.a.FLOAT2, 0, nativeFloatBuffer.getPrecision() == bVar ? 4 : 8);
        VertexBuffer.c cVar3 = VertexBuffer.c.TANGENTS;
        VertexBuffer.b b12 = b11.b(cVar3, 2, VertexBuffer.a.SHORT4, 0, 8).f(cVar3).b(com.itsmagic.engine.Engines.Engine.Vertex.a.f80006a.f80009b, z10 ? 4 : 3, aVar, 0, 24).b(com.itsmagic.engine.Engines.Engine.Vertex.a.f80007b.f80009b, z10 ? 4 : 3, aVar, 12, 24);
        if (z10) {
            VertexBuffer.c cVar4 = VertexBuffer.c.BONE_INDICES;
            VertexBuffer.a aVar2 = VertexBuffer.a.UBYTE4;
            b12.b(cVar4, 3, aVar2, 0, 8);
            VertexBuffer.c cVar5 = VertexBuffer.c.BONE_WEIGHTS;
            b12.b(cVar5, 3, aVar2, 4, 8).f(cVar5);
        }
        FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(b12);
        filamentVertexBuffer.m(0, this.f10400a);
        filamentVertexBuffer.m(1, nativeFloatBuffer);
        filamentVertexBuffer.o(2, nativeShortBuffer);
        if (z10) {
            filamentVertexBuffer.k(3, nativeByteBuffer);
        }
        filamentVertexBuffer.n(z10 ? 4 : 3, nativeFloatBuffer2, new a(nativeFloatBuffer3, nativeShortBuffer, nativeByteBuffer, nativeFloatBuffer2));
        Rb.d dVar = new Rb.d(new IndexBuffer.a().c(i11).a(z11 ? IndexBuffer.a.b.USHORT : IndexBuffer.a.b.UINT));
        if (z11) {
            dVar.q(nativeShortBuffer2, new b(nativeShortBuffer2));
        } else {
            dVar.n(this.f10404e);
        }
        this.f10407h = filamentVertexBuffer;
        this.f10408i = dVar;
        InterfaceC0345c interfaceC0345c = this.f10409j;
        if (interfaceC0345c != null) {
            interfaceC0345c.a(filamentVertexBuffer, dVar);
        }
    }
}
