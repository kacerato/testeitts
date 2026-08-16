package vn;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import java.util.Iterator;

public class e extends pn.a {

    public final b f121738a = new b();

    public void h(OutputStream stream, c f10, ByteOrder byteOrder, boolean compression) throws IOException {
        c(stream, c.f121712z, byteOrder);
        c(stream, (compression ? 256 : 0) | 4096, byteOrder);
        b(stream, f10.f121718f, byteOrder);
        b(stream, f10.f121719g, byteOrder);
        b(stream, f10.f121720h, byteOrder);
        b(stream, f10.f121721i, byteOrder);
        b(stream, f10.f121722j, byteOrder);
        b(stream, f10.f121723k, byteOrder);
        b(stream, f10.f121724l, byteOrder);
        b(stream, f10.f121725m, byteOrder);
        b(stream, f10.f121726n, byteOrder);
        c(stream, f10.f121727o, byteOrder);
        g(stream, f10.f121728p);
        b(stream, f10.f121729q, byteOrder);
        b(stream, f10.f121730r, byteOrder);
        g(stream, f10.f121731s);
        c(stream, f10.f121732t, byteOrder);
        c(stream, f10.f121733u, byteOrder);
        b(stream, f10.f121734v[0], byteOrder);
        b(stream, f10.f121734v[1], byteOrder);
        b(stream, f10.f121734v[2], byteOrder);
        b(stream, f10.f121735w[0], byteOrder);
        b(stream, f10.f121735w[1], byteOrder);
        b(stream, f10.f121735w[2], byteOrder);
        b(stream, f10.f121735w[3], byteOrder);
        b(stream, f10.f121735w[4], byteOrder);
        b(stream, f10.f121735w[5], byteOrder);
        c(stream, f10.f121736x.size(), byteOrder);
        Iterator<f> it = f10.f121736x.iterator();
        while (it.hasNext()) {
            j(stream, it.next(), byteOrder, compression);
        }
    }

    public void i(OutputStream stream, c f10, boolean compression) throws IOException {
        h(stream, f10, c.f121711y, compression);
    }

    public void j(OutputStream stream, f tile, ByteOrder byteOrder, boolean compression) throws IOException {
        c(stream, tile.f121741a, byteOrder);
        c(stream, tile.f121742b, byteOrder);
        c(stream, tile.f121744d, byteOrder);
        c(stream, tile.f121745e, byteOrder);
        c(stream, tile.f121743c, byteOrder);
        b(stream, tile.f121746f[0], byteOrder);
        b(stream, tile.f121746f[1], byteOrder);
        b(stream, tile.f121746f[2], byteOrder);
        b(stream, tile.f121747g[0], byteOrder);
        b(stream, tile.f121747g[1], byteOrder);
        b(stream, tile.f121747g[2], byteOrder);
        b(stream, tile.f121748h, byteOrder);
        b(stream, tile.f121749i, byteOrder);
        byte[] bArr = tile.f121750j;
        if (compression) {
            bArr = this.f121738a.a(bArr);
        }
        c(stream, bArr.length, byteOrder);
        stream.write(bArr);
    }
}
