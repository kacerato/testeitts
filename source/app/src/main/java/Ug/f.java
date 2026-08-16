package Ug;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.jme3.math.Vector3f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import uc.C15593a;
import vc.p;
import vc.q;

public class f {

    public final List<h> f26102a = new ArrayList(10);

    public static void b(NativeIntBuffer buf, int value) {
        for (int i10 = 0; i10 < buf.capacity(); i10++) {
            buf.set(i10, value);
        }
    }

    public static int f(NativeIntBuffer map, int oldGlobal) {
        if (map.get(oldGlobal) != -1) {
            return 0;
        }
        map.set(oldGlobal, 0);
        return 1;
    }

    public static int q(NativeIntBuffer map, int oldGlobal, int localIndex, q vtx, q nrm, p uv, q outV, q outN, p outUV, int nextNewIndex) {
        int i10 = map.get(oldGlobal);
        if (i10 != -1) {
            return i10;
        }
        map.set(oldGlobal, nextNewIndex);
        outV.s(vtx.m(localIndex), vtx.n(localIndex), vtx.o(localIndex));
        outN.s(nrm.m(localIndex), nrm.n(localIndex), nrm.o(localIndex));
        outUV.m(uv.i(localIndex), uv.j(localIndex));
        return nextNewIndex;
    }

    public final void a(NativeFloatBuffer buffer, int baseIndex, float value, int count) {
        if (buffer != null) {
            buffer.fill(baseIndex, value, count);
        }
    }

    public Vertex c(List<h> rendererList) {
        this.f26102a.clear();
        v(rendererList);
        return p();
    }

    public List<h> d() {
        return this.f26102a;
    }

    public boolean e() {
        return !this.f26102a.isEmpty();
    }

    public final NativeFloatBuffer g(int capacity) {
        if (capacity > 0) {
            return C15593a.j(capacity);
        }
        return null;
    }

    public final void h(NativeFloatBuffer buffer, float value) {
        if (buffer != null) {
            buffer.put(value);
        }
    }

    public final void i(NativeFloatBuffer buffer, float x10, float y10) {
        if (buffer != null) {
            buffer.put(x10, y10);
        }
    }

    public final void j(NativeFloatBuffer buffer, float x10, float y10, float z10) {
        if (buffer != null) {
            buffer.put(x10, y10, z10);
        }
    }

    public final void k(NativeFloatBuffer buffer, Vector3 value) {
        if (buffer != null) {
            buffer.put(value);
        }
    }

    public final void l(NativeFloatBuffer buffer, NativeFloatBuffer value) {
        if (buffer != null) {
            buffer.put(value);
        }
    }

    public final void m(NativeFloatBuffer buffer, NativeFloatBuffer value, int count) {
        if (buffer != null) {
            buffer.put(value, count);
        }
    }

    public final void n(NativeFloatBuffer buffer, Vector3f value) {
        if (buffer != null) {
            buffer.put(value);
        }
    }

    public final void o(NativeFloatBuffer buffer, float value, int count) {
        if (buffer != null) {
            buffer.putFill(value, count);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    public final Vertex p() {
        float f10;
        int i10;
        vc.n nVar;
        q qVar;
        NativeIntBuffer nativeIntBuffer;
        p pVar;
        q qVar2;
        Vertex vertex = new Vertex();
        Iterator<h> it = this.f26102a.iterator();
        ?? r32 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            g a10 = it.next().a();
            if (a10 != null) {
                i11 += a10.i().d();
            }
        }
        if (i11 == 0) {
            vertex.F(false, true);
            return vertex;
        }
        NativeIntBuffer o10 = C15593a.o(i11);
        b(o10, -1);
        Iterator<h> it2 = this.f26102a.iterator();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            f10 = 1.0E-12f;
            if (!it2.hasNext()) {
                break;
            }
            g a11 = it2.next().a();
            if (a11 != null) {
                q i15 = a11.i();
                vc.n g10 = a11.g();
                for (int i16 = 0; i16 < g10.b(); i16++) {
                    int h10 = g10.h(i16);
                    int i17 = g10.i(i16);
                    int j10 = g10.j(i16);
                    float m10 = i15.m(h10);
                    float n10 = i15.n(h10);
                    float o11 = i15.o(h10);
                    float m11 = i15.m(i17);
                    float n11 = i15.n(i17);
                    float f11 = m11 - m10;
                    float f12 = n11 - n10;
                    float o12 = i15.o(i17) - o11;
                    float m12 = i15.m(j10) - m10;
                    float n12 = i15.n(j10) - n10;
                    float o13 = i15.o(j10) - o11;
                    float f13 = (f12 * o13) - (o12 * n12);
                    float f14 = (o12 * m12) - (o13 * f11);
                    float f15 = (f11 * n12) - (f12 * m12);
                    if ((f13 * f13) + (f14 * f14) + (f15 * f15) > 1.0E-12f) {
                        i12 = i12 + f(o10, h10 + i14) + f(o10, i17 + i14) + f(o10, j10 + i14);
                        i13 += 3;
                    }
                }
                i14 += i15.d();
            }
        }
        if (i12 == 0 || i13 == 0) {
            vertex.F(false, true);
            return vertex;
        }
        q w10 = C15593a.w(i12);
        q w11 = C15593a.w(i12);
        p u10 = C15593a.u(i12);
        NativeIntBuffer o14 = C15593a.o(i13);
        b(o10, -1);
        Iterator<h> it3 = this.f26102a.iterator();
        int i18 = 0;
        int i19 = 0;
        while (it3.hasNext()) {
            g a12 = it3.next().a();
            if (a12 != null) {
                q i20 = a12.i();
                q c10 = a12.c();
                p a13 = a12.a();
                vc.n g11 = a12.g();
                int i21 = r32;
                int i22 = i18;
                while (i21 < g11.b()) {
                    int h11 = g11.h(i21);
                    int i23 = g11.i(i21);
                    int j11 = g11.j(i21);
                    float m13 = i20.m(h11);
                    float n13 = i20.n(h11);
                    float o15 = i20.o(h11);
                    float m14 = i20.m(i23);
                    float n14 = i20.n(i23);
                    float f16 = m14 - m13;
                    float f17 = n14 - n13;
                    float o16 = i20.o(i23) - o15;
                    float m15 = i20.m(j11) - m13;
                    float n15 = i20.n(j11) - n13;
                    float o17 = i20.o(j11) - o15;
                    float f18 = (f17 * o17) - (o16 * n15);
                    float f19 = (o16 * m15) - (o17 * f16);
                    float f20 = (f16 * n15) - (f17 * m15);
                    if ((f18 * f18) + (f19 * f19) + (f20 * f20) <= f10) {
                        i10 = i21;
                        nVar = g11;
                        qVar = i20;
                        nativeIntBuffer = o14;
                        pVar = u10;
                        qVar2 = w11;
                    } else {
                        i10 = i21;
                        int i24 = i22;
                        nVar = g11;
                        qVar = i20;
                        nativeIntBuffer = o14;
                        pVar = u10;
                        qVar2 = w11;
                        int q10 = q(o10, i19 + h11, h11, i20, c10, a13, w10, w11, u10, i24);
                        int i25 = q10 == i24 ? i24 + 1 : i24;
                        int q11 = q(o10, i19 + i23, i23, qVar, c10, a13, w10, qVar2, pVar, i25);
                        int i26 = q11 == i25 ? i25 + 1 : i25;
                        int q12 = q(o10, i19 + j11, j11, qVar, c10, a13, w10, qVar2, pVar, i26);
                        int i27 = i26;
                        if (q12 == i27) {
                            i27++;
                        }
                        i22 = i27;
                        nativeIntBuffer.put(q10);
                        nativeIntBuffer.put(q11);
                        nativeIntBuffer.put(q12);
                    }
                    i21 = i10 + 1;
                    o14 = nativeIntBuffer;
                    g11 = nVar;
                    i20 = qVar;
                    u10 = pVar;
                    w11 = qVar2;
                    f10 = 1.0E-12f;
                }
                i18 = i22;
                i19 += i20.d();
                r32 = 0;
                f10 = 1.0E-12f;
            }
        }
        boolean z10 = r32;
        NativeIntBuffer nativeIntBuffer2 = o14;
        p pVar2 = u10;
        q qVar3 = w11;
        w10.r(z10 ? 1 : 0);
        qVar3.r(z10 ? 1 : 0);
        pVar2.l(z10 ? 1 : 0);
        nativeIntBuffer2.position(z10 ? 1 : 0);
        vertex.r2(w10);
        vertex.Z1(qVar3);
        vertex.n2(pVar2);
        vertex.i2(nativeIntBuffer2);
        vertex.F(z10, true);
        return vertex;
    }

    public final void r(NativeFloatBuffer buffer, int value) {
        if (buffer != null) {
            buffer.position(value);
        }
    }

    public final void s(NativeFloatBuffer buffer, int idx, float value) {
        if (buffer != null) {
            buffer.set(idx, value);
        }
    }

    public final void t(NativeFloatBuffer buffer, int idx, Vector3 value) {
        if (buffer != null) {
            buffer.set(idx, value);
        }
    }

    public final void u(NativeFloatBuffer buffer, int idx, Vector3f value) {
        if (buffer != null) {
            buffer.set(idx, value);
        }
    }

    public final void v(List<h> rendererList) {
        for (int i10 = 0; i10 < rendererList.size(); i10++) {
            h hVar = rendererList.get(i10);
            if (hVar.a() != null) {
                this.f26102a.add(hVar);
            }
        }
    }
}
