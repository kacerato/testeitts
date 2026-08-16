package Ag;

import Bg.s;
import java.io.IOException;
import java.io.OutputStream;

public class l extends b<vg.g> {
    public l(j jVar, s sVar, char[] cArr, boolean z10) throws IOException {
        super(jVar, sVar, cArr, z10);
    }

    public final long h(s sVar) {
        return sVar.u() ? (Fg.h.h(sVar.l()) & Sg.b.f23266s) << 16 : sVar.g();
    }

    @Override
    public vg.g f(OutputStream outputStream, s sVar, char[] cArr, boolean z10) throws IOException {
        vg.g gVar = new vg.g(cArr, h(sVar), z10);
        g(gVar.e());
        return gVar;
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        super.write(bArr, i10, i11);
    }
}
