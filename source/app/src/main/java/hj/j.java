package Hj;

import Bi.InterfaceC2377i;
import javax.crypto.interfaces.PBEKey;

public class j extends i implements PBEKey {

    public final byte[] f8517d;

    public final int f8518e;

    public j(char[] cArr, InterfaceC2377i interfaceC2377i, byte[] bArr, int i10) {
        super(cArr, interfaceC2377i);
        this.f8517d = org.bouncycastle.util.a.p(bArr);
        this.f8518e = i10;
    }

    @Override
    public int getIterationCount() {
        return this.f8518e;
    }

    @Override
    public byte[] getSalt() {
        return this.f8517d;
    }
}
