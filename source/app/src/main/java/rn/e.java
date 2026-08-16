package rn;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import pn.i;
import qn.g;
import qn.h;
import qn.p;

public class e extends pn.a {

    public final i f109100a = new i();

    public final h f109101b = new h();

    public void h(OutputStream stream, g cache, ByteOrder order, boolean cCompatibility) throws IOException {
        c(stream, d.f109092f, order);
        c(stream, cCompatibility ? 1 : 34817, order);
        int i10 = 0;
        for (int i11 = 0; i11 < cache.A(); i11++) {
            qn.c x10 = cache.x(i11);
            if (x10 != null && x10.f108429d != null) {
                i10++;
            }
        }
        c(stream, i10, order);
        this.f109100a.h(stream, cache.s().C(), order);
        i(stream, cache.w(), order);
        for (int i12 = 0; i12 < cache.A(); i12++) {
            qn.c x11 = cache.x(i12);
            if (x11 != null && x11.f108429d != null) {
                c(stream, (int) cache.B(x11), order);
                byte[] m10 = this.f109101b.m(cache.o(x11), order, cCompatibility);
                c(stream, m10.length, order);
                stream.write(m10);
            }
        }
    }

    public final void i(OutputStream stream, p params, ByteOrder order) throws IOException {
        for (int i10 = 0; i10 < 3; i10++) {
            b(stream, params.f108519a[i10], order);
        }
        b(stream, params.f108520b, order);
        b(stream, params.f108521c, order);
        c(stream, params.f108522d, order);
        c(stream, params.f108523e, order);
        b(stream, params.f108524f, order);
        b(stream, params.f108525g, order);
        b(stream, params.f108526h, order);
        b(stream, params.f108527i, order);
        c(stream, params.f108528j, order);
        c(stream, params.f108529k, order);
    }
}
