package bj;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.S;
import Li.C2778e0;
import Xi.C3335c;
import Xi.x0;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import hi.C13486b;
import hi.C13510w;
import hi.E0;
import java.io.IOException;
import java.util.Hashtable;
import nl.C14464h;
import oh.A0;
import oh.C14549x;
import oh.InterfaceC14520i;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.DataLengthException;

public class w implements S {

    public static final Hashtable f33399k;

    public final InterfaceC2370b f33400g;

    public final C13486b f33401h;

    public final InterfaceC2392y f33402i;

    public boolean f33403j;

    static {
        Hashtable hashtable = new Hashtable();
        f33399k = hashtable;
        hashtable.put("RIPEMD128", InterfaceC3890b.f33237c);
        hashtable.put("RIPEMD160", InterfaceC3890b.f33236b);
        hashtable.put("RIPEMD256", InterfaceC3890b.f33238d);
        hashtable.put("SHA-1", E0.f90634T4);
        hashtable.put("SHA-224", Sh.d.f23343f);
        hashtable.put("SHA-256", Sh.d.f23337c);
        hashtable.put("SHA-384", Sh.d.f23339d);
        hashtable.put("SHA-512", Sh.d.f23341e);
        hashtable.put("SHA-512/224", Sh.d.f23345g);
        hashtable.put(C14464h.f98323d, Sh.d.f23347h);
        hashtable.put("SHA3-224", Sh.d.f23349i);
        hashtable.put("SHA3-256", Sh.d.f23351j);
        hashtable.put("SHA3-384", Sh.d.f23353k);
        hashtable.put("SHA3-512", Sh.d.f23355l);
        hashtable.put("MD2", Xh.t.f29135s1);
        hashtable.put("MD4", Xh.t.f29138t1);
        hashtable.put(KeyProperties.DIGEST_MD5, Xh.t.f29141u1);
    }

    public w(InterfaceC2392y interfaceC2392y) {
        this(interfaceC2392y, (C14549x) f33399k.get(interfaceC2392y.b()));
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f33403j = z10;
        C3335c c3335c = interfaceC2379k instanceof x0 ? (C3335c) ((x0) interfaceC2379k).a() : (C3335c) interfaceC2379k;
        if (z10 && !c3335c.c()) {
            throw new IllegalArgumentException("signing requires private key");
        }
        if (!z10 && c3335c.c()) {
            throw new IllegalArgumentException("verification requires public key");
        }
        reset();
        this.f33400g.a(z10, interfaceC2379k);
    }

    @Override
    public boolean b(byte[] bArr) {
        byte[] b10;
        byte[] g10;
        if (this.f33403j) {
            throw new IllegalStateException("RSADigestSigner not initialised for verification");
        }
        int f10 = this.f33402i.f();
        byte[] bArr2 = new byte[f10];
        this.f33402i.c(bArr2, 0);
        try {
            b10 = this.f33400g.b(bArr, 0, bArr.length);
            g10 = g(bArr2);
        } catch (Exception unused) {
        }
        if (b10.length == g10.length) {
            return org.bouncycastle.util.a.I(b10, g10);
        }
        if (b10.length != g10.length - 2) {
            org.bouncycastle.util.a.I(g10, g10);
            return false;
        }
        int length = (b10.length - f10) - 2;
        int length2 = (g10.length - f10) - 2;
        g10[1] = (byte) (g10[1] - 2);
        g10[3] = (byte) (g10[3] - 2);
        int i10 = 0;
        for (int i11 = 0; i11 < f10; i11++) {
            i10 |= b10[length + i11] ^ g10[length2 + i11];
        }
        for (int i12 = 0; i12 < length; i12++) {
            i10 |= b10[i12] ^ g10[i12];
        }
        return i10 == 0;
    }

    @Override
    public byte[] c() throws CryptoException, DataLengthException {
        if (!this.f33403j) {
            throw new IllegalStateException("RSADigestSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.f33402i.f()];
        this.f33402i.c(bArr, 0);
        try {
            byte[] g10 = g(bArr);
            return this.f33400g.b(g10, 0, g10.length);
        } catch (IOException e10) {
            throw new CryptoException("unable to encode signature: " + e10.getMessage(), e10);
        }
    }

    public final byte[] g(byte[] bArr) throws IOException {
        C13486b c13486b = this.f33401h;
        if (c13486b != null) {
            return new C13510w(c13486b, bArr).s(InterfaceC14520i.f98892a);
        }
        try {
            C13510w.w(bArr);
            return bArr;
        } catch (IllegalArgumentException e10) {
            throw new IOException("malformed DigestInfo for NONEwithRSA hash: " + e10.getMessage());
        }
    }

    public String h() {
        return this.f33402i.b() + "withRSA";
    }

    @Override
    public void reset() {
        this.f33402i.reset();
    }

    @Override
    public void update(byte b10) {
        this.f33402i.update(b10);
    }

    public w(InterfaceC2392y interfaceC2392y, C14549x c14549x) {
        this.f33400g = new Ki.c(new C2778e0());
        this.f33402i = interfaceC2392y;
        this.f33401h = c14549x != null ? new C13486b(c14549x, A0.f98776c) : null;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f33402i.update(bArr, i10, i11);
    }
}
