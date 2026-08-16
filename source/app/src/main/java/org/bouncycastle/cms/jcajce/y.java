package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.Key;
import java.security.PrivateKey;
import javax.crypto.Mac;
import org.bouncycastle.cms.C14675q0;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class y extends A {

    public class a implements Qk.A {

        public final C13486b f100963a;

        public final Key f100964b;

        public final Mac f100965c;

        public a(C13486b c13486b, Key key, Mac mac) {
            this.f100963a = c13486b;
            this.f100964b = key;
            this.f100965c = mac;
        }

        @Override
        public C13486b a() {
            return this.f100963a;
        }

        @Override
        public byte[] e() {
            return this.f100965c.doFinal();
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100963a, this.f100964b);
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f100965c);
        }
    }

    public y(PrivateKey privateKey, C14675q0 c14675q0) throws IOException {
        super(privateKey, A.h(c14675q0));
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        Key g10 = g(c13486b, c13486b2, bArr);
        return new J0(new a(c13486b2, g10, this.f100797f.h(g10, c13486b2)));
    }
}
