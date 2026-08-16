package Ej;

import Bi.D;
import Bi.InterfaceC2392y;
import Dj.j;
import Xi.K;
import Xi.L;
import bi.InterfaceC3890b;
import bj.C3893a;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import oh.C14549x;
import org.bouncycastle.operator.OperatorCreationException;

public class a implements Gj.d {

    public final L f5845a;

    public final j f5846b;

    public final C13486b f5847c;

    public final InterfaceC2392y f5848d;

    public final byte[] f5849e;

    public final C14549x f5850f;

    public final byte[] f5851g;

    public a(L l10) {
        this(l10, null);
    }

    @Override
    public j b() {
        return this.f5846b;
    }

    @Override
    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f5851g);
    }

    @Override
    public boolean d() {
        return this.f5849e == null;
    }

    @Override
    public C14549x e() {
        return this.f5850f;
    }

    @Override
    public C13486b f() {
        return this.f5847c;
    }

    @Override
    public OutputStream getOutputStream() {
        return new Qi.d(this.f5848d);
    }

    @Override
    public byte[] getSignature() {
        int f10 = this.f5848d.f();
        byte[] bArr = new byte[f10];
        this.f5848d.c(bArr, 0);
        C3893a c3893a = new C3893a(new bj.f(), this.f5848d);
        c3893a.a(true, this.f5845a);
        c3893a.update(bArr, 0, f10);
        byte[] bArr2 = this.f5851g;
        c3893a.update(bArr2, 0, bArr2.length);
        return c3893a.c();
    }

    public a(L l10, j jVar) {
        C13486b c13486b;
        this.f5845a = l10;
        C14549x j10 = ((K) l10.d()).j();
        this.f5850f = j10;
        this.f5846b = jVar;
        if (j10.A(Zh.d.f31273H)) {
            c13486b = new C13486b(Sh.d.f23337c);
        } else if (j10.A(InterfaceC3890b.f33255u)) {
            c13486b = new C13486b(Sh.d.f23337c);
        } else {
            if (!j10.A(InterfaceC3890b.f33259y)) {
                throw new IllegalArgumentException("unknown key type");
            }
            c13486b = new C13486b(Sh.d.f23339d);
        }
        this.f5847c = c13486b;
        try {
            D a10 = Rk.j.f22854b.a(this.f5847c);
            this.f5848d = a10;
            if (jVar == null) {
                this.f5849e = null;
                byte[] bArr = new byte[a10.f()];
                this.f5851g = bArr;
                a10.c(bArr, 0);
                return;
            }
            try {
                byte[] encoded = jVar.getEncoded();
                this.f5849e = encoded;
                byte[] bArr2 = new byte[a10.f()];
                this.f5851g = bArr2;
                a10.update(encoded, 0, encoded.length);
                a10.c(bArr2, 0);
            } catch (IOException e10) {
                throw new IllegalStateException("signer certificate encoding failed: " + e10.getMessage());
            }
        } catch (OperatorCreationException unused) {
            throw new IllegalStateException("cannot recognise digest type: " + ((Object) this.f5847c.u()));
        }
    }
}
