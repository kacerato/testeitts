package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.OutputStream;
import java.security.Key;
import javax.crypto.Mac;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class M extends O {

    public class a implements Qk.A {

        public final C13486b f100847a;

        public final Key f100848b;

        public final Mac f100849c;

        public a(C13486b c13486b, Key key, Mac mac) {
            this.f100847a = c13486b;
            this.f100848b = key;
            this.f100849c = mac;
        }

        @Override
        public C13486b a() {
            return this.f100847a;
        }

        @Override
        public byte[] e() {
            return this.f100849c.doFinal();
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100847a, this.f100848b);
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f100849c);
        }
    }

    public M(char[] cArr) {
        super(cArr);
    }

    @Override
    public J0 d(C13486b c13486b, C13486b c13486b2, byte[] bArr, byte[] bArr2) throws CMSException {
        Key g10 = g(c13486b, c13486b2, bArr, bArr2);
        return new J0(new a(c13486b2, g10, this.f100855d.h(g10, c13486b2)));
    }
}
