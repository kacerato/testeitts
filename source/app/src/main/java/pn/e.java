package pn;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import jn.C13890g;
import jn.C13904v;
import jn.y;

public class e {

    public final c f104196a = new c();

    public final h f104197b = new h();

    public final long a(int ref, y params) {
        int g10 = C13890g.g(C13890g.j(params.f94390d));
        int g11 = C13890g.g(C13890g.j(params.f94391e));
        return C13904v.s((ref >> (g10 + g11)) & ((1 << Math.min(31, (32 - g10) - g11)) - 1), (ref >> g11) & ((1 << g10) - 1), ref & ((1 << g11) - 1));
    }

    public C13904v b(InputStream is) throws IOException {
        return d(b.b(is));
    }

    public C13904v c(InputStream is, int maxVertPerPoly) throws IOException {
        return f(b.b(is), maxVertPerPoly, false);
    }

    public C13904v d(ByteBuffer bb2) throws IOException {
        return f(bb2, -1, false);
    }

    public C13904v e(ByteBuffer bb2, int maxVertPerPoly) throws IOException {
        return f(bb2, maxVertPerPoly, false);
    }

    public C13904v f(ByteBuffer bb2, int maxVertPerPoly, boolean is32Bit) throws IOException {
        j i10 = i(bb2, maxVertPerPoly);
        if (i10.f104209e > 0) {
            boolean z10 = i10.f104206b == 1;
            C13904v c13904v = new C13904v(i10.f104208d, i10.f104209e);
            j(bb2, is32Bit, i10, z10, c13904v);
            return c13904v;
        }
        throw new IOException("Invalid number of verts per poly " + i10.f104209e);
    }

    public C13904v g(InputStream is, int maxVertPerPoly) throws IOException {
        return f(b.b(is), maxVertPerPoly, true);
    }

    public C13904v h(ByteBuffer bb2, int maxVertPerPoly) throws IOException {
        return f(bb2, maxVertPerPoly, true);
    }

    public final j i(ByteBuffer bb2, int maxVertsPerPoly) throws IOException {
        j jVar = new j();
        int i10 = bb2.getInt();
        jVar.f104205a = i10;
        if (i10 != 1297302868) {
            int a10 = b.a(i10);
            jVar.f104205a = a10;
            if (a10 != 1297302868) {
                throw new IOException("Invalid magic " + jVar.f104205a);
            }
            ByteOrder order = bb2.order();
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            if (order == byteOrder) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            bb2.order(byteOrder);
        }
        int i11 = bb2.getInt();
        jVar.f104206b = i11;
        if (i11 != 1 && i11 != 34817 && i11 != 34818) {
            throw new IOException("Invalid version " + jVar.f104206b);
        }
        jVar.f104207c = bb2.getInt();
        jVar.f104208d = this.f104197b.a(bb2);
        jVar.f104209e = maxVertsPerPoly;
        if (jVar.f104206b == 34818) {
            jVar.f104209e = bb2.getInt();
        }
        return jVar;
    }

    public final void j(ByteBuffer bb2, boolean is32Bit, j header, boolean cCompatibility, C13904v mesh) throws IOException {
        for (int i10 = 0; i10 < header.f104207c; i10++) {
            k kVar = new k();
            if (is32Bit) {
                kVar.f104210a = a(bb2.getInt(), header.f104208d);
            } else {
                kVar.f104210a = bb2.getLong();
            }
            int i11 = bb2.getInt();
            kVar.f104211b = i11;
            if (kVar.f104210a == 0 || i11 == 0) {
                return;
            }
            if (cCompatibility && !is32Bit) {
                bb2.getInt();
            }
            mesh.c(this.f104196a.d(bb2, mesh.y(), is32Bit), i10, kVar.f104210a);
        }
    }
}
