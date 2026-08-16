package pn;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import jn.C13884a;
import jn.C13900q;
import jn.F;
import jn.G;
import jn.H;
import jn.r;

public class c {

    public static final int f104193a = 10;

    public static final int f104194b = 16;

    public static final int f104195c = 12;

    public static int a(boolean is32Bit) {
        return is32Bit ? 12 : 16;
    }

    public C13900q b(InputStream stream, int maxVertPerPoly) throws IOException {
        return d(b.b(stream), maxVertPerPoly, false);
    }

    public C13900q c(ByteBuffer buf, int maxVertPerPoly) throws IOException {
        return d(buf, maxVertPerPoly, false);
    }

    public C13900q d(ByteBuffer buf, int maxVertPerPoly, boolean is32Bit) throws IOException {
        C13900q c13900q = new C13900q();
        r rVar = new r();
        c13900q.f94282a = rVar;
        int i10 = buf.getInt();
        rVar.f94298a = i10;
        if (i10 != 1145979222) {
            int a10 = b.a(i10);
            rVar.f94298a = a10;
            if (a10 != 1145979222) {
                throw new IOException("Invalid magic");
            }
            ByteOrder order = buf.order();
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            if (order == byteOrder) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            buf.order(byteOrder);
        }
        int i11 = buf.getInt();
        rVar.f94299b = i11;
        if (i11 != 7 && (i11 < 34823 || i11 > 34825)) {
            throw new IOException("Invalid version " + rVar.f94299b);
        }
        boolean z10 = i11 == 7;
        rVar.f94300c = buf.getInt();
        rVar.f94301d = buf.getInt();
        rVar.f94302e = buf.getInt();
        rVar.f94303f = buf.getInt();
        rVar.f94304g = buf.getInt();
        rVar.f94305h = buf.getInt();
        rVar.f94306i = buf.getInt();
        rVar.f94307j = buf.getInt();
        rVar.f94308k = buf.getInt();
        rVar.f94309l = buf.getInt();
        rVar.f94310m = buf.getInt();
        rVar.f94311n = buf.getInt();
        rVar.f94312o = buf.getInt();
        rVar.f94313p = buf.getFloat();
        rVar.f94314q = buf.getFloat();
        rVar.f94315r = buf.getFloat();
        for (int i12 = 0; i12 < 3; i12++) {
            rVar.f94316s[i12] = buf.getFloat();
        }
        for (int i13 = 0; i13 < 3; i13++) {
            rVar.f94317t[i13] = buf.getFloat();
        }
        rVar.f94318u = buf.getFloat();
        c13900q.f94283b = l(buf, rVar.f94305h);
        c13900q.f94284c = k(buf, rVar, maxVertPerPoly);
        if (z10) {
            buf.position(buf.position() + (rVar.f94306i * a(is32Bit)));
        }
        c13900q.f94285d = j(buf, rVar, z10);
        c13900q.f94286e = l(buf, rVar.f94308k);
        c13900q.f94287f = h(buf, rVar);
        c13900q.f94288g = g(buf, rVar);
        c13900q.f94289h = i(buf, rVar);
        return c13900q;
    }

    public C13900q e(InputStream stream, int maxVertPerPoly) throws IOException {
        return d(b.b(stream), maxVertPerPoly, true);
    }

    public C13900q f(ByteBuffer buf, int maxVertPerPoly) throws IOException {
        return d(buf, maxVertPerPoly, true);
    }

    public final C13884a[] g(ByteBuffer buf, r header) {
        int i10 = header.f94310m;
        C13884a[] c13884aArr = new C13884a[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            c13884aArr[i11] = new C13884a();
            if (header.f94299b < 34825) {
                for (int i12 = 0; i12 < 3; i12++) {
                    c13884aArr[i11].f94236a[i12] = 65535 & buf.getShort();
                }
                for (int i13 = 0; i13 < 3; i13++) {
                    c13884aArr[i11].f94237b[i13] = buf.getShort() & 65535;
                }
            } else {
                for (int i14 = 0; i14 < 3; i14++) {
                    c13884aArr[i11].f94236a[i14] = buf.getInt();
                }
                for (int i15 = 0; i15 < 3; i15++) {
                    c13884aArr[i11].f94237b[i15] = buf.getInt();
                }
            }
            c13884aArr[i11].f94238c = buf.getInt();
        }
        return c13884aArr;
    }

    public final int[] h(ByteBuffer buf, r header) {
        int i10 = header.f94309l * 4;
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = buf.get() & 255;
        }
        return iArr;
    }

    public final F[] i(ByteBuffer buf, r header) {
        int i10 = header.f94311n;
        F[] fArr = new F[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            fArr[i11] = new F();
            for (int i12 = 0; i12 < 6; i12++) {
                fArr[i11].f94168a[i12] = buf.getFloat();
            }
            fArr[i11].f94169b = buf.getFloat();
            fArr[i11].f94170c = buf.getShort() & 65535;
            fArr[i11].f94171d = buf.get() & 255;
            fArr[i11].f94172e = buf.get() & 255;
            fArr[i11].f94173f = buf.getInt();
        }
        return fArr;
    }

    public final H[] j(ByteBuffer buf, r header, boolean cCompatibility) {
        int i10 = header.f94307j;
        H[] hArr = new H[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            H h10 = new H();
            hArr[i11] = h10;
            h10.f94182a = buf.getInt();
            hArr[i11].f94183b = buf.getInt();
            hArr[i11].f94184c = buf.get() & 255;
            hArr[i11].f94185d = buf.get() & 255;
            if (cCompatibility) {
                buf.getShort();
            }
        }
        return hArr;
    }

    public final G[] k(ByteBuffer buf, r header, int maxVertPerPoly) {
        G g10;
        int i10 = header.f94304g;
        G[] gArr = new G[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            gArr[i11] = new G(i11, maxVertPerPoly);
            if (header.f94299b < 34824) {
                buf.getInt();
            }
            int i12 = 0;
            while (true) {
                int[] iArr = gArr[i11].f94177b;
                if (i12 >= iArr.length) {
                    break;
                }
                iArr[i12] = buf.getShort() & 65535;
                i12++;
            }
            int i13 = 0;
            while (true) {
                g10 = gArr[i11];
                int[] iArr2 = g10.f94178c;
                if (i13 < iArr2.length) {
                    iArr2[i13] = buf.getShort() & 65535;
                    i13++;
                }
            }
            g10.f94179d = buf.getShort() & 65535;
            gArr[i11].f94180e = buf.get() & 255;
            gArr[i11].f94181f = buf.get() & 255;
        }
        return gArr;
    }

    public final float[] l(ByteBuffer buf, int count) {
        int i10 = count * 3;
        float[] fArr = new float[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            fArr[i11] = buf.getFloat();
        }
        return fArr;
    }
}
