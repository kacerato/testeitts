package pn;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import jn.C13900q;
import jn.G;
import jn.r;

public class d extends a {
    public void h(OutputStream stream, C13900q data, ByteOrder order, boolean cCompatibility) throws IOException {
        r rVar = data.f94282a;
        c(stream, rVar.f94298a, order);
        c(stream, cCompatibility ? 7 : 34825, order);
        c(stream, rVar.f94300c, order);
        c(stream, rVar.f94301d, order);
        c(stream, rVar.f94302e, order);
        c(stream, rVar.f94303f, order);
        c(stream, rVar.f94304g, order);
        c(stream, rVar.f94305h, order);
        c(stream, rVar.f94306i, order);
        c(stream, rVar.f94307j, order);
        c(stream, rVar.f94308k, order);
        c(stream, rVar.f94309l, order);
        c(stream, rVar.f94310m, order);
        c(stream, rVar.f94311n, order);
        c(stream, rVar.f94312o, order);
        b(stream, rVar.f94313p, order);
        b(stream, rVar.f94314q, order);
        b(stream, rVar.f94315r, order);
        b(stream, rVar.f94316s[0], order);
        b(stream, rVar.f94316s[1], order);
        b(stream, rVar.f94316s[2], order);
        b(stream, rVar.f94317t[0], order);
        b(stream, rVar.f94317t[1], order);
        b(stream, rVar.f94317t[2], order);
        b(stream, rVar.f94318u, order);
        n(stream, data.f94283b, rVar.f94305h, order);
        m(stream, data, order, cCompatibility);
        if (cCompatibility) {
            stream.write(new byte[rVar.f94306i * c.a(false)]);
        }
        l(stream, data, order, cCompatibility);
        n(stream, data.f94286e, rVar.f94308k, order);
        j(stream, data);
        i(stream, data, order, cCompatibility);
        k(stream, data, order);
    }

    public final void i(OutputStream stream, C13900q data, ByteOrder order, boolean cCompatibility) throws IOException {
        for (int i10 = 0; i10 < data.f94282a.f94310m; i10++) {
            if (cCompatibility) {
                for (int i11 = 0; i11 < 3; i11++) {
                    f(stream, (short) data.f94288g[i10].f94236a[i11], order);
                }
                for (int i12 = 0; i12 < 3; i12++) {
                    f(stream, (short) data.f94288g[i10].f94237b[i12], order);
                }
            } else {
                for (int i13 = 0; i13 < 3; i13++) {
                    c(stream, data.f94288g[i10].f94236a[i13], order);
                }
                for (int i14 = 0; i14 < 3; i14++) {
                    c(stream, data.f94288g[i10].f94237b[i14], order);
                }
            }
            c(stream, data.f94288g[i10].f94238c, order);
        }
    }

    public final void j(OutputStream stream, C13900q data) throws IOException {
        for (int i10 = 0; i10 < data.f94282a.f94309l * 4; i10++) {
            stream.write(data.f94287f[i10]);
        }
    }

    public final void k(OutputStream stream, C13900q data, ByteOrder order) throws IOException {
        for (int i10 = 0; i10 < data.f94282a.f94311n; i10++) {
            for (int i11 = 0; i11 < 6; i11++) {
                b(stream, data.f94289h[i10].f94168a[i11], order);
            }
            b(stream, data.f94289h[i10].f94169b, order);
            f(stream, (short) data.f94289h[i10].f94170c, order);
            stream.write(data.f94289h[i10].f94171d);
            stream.write(data.f94289h[i10].f94172e);
            c(stream, data.f94289h[i10].f94173f, order);
        }
    }

    public final void l(OutputStream stream, C13900q data, ByteOrder order, boolean cCompatibility) throws IOException {
        for (int i10 = 0; i10 < data.f94282a.f94307j; i10++) {
            c(stream, data.f94285d[i10].f94182a, order);
            c(stream, data.f94285d[i10].f94183b, order);
            stream.write(data.f94285d[i10].f94184c);
            stream.write(data.f94285d[i10].f94185d);
            if (cCompatibility) {
                f(stream, (short) 0, order);
            }
        }
    }

    public final void m(OutputStream stream, C13900q data, ByteOrder order, boolean cCompatibility) throws IOException {
        G g10;
        for (int i10 = 0; i10 < data.f94282a.f94304g; i10++) {
            if (cCompatibility) {
                c(stream, 65535, order);
            }
            int i11 = 0;
            while (true) {
                int[] iArr = data.f94284c[i10].f94177b;
                if (i11 >= iArr.length) {
                    break;
                }
                f(stream, (short) iArr[i11], order);
                i11++;
            }
            int i12 = 0;
            while (true) {
                g10 = data.f94284c[i10];
                int[] iArr2 = g10.f94178c;
                if (i12 < iArr2.length) {
                    f(stream, (short) iArr2[i12], order);
                    i12++;
                }
            }
            f(stream, (short) g10.f94179d, order);
            stream.write(data.f94284c[i10].f94180e);
            stream.write(data.f94284c[i10].f94181f);
        }
    }

    public final void n(OutputStream stream, float[] verts, int count, ByteOrder order) throws IOException {
        for (int i10 = 0; i10 < count * 3; i10++) {
            b(stream, verts[i10], order);
        }
    }
}
