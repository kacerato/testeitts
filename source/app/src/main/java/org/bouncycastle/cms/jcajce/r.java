package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.OutputStream;
import java.security.Key;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class r extends AbstractC14658t {

    public class a implements Qk.A {

        public final C13486b f100943a;

        public final Key f100944b;

        public final Mac f100945c;

        public a(C13486b c13486b, Key key, Mac mac) {
            this.f100943a = c13486b;
            this.f100944b = key;
            this.f100945c = mac;
        }

        @Override
        public C13486b a() {
            return this.f100943a;
        }

        @Override
        public byte[] e() {
            return this.f100945c.doFinal();
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100943a, this.f100944b);
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f100945c);
        }
    }

    public r(SecretKey secretKey) {
        super(secretKey);
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        Key g10 = g(c13486b, c13486b2, bArr);
        return new J0(new a(c13486b2, g10, this.f100952e.h(g10, c13486b2)));
    }
}
