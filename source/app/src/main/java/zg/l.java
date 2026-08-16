package zg;

import java.io.IOException;

public class l extends AbstractC16310b<vg.f> {
    public l(j jVar, Bg.k kVar, char[] cArr, int i10, boolean z10) throws IOException {
        super(jVar, kVar, cArr, i10, z10);
    }

    public final byte[] j() throws IOException {
        byte[] bArr = new byte[12];
        h(bArr);
        return bArr;
    }

    @Override
    public vg.f g(Bg.k kVar, char[] cArr, boolean z10) throws IOException {
        return new vg.f(cArr, kVar.f(), kVar.m(), j(), z10);
    }
}
