package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.OutputStream;
import java.security.Key;
import java.security.PrivateKey;
import javax.crypto.Mac;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class H extends J {

    public class a implements Qk.A {

        public final C13486b f100833a;

        public final Key f100834b;

        public final Mac f100835c;

        public a(C13486b c13486b, Key key, Mac mac) {
            this.f100833a = c13486b;
            this.f100834b = key;
            this.f100835c = mac;
        }

        @Override
        public C13486b a() {
            return this.f100833a;
        }

        @Override
        public byte[] e() {
            return this.f100835c.doFinal();
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100833a, this.f100834b);
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f100835c);
        }
    }

    public H(PrivateKey privateKey) {
        super(privateKey);
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        Key g10 = g(c13486b, c13486b2, bArr);
        return new J0(new a(c13486b2, g10, this.f100842e.h(g10, c13486b2)));
    }
}
