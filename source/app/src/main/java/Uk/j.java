package Uk;

import Qk.C3016i;
import Qk.C3019l;
import Qk.F;
import Qk.I;
import Qk.InterfaceC3009b;
import Qk.r;
import Xh.p;
import Xh.q;
import Xh.s;
import Xh.t;
import android.security.keystore.KeyProperties;
import ck.z;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.OutputStream;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import oh.B;
import oh.C14549x;
import org.bouncycastle.crypto.util.l;
import org.bouncycastle.crypto.util.m;
import org.bouncycastle.crypto.util.v;
import org.bouncycastle.operator.OperatorCreationException;
import qh.InterfaceC15100a;

public class j {

    public final m f26278a;

    public InterfaceC12950f f26279b;

    public C14549x f26280c;

    public C14549x f26281d;

    public SecureRandom f26282e;

    public I f26283f;

    public InterfaceC3009b f26284g;

    public int f26285h;

    public l.b f26286i;

    public class a implements F {

        public final C13486b f26287a;

        public final Cipher f26288b;

        public final char[] f26289c;

        public a(C13486b c13486b, Cipher cipher, char[] cArr) {
            this.f26287a = c13486b;
            this.f26288b = cipher;
            this.f26289c = cArr;
        }

        @Override
        public C13486b a() {
            return this.f26287a;
        }

        @Override
        public OutputStream d(OutputStream outputStream) {
            return new Jj.b(outputStream, this.f26288b);
        }

        @Override
        public r getKey() {
            return j.this.g(this.f26287a.u()) ? new r(this.f26287a, j.a(this.f26289c)) : new r(this.f26287a, j.b(this.f26289c));
        }
    }

    public j(C14549x c14549x) {
        this.f26279b = new C12948d();
        this.f26283f = C3019l.f22473a;
        this.f26284g = new C3016i();
        this.f26285h = 1024;
        this.f26286i = new l.b();
        this.f26278a = null;
        if (g(c14549x)) {
            this.f26280c = c14549x;
        } else {
            this.f26280c = t.f29112j1;
        }
        this.f26281d = c14549x;
    }

    public static byte[] a(char[] cArr) {
        if (cArr == null || cArr.length <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[(cArr.length + 1) * 2];
        for (int i10 = 0; i10 != cArr.length; i10++) {
            int i11 = i10 * 2;
            char c10 = cArr[i10];
            bArr[i11] = (byte) (c10 >>> '\b');
            bArr[i11 + 1] = (byte) c10;
        }
        return bArr;
    }

    public static byte[] b(char[] cArr) {
        if (cArr == null) {
            return new byte[0];
        }
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr[i10] = (byte) cArr[i10];
        }
        return bArr;
    }

    public F f(char[] cArr) throws OperatorCreationException {
        Cipher e10;
        C13486b c13486b;
        Cipher cipher;
        if (this.f26282e == null) {
            this.f26282e = new SecureRandom();
        }
        try {
            if (g(this.f26280c)) {
                byte[] bArr = new byte[20];
                this.f26282e.nextBytes(bArr);
                cipher = this.f26279b.e(this.f26280c.J());
                cipher.init(1, new Hj.m(cArr, bArr, this.f26285h));
                c13486b = new C13486b(this.f26280c, new s(bArr, this.f26285h));
            } else {
                if (!this.f26280c.A(t.f29112j1)) {
                    throw new OperatorCreationException("unrecognised algorithm");
                }
                m mVar = this.f26278a;
                if (mVar == null) {
                    mVar = this.f26286i.d();
                }
                C14549x c14549x = Qh.c.f22355O;
                if (c14549x.A(mVar.a())) {
                    v vVar = (v) mVar;
                    byte[] bArr2 = new byte[vVar.e()];
                    this.f26282e.nextBytes(bArr2);
                    Qh.f fVar = new Qh.f(bArr2, vVar.c(), vVar.b(), vVar.d());
                    SecretKey generateSecret = this.f26279b.s("SCRYPT").generateSecret(new z(cArr, bArr2, vVar.c(), vVar.b(), vVar.d(), this.f26283f.a(new C13486b(this.f26281d))));
                    e10 = this.f26279b.e(this.f26281d.J());
                    e10.init(1, n(generateSecret), this.f26282e);
                    c13486b = new C13486b(this.f26280c, e10.getParameters() != null ? new p(new Xh.m(c14549x, fVar), new Xh.k(this.f26281d, B.B(e10.getParameters().getEncoded()))) : new p(new Xh.m(c14549x, fVar), new Xh.k(this.f26281d)));
                } else {
                    l lVar = (l) mVar;
                    byte[] bArr3 = new byte[lVar.d()];
                    this.f26282e.nextBytes(bArr3);
                    SecretKey generateSecret2 = this.f26279b.s(k.a(lVar.c().u())).generateSecret(new PBEKeySpec(cArr, bArr3, lVar.b(), this.f26283f.a(new C13486b(this.f26281d))));
                    e10 = this.f26279b.e(this.f26281d.J());
                    e10.init(1, n(generateSecret2), this.f26282e);
                    c13486b = new C13486b(this.f26280c, e10.getParameters() != null ? new p(new Xh.m(t.f29107h1, new q(bArr3, lVar.b(), lVar.c())), new Xh.k(this.f26281d, B.B(e10.getParameters().getEncoded()))) : new p(new Xh.m(t.f29107h1, new q(bArr3, lVar.b(), lVar.c())), new Xh.k(this.f26281d)));
                }
                cipher = e10;
            }
            return new a(c13486b, cipher, cArr);
        } catch (Exception e11) {
            throw new OperatorCreationException("unable to create OutputEncryptor: " + e11.getMessage(), e11);
        }
    }

    public final boolean g(C14549x c14549x) {
        return c14549x.O(t.f29094d4) || c14549x.O(InterfaceC15100a.f108055i) || c14549x.O(InterfaceC15100a.f108065k);
    }

    public j h(int i10) {
        if (this.f26278a != null) {
            throw new IllegalStateException("set iteration count using PBKDFDef");
        }
        this.f26285h = i10;
        this.f26286i.e(i10);
        return this;
    }

    public j i(I i10) {
        this.f26283f = i10;
        return this;
    }

    public j j(C13486b c13486b) {
        if (this.f26278a != null) {
            throw new IllegalStateException("set PRF count using PBKDFDef");
        }
        this.f26286i.f(c13486b);
        return this;
    }

    public j k(String str) {
        this.f26279b = new dk.i(str);
        return this;
    }

    public j l(Provider provider) {
        this.f26279b = new dk.k(provider);
        return this;
    }

    public j m(SecureRandom secureRandom) {
        this.f26282e = secureRandom;
        return this;
    }

    public final SecretKey n(SecretKey secretKey) {
        return (!this.f26284g.a(this.f26281d) || this.f26284g.c(this.f26281d).indexOf(KeyProperties.KEY_ALGORITHM_AES) < 0) ? secretKey : new SecretKeySpec(secretKey.getEncoded(), KeyProperties.KEY_ALGORITHM_AES);
    }

    public j(m mVar, C14549x c14549x) {
        this.f26279b = new C12948d();
        this.f26283f = C3019l.f22473a;
        this.f26284g = new C3016i();
        this.f26285h = 1024;
        this.f26286i = new l.b();
        this.f26280c = t.f29112j1;
        this.f26278a = mVar;
        this.f26281d = c14549x;
    }
}
