package Jb;

import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public class f {

    public NativeFloatBuffer f10433a;

    public NativeFloatBuffer f10434b;

    public NativeFloatBuffer f10435c;

    public NativeFloatBuffer f10436d;

    public NativeIntBuffer f10437e;

    public NativeFloatBuffer f10438f;

    public NativeFloatBuffer f10439g;

    public final a f10440h;

    public interface a {
        void a(NativeShortBuffer quatS4, NativeShortBuffer ushortIndexData, NativeByteBuffer skinBuf);
    }

    public f(NativeFloatBuffer verticesBuffer, NativeFloatBuffer uvsBuffer, NativeIntBuffer trianglesBuffer, NativeFloatBuffer normalsBuffer, NativeFloatBuffer tangentsBuffer, NativeFloatBuffer jointsBuffer, NativeFloatBuffer weightsBuffer, a listener) {
        this.f10433a = verticesBuffer;
        this.f10436d = uvsBuffer;
        this.f10437e = trianglesBuffer;
        this.f10434b = normalsBuffer;
        this.f10435c = tangentsBuffer;
        this.f10438f = jointsBuffer;
        this.f10439g = weightsBuffer;
        this.f10440h = listener;
        a();
    }

    public static NativeShortBuffer b(NativeFloatBuffer vertices, NativeFloatBuffer uvs, NativeFloatBuffer normals, NativeFloatBuffer tangents, NativeIntBuffer triangles, int vcount) {
        return e(vertices, normals, tangents, vcount) ? new Jb.a(vertices, normals, tangents, triangles).b() : new g(vertices, uvs, normals, triangles).b();
    }

    public static NativeByteBuffer c(NativeFloatBuffer joints, NativeFloatBuffer weights, int vcount) {
        float f10;
        float f11;
        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(vcount * 8);
        for (int i10 = 0; i10 < vcount; i10++) {
            int j10 = j(joints, i10, 0);
            int j11 = j(joints, i10, 1);
            int j12 = j(joints, i10, 2);
            int j13 = j(joints, i10, 3);
            float l10 = l(weights, i10, 0);
            float l11 = l(weights, i10, 1);
            float l12 = l(weights, i10, 2);
            float l13 = l10 + l11 + l12 + l(weights, i10, 3);
            float f12 = 0.0f;
            if (l13 <= 0.0f) {
                f11 = 1.0f;
                j11 = 0;
                j12 = 0;
                j13 = 0;
                f10 = 0.0f;
            } else {
                f10 = l12 / l13;
                f12 = l11 / l13;
                f11 = l10 / l13;
            }
            int k10 = k(f11);
            int k11 = k(f12);
            int k12 = k(f10);
            int i11 = ((255 - k10) - k11) - k12;
            if (i11 < 0) {
                i11 = 0;
            } else if (i11 > 255) {
                i11 = 255;
            }
            nativeByteBuffer.put((byte) f(j10));
            nativeByteBuffer.put((byte) f(j11));
            nativeByteBuffer.put((byte) f(j12));
            nativeByteBuffer.put((byte) f(j13));
            nativeByteBuffer.put((byte) k10);
            nativeByteBuffer.put((byte) k11);
            nativeByteBuffer.put((byte) k12);
            nativeByteBuffer.put((byte) i11);
        }
        nativeByteBuffer.position(0);
        return nativeByteBuffer;
    }

    public static NativeShortBuffer d(NativeIntBuffer tris) {
        int capacity = tris.capacity();
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(capacity);
        for (int i10 = 0; i10 < capacity; i10++) {
            nativeShortBuffer.put((short) (tris.get(i10) & 65535));
        }
        nativeShortBuffer.position(0);
        return nativeShortBuffer;
    }

    public static boolean e(NativeFloatBuffer vertices, NativeFloatBuffer normals, NativeFloatBuffer tangents, int vcount) {
        return (vertices == null || normals == null || tangents == null || normals.capacity() < vcount * 3 || tangents.capacity() < vcount * 4) ? false : true;
    }

    public static int f(int x10) {
        if (x10 < 0) {
            return 0;
        }
        if (x10 > 255) {
            return 255;
        }
        return x10;
    }

    public static int j(NativeFloatBuffer joints, int v10, int k10) {
        int i10 = (v10 * 4) + k10;
        if (joints != null && i10 < joints.capacity()) {
            return f(Math.round(joints.get(i10)));
        }
        return 0;
    }

    public static int k(float w01) {
        int round = Math.round(w01 * 255.0f);
        if (round < 0) {
            round = 0;
        }
        if (round > 255) {
            return 255;
        }
        return round;
    }

    public static float l(NativeFloatBuffer weights, int v10, int k10) {
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

    /* JADX WARN: Removed duplicated region for block: B:34:0x007e A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:46:0x0076, B:34:0x007e, B:36:0x0083, B:37:0x0086), top: B:45:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0083 A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:46:0x0076, B:34:0x007e, B:36:0x0083, B:37:0x0086), top: B:45:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        NativeByteBuffer nativeByteBuffer;
        NativeShortBuffer nativeShortBuffer;
        NativeFloatBuffer nativeFloatBuffer;
        NativeFloatBuffer nativeFloatBuffer2;
        NativeShortBuffer b10;
        NativeByteBuffer c10;
        int h10 = h();
        NativeIntBuffer nativeIntBuffer = this.f10437e;
        int capacity = (nativeIntBuffer != null ? nativeIntBuffer.capacity() : 0) / 3;
        if (h10 == 0 || capacity == 0) {
            return;
        }
        NativeFloatBuffer nativeFloatBuffer3 = this.f10436d;
        try {
            nativeFloatBuffer = g(h10);
            if (nativeFloatBuffer != null) {
                nativeFloatBuffer2 = nativeFloatBuffer;
            } else {
                try {
                    nativeFloatBuffer2 = this.f10436d;
                } catch (Throwable th2) {
                    th = th2;
                    nativeByteBuffer = null;
                    nativeShortBuffer = null;
                    if (r8 != null) {
                    }
                    if (nativeByteBuffer != null) {
                    }
                    if (nativeShortBuffer != null) {
                    }
                    throw th;
                }
            }
            b10 = b(this.f10433a, nativeFloatBuffer2, this.f10434b, this.f10435c, this.f10437e, h10);
            try {
                c10 = i(h10) ? c(this.f10438f, this.f10439g, h10) : null;
            } catch (Throwable th3) {
                th = th3;
                nativeShortBuffer = null;
                r8 = b10;
                nativeByteBuffer = null;
            }
        } catch (Throwable th4) {
            th = th4;
            nativeByteBuffer = null;
            nativeShortBuffer = null;
            nativeFloatBuffer = null;
        }
        try {
            r8 = this.f10437e.findMaxValue() <= 65535 ? d(this.f10437e) : null;
            this.f10440h.a(b10, r8, c10);
            this.f10436d = nativeFloatBuffer3;
            if (nativeFloatBuffer != null) {
                nativeFloatBuffer.destroyImmediate();
            }
        } catch (Throwable th5) {
            NativeShortBuffer nativeShortBuffer2 = r8;
            r8 = b10;
            nativeByteBuffer = c10;
            th = th5;
            nativeShortBuffer = nativeShortBuffer2;
            if (r8 != null) {
                try {
                    r8.destroyImmediate();
                } catch (Throwable th6) {
                    this.f10436d = nativeFloatBuffer3;
                    if (nativeFloatBuffer != null) {
                        nativeFloatBuffer.destroyImmediate();
                    }
                    throw th6;
                }
            }
            if (nativeByteBuffer != null) {
                nativeByteBuffer.destroyImmediate();
            }
            if (nativeShortBuffer != null) {
                nativeShortBuffer.destroyImmediate();
            }
            throw th;
        }
    }

    public final NativeFloatBuffer g(int vertexCount) {
        NativeFloatBuffer nativeFloatBuffer = this.f10436d;
        if (nativeFloatBuffer != null && nativeFloatBuffer.capacity() >= vertexCount * 2) {
            return null;
        }
        NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(vertexCount * 2);
        NativeFloatBuffer nativeFloatBuffer3 = this.f10436d;
        int min = nativeFloatBuffer3 != null ? Math.min(vertexCount, nativeFloatBuffer3.capacity() / 2) : 0;
        NativeFloatBuffer nativeFloatBuffer4 = this.f10436d;
        if (nativeFloatBuffer4 != null && min > 0) {
            nativeFloatBuffer2.put(nativeFloatBuffer4, min * 2);
        }
        while (min < vertexCount) {
            int i10 = min * 3;
            float f10 = this.f10433a.get(i10);
            float f11 = this.f10433a.get(i10 + 2);
            int i11 = min * 2;
            nativeFloatBuffer2.set(i11, f10);
            nativeFloatBuffer2.set(i11 + 1, f11);
            min++;
        }
        nativeFloatBuffer2.position(0);
        return nativeFloatBuffer2;
    }

    public final int h() {
        NativeFloatBuffer nativeFloatBuffer = this.f10433a;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public final boolean i(int vcount) {
        NativeFloatBuffer nativeFloatBuffer = this.f10438f;
        if (nativeFloatBuffer == null || this.f10439g == null) {
            return false;
        }
        int i10 = vcount * 4;
        int i11 = vcount * 3;
        return Math.min(nativeFloatBuffer.capacity(), i10) >= i11 && Math.min(this.f10439g.capacity(), i10) >= i11;
    }
}
