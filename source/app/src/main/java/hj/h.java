package Hj;

import Bi.InterfaceC2377i;
import javax.crypto.interfaces.PBEKey;

public class h extends g implements PBEKey {

    public final byte[] f8513d;

    public final int f8514e;

    public h(char[] cArr, InterfaceC2377i interfaceC2377i, byte[] bArr, int i10) {
        super(cArr, interfaceC2377i);
        this.f8513d = org.bouncycastle.util.a.p(bArr);
        this.f8514e = i10;
    }

    @Override
    public int getIterationCount() {
        return this.f8514e;
    }

    @Override
    public byte[] getSalt() {
        return this.f8513d;
    }
}
