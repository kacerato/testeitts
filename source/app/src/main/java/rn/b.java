package rn;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import qn.m;

public class b extends pn.a {
    public void h(OutputStream stream, m header, ByteOrder order, boolean cCompatibility) throws IOException {
        c(stream, header.f108489a, order);
        c(stream, header.f108490b, order);
        c(stream, header.f108491c, order);
        c(stream, header.f108492d, order);
        c(stream, header.f108493e, order);
        for (int i10 = 0; i10 < 3; i10++) {
            b(stream, header.f108494f[i10], order);
        }
        for (int i11 = 0; i11 < 3; i11++) {
            b(stream, header.f108495g[i11], order);
        }
        f(stream, (short) header.f108496h, order);
        f(stream, (short) header.f108497i, order);
        stream.write(header.f108498j);
        stream.write(header.f108499k);
        stream.write(header.f108500l);
        stream.write(header.f108501m);
        stream.write(header.f108502n);
        stream.write(header.f108503o);
        if (cCompatibility) {
            f(stream, (short) 0, order);
        }
    }
}
