package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.OutputStream;
import java.security.AlgorithmParameters;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import oh.C14549x;
import org.bouncycastle.cms.CMSException;

public class C14656q {

    public final C14549x f100934a;

    public final int f100935b;

    public C14642c f100936c;

    public AlgorithmParameters f100937d;

    public SecureRandom f100938e;

    public class a implements Qk.A {

        public SecretKey f100939a;

        public C13486b f100940b;

        public Mac f100941c;

        public a(C14549x c14549x, int i10, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws CMSException {
            KeyGenerator l10 = C14656q.this.f100936c.l(c14549x);
            secureRandom = secureRandom == null ? new SecureRandom() : secureRandom;
            if (i10 < 0) {
                l10.init(secureRandom);
            } else {
                l10.init(i10, secureRandom);
            }
            this.f100939a = l10.generateKey();
            this.f100940b = C14656q.this.f100936c.t(c14549x, algorithmParameters == null ? C14656q.this.f100936c.s(c14549x, this.f100939a, secureRandom) : algorithmParameters);
            this.f100941c = C14656q.this.f100936c.h(this.f100939a, this.f100940b);
        }

        @Override
        public C13486b a() {
            return this.f100940b;
        }

        @Override
        public byte[] e() {
            return this.f100941c.doFinal();
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100940b, this.f100939a);
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f100941c);
        }
    }

    public C14656q(C14549x c14549x) {
        this(c14549x, -1);
    }

    public Qk.A b() throws CMSException {
        return new a(this.f100934a, this.f100935b, this.f100937d, this.f100938e);
    }

    public C14656q c(AlgorithmParameters algorithmParameters) {
        this.f100937d = algorithmParameters;
        return this;
    }

    public C14656q d(String str) {
        this.f100936c = new C14642c(new S(str));
        return this;
    }

    public C14656q e(Provider provider) {
        this.f100936c = new C14642c(new T(provider));
        return this;
    }

    public C14656q f(SecureRandom secureRandom) {
        this.f100938e = secureRandom;
        return this;
    }

    public C14656q(C14549x c14549x, int i10) {
        this.f100936c = new C14642c(new C14641b());
        this.f100934a = c14549x;
        this.f100935b = i10;
    }
}
