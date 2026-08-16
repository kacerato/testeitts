package Uj;

import Bi.InterfaceC2392y;
import java.security.DigestException;
import java.security.MessageDigest;

public class a extends MessageDigest {

    public InterfaceC2392y f26202b;

    public int f26203c;

    public a(InterfaceC2392y interfaceC2392y) {
        super(interfaceC2392y.b());
        this.f26202b = interfaceC2392y;
        this.f26203c = interfaceC2392y.f();
    }

    @Override
    public int engineDigest(byte[] bArr, int i10, int i11) throws DigestException {
        int i12 = this.f26203c;
        if (i11 < i12) {
            throw new DigestException("partial digests not returned");
        }
        if (bArr.length - i10 < i12) {
            throw new DigestException("insufficient space in the output buffer to store the digest");
        }
        this.f26202b.c(bArr, i10);
        return this.f26203c;
    }

    @Override
    public int engineGetDigestLength() {
        return this.f26203c;
    }

    @Override
    public void engineReset() {
        this.f26202b.reset();
    }

    @Override
    public void engineUpdate(byte b10) {
        this.f26202b.update(b10);
    }

    @Override
    public byte[] engineDigest() {
        byte[] bArr = new byte[this.f26203c];
        this.f26202b.c(bArr, 0);
        return bArr;
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) {
        this.f26202b.update(bArr, i10, i11);
    }
}
