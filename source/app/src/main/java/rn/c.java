package rn;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import jn.C13904v;
import pn.h;
import qn.g;
import qn.n;
import qn.p;
import qn.r;

public class c {

    public final h f109091a = new h();

    public g a(InputStream is, int maxVertPerPoly, n meshProcessor) throws IOException {
        return b(pn.b.b(is), maxVertPerPoly, meshProcessor);
    }

    public g b(ByteBuffer bb2, int maxVertPerPoly, n meshProcessor) throws IOException {
        d dVar = new d();
        int i10 = bb2.getInt();
        dVar.f109095a = i10;
        if (i10 != 1414743380) {
            int a10 = pn.b.a(i10);
            dVar.f109095a = a10;
            if (a10 != 1414743380) {
                throw new IOException("Invalid magic");
            }
            ByteOrder order = bb2.order();
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            if (order == byteOrder) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            bb2.order(byteOrder);
        }
        int i11 = bb2.getInt();
        dVar.f109096b = i11;
        if (i11 != 1 && i11 != 34817) {
            throw new IOException("Invalid version");
        }
        boolean z10 = i11 == 1;
        dVar.f109097c = bb2.getInt();
        dVar.f109098d = this.f109091a.a(bb2);
        dVar.f109099e = c(bb2, z10);
        g gVar = new g(dVar.f109099e, new r(bb2.order(), z10), new C13904v(dVar.f109098d, maxVertPerPoly), sn.d.a(z10), meshProcessor);
        for (int i12 = 0; i12 < dVar.f109097c; i12++) {
            long j10 = bb2.getInt();
            int i13 = bb2.getInt();
            if (j10 == 0 || i13 == 0) {
                break;
            }
            byte[] bArr = new byte[i13];
            bb2.get(bArr);
            long e10 = gVar.e(bArr, 0);
            if (e10 != 0) {
                gVar.h(e10);
            }
        }
        return gVar;
    }

    public final p c(ByteBuffer bb2, boolean cCompatibility) {
        p pVar = new p();
        for (int i10 = 0; i10 < 3; i10++) {
            pVar.f108519a[i10] = bb2.getFloat();
        }
        pVar.f108520b = bb2.getFloat();
        pVar.f108521c = bb2.getFloat();
        pVar.f108522d = bb2.getInt();
        pVar.f108523e = bb2.getInt();
        pVar.f108524f = bb2.getFloat();
        pVar.f108525g = bb2.getFloat();
        pVar.f108526h = bb2.getFloat();
        pVar.f108527i = bb2.getFloat();
        pVar.f108528j = bb2.getInt();
        pVar.f108529k = bb2.getInt();
        return pVar;
    }
}
