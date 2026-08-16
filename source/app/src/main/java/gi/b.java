package Gi;

import Bi.C2380l;
import Bi.D;
import Bi.InterfaceC2381m;
import Bi.InterfaceC2392y;
import java.security.SecureRandom;
import org.bouncycastle.crypto.DataLengthException;

public class b implements InterfaceC2381m {

    public final InterfaceC2392y f7847a;

    public final int f7848b;

    public final SecureRandom f7849c;

    public b(D d10, SecureRandom secureRandom) {
        this.f7847a = d10;
        this.f7848b = d10.i();
        this.f7849c = secureRandom;
    }

    private byte[] c(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[this.f7847a.f()];
        this.f7847a.update(bArr, 0, bArr.length);
        this.f7847a.update(bArr2, 0, bArr2.length);
        this.f7847a.c(bArr3, 0);
        return bArr3;
    }

    @Override
    public C2380l a(byte[] bArr) {
        int length = bArr.length;
        int i10 = this.f7848b;
        if (length > i10 / 2) {
            throw new DataLengthException("Message to be committed to too large for digest.");
        }
        byte[] bArr2 = new byte[i10 - bArr.length];
        this.f7849c.nextBytes(bArr2);
        return new C2380l(bArr2, c(bArr2, bArr));
    }

    @Override
    public boolean b(C2380l c2380l, byte[] bArr) {
        if (bArr.length + c2380l.b().length != this.f7848b) {
            throw new DataLengthException("Message and witness secret lengths do not match.");
        }
        return org.bouncycastle.util.a.I(c2380l.a(), c(c2380l.b(), bArr));
    }
}
