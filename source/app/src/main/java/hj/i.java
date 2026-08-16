package Hj;

import Bi.InterfaceC2377i;

public class i implements k {

    public final char[] f8515b;

    public final InterfaceC2377i f8516c;

    public i(char[] cArr, InterfaceC2377i interfaceC2377i) {
        this.f8515b = org.bouncycastle.util.a.r(cArr);
        this.f8516c = interfaceC2377i;
    }

    @Override
    public String getAlgorithm() {
        return "PBKDF2";
    }

    @Override
    public byte[] getEncoded() {
        return this.f8516c.a(this.f8515b);
    }

    @Override
    public String getFormat() {
        return this.f8516c.getType();
    }

    public char[] getPassword() {
        return this.f8515b;
    }
}
