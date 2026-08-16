package org.bouncycastle.operator.jcajce;

import Qk.t;
import Qk.u;
import ck.C4217j;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.InputStream;
import java.security.Provider;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import oh.AbstractC14551y;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.operator.OperatorCreationException;

public class h {

    public InterfaceC12950f f101963a = new C12948d();

    public class a implements u {

        public Cipher f101964a;

        public C13486b f101965b;

        public final byte[] f101966c;

        public class C1928a implements t {
            public C1928a() {
            }

            @Override
            public C13486b a() {
                return a.this.f101965b;
            }

            @Override
            public InputStream d(InputStream inputStream) {
                return new Jj.a(inputStream, a.this.f101964a);
            }
        }

        public a(byte[] bArr) {
            this.f101966c = bArr;
        }

        @Override
        public t a(C13486b c13486b) throws OperatorCreationException {
            Cipher cipher;
            AlgorithmParameterSpec c4217j;
            this.f101965b = c13486b;
            C14549x u10 = c13486b.u();
            try {
                this.f101964a = h.this.f101963a.e(u10.J());
                SecretKeySpec secretKeySpec = new SecretKeySpec(this.f101966c, u10.J());
                InterfaceC14516g x10 = c13486b.x();
                if (x10 instanceof AbstractC14551y) {
                    cipher = this.f101964a;
                    c4217j = new IvParameterSpec(AbstractC14551y.F(x10).H());
                } else {
                    yh.d w10 = yh.d.w(x10);
                    cipher = this.f101964a;
                    c4217j = new C4217j(w10.u(), w10.v());
                }
                cipher.init(2, secretKeySpec, c4217j);
                return new C1928a();
            } catch (Exception e10) {
                throw new OperatorCreationException("unable to create InputDecryptor: " + e10.getMessage(), e10);
            }
        }
    }

    public u b(byte[] bArr) {
        return new a(org.bouncycastle.util.a.p(bArr));
    }

    public h c(String str) {
        this.f101963a = new dk.i(str);
        return this;
    }

    public h d(Provider provider) {
        this.f101963a = new dk.k(provider);
        return this;
    }
}
