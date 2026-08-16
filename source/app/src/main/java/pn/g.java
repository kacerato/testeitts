package pn;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;
import jn.C13900q;
import jn.C13901s;
import jn.C13904v;

public class g extends a {

    public final d f104199a = new d();

    public final i f104200b = new i();

    public void h(OutputStream stream, C13904v mesh, ByteOrder order, boolean cCompatibility) throws IOException {
        i(stream, mesh, order, cCompatibility);
        j(stream, mesh, order, cCompatibility);
    }

    public final void i(OutputStream stream, C13904v mesh, ByteOrder order, boolean cCompatibility) throws IOException {
        C13900q c13900q;
        c(stream, j.f104201f, order);
        c(stream, cCompatibility ? 1 : 34818, order);
        int i10 = 0;
        for (int i11 = 0; i11 < mesh.x(); i11++) {
            C13901s I10 = mesh.I(i11);
            if (I10 != null && (c13900q = I10.f94321c) != null && c13900q.f94282a != null) {
                i10++;
            }
        }
        c(stream, i10, order);
        this.f104200b.h(stream, mesh.C(), order);
        if (cCompatibility) {
            return;
        }
        c(stream, mesh.y(), order);
    }

    public final void j(OutputStream stream, C13904v mesh, ByteOrder order, boolean cCompatibility) throws IOException {
        C13900q c13900q;
        for (int i10 = 0; i10 < mesh.x(); i10++) {
            C13901s I10 = mesh.I(i10);
            if (I10 != null && (c13900q = I10.f94321c) != null && c13900q.f94282a != null) {
                k kVar = new k();
                kVar.f104210a = mesh.P(I10);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                this.f104199a.h(byteArrayOutputStream, I10.f94321c, order, cCompatibility);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                kVar.f104211b = byteArray.length;
                d(stream, kVar.f104210a, order);
                c(stream, kVar.f104211b, order);
                if (cCompatibility) {
                    c(stream, 0, order);
                }
                stream.write(byteArray);
            }
        }
    }
}
