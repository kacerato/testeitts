package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import hi.h0;
import java.io.OutputStream;
import java.security.Key;
import java.security.PrivateKey;
import javax.crypto.Mac;
import oh.AbstractC14551y;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class B extends D {

    public class a implements Qk.A {

        public final C13486b f100801a;

        public final Key f100802b;

        public final Mac f100803c;

        public a(C13486b c13486b, Key key, Mac mac) {
            this.f100801a = c13486b;
            this.f100802b = key;
            this.f100803c = mac;
        }

        @Override
        public C13486b a() {
            return this.f100801a;
        }

        @Override
        public byte[] e() {
            return this.f100803c.doFinal();
        }

        @Override
        public Qk.r getKey() {
            return new org.bouncycastle.operator.jcajce.g(this.f100801a, this.f100802b);
        }

        @Override
        public OutputStream getOutputStream() {
            return new Jj.d(this.f100803c);
        }
    }

    public B(PrivateKey privateKey) {
        super(privateKey);
    }

    @Override
    public J0 b(C13486b c13486b, C13486b c13486b2, h0 h0Var, AbstractC14551y abstractC14551y, byte[] bArr) throws CMSException {
        Key h10 = h(c13486b, c13486b2, h0Var, abstractC14551y, bArr);
        return new J0(new a(c13486b2, h10, this.f100814e.h(h10, c13486b2)));
    }
}
