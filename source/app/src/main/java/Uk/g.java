package Uk;

import Hj.l;
import Qk.A;
import Qk.r;
import Xh.s;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.OutputStream;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEParameterSpec;
import oh.A0;
import oh.C14549x;
import org.bouncycastle.operator.OperatorCreationException;

public class g implements Sk.g {

    public InterfaceC12950f f26253a;

    public C14549x f26254b;

    public SecureRandom f26255c;

    public int f26256d;

    public int f26257e;

    public class a implements A {

        public final byte[] f26258a;

        public final Mac f26259b;

        public final SecretKey f26260c;

        public a(byte[] bArr, Mac mac, SecretKey secretKey) {
            this.f26258a = bArr;
            this.f26259b = mac;
            this.f26260c = secretKey;
        }

        @Override
        public C13486b a() {
            return new C13486b(g.this.f26254b, new s(this.f26258a, g.this.f26257e));
        }

        @Override
        public byte[] e() {
            return this.f26259b.doFinal();
        }

        @Override
        public r getKey() {
            return new r(a(), this.f26260c.getEncoded());
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f26259b);
        }
    }

    public g() {
        this(Wh.b.f27785i);
    }

    @Override
    public A a(char[] cArr) throws OperatorCreationException {
        if (this.f26255c == null) {
            this.f26255c = new SecureRandom();
        }
        try {
            Mac w10 = this.f26253a.w(this.f26254b.J());
            int macLength = w10.getMacLength();
            this.f26256d = macLength;
            byte[] bArr = new byte[macLength];
            this.f26255c.nextBytes(bArr);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, this.f26257e);
            l lVar = new l(cArr);
            w10.init(lVar, pBEParameterSpec);
            return new a(bArr, w10, lVar);
        } catch (Exception e10) {
            throw new OperatorCreationException("unable to create MAC calculator: " + e10.getMessage(), e10);
        }
    }

    @Override
    public C13486b b() {
        return new C13486b(this.f26254b, A0.f98776c);
    }

    public g e(int i10) {
        this.f26257e = i10;
        return this;
    }

    public g f(String str) {
        this.f26253a = new dk.i(str);
        return this;
    }

    public g g(Provider provider) {
        this.f26253a = new dk.k(provider);
        return this;
    }

    public g(C14549x c14549x) {
        this.f26253a = new C12948d();
        this.f26257e = 1024;
        this.f26254b = c14549x;
    }
}
