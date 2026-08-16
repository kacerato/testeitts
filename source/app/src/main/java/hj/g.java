package Hj;

import Bi.InterfaceC2377i;

public class g implements k {

    public final char[] f8511b;

    public final InterfaceC2377i f8512c;

    public g(char[] cArr, InterfaceC2377i interfaceC2377i) {
        char[] cArr2 = new char[cArr.length];
        this.f8511b = cArr2;
        this.f8512c = interfaceC2377i;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }

    @Override
    public String getAlgorithm() {
        return "PBKDF1";
    }

    @Override
    public byte[] getEncoded() {
        return this.f8512c.a(this.f8511b);
    }

    @Override
    public String getFormat() {
        return this.f8512c.getType();
    }

    public char[] getPassword() {
        return this.f8511b;
    }
}
