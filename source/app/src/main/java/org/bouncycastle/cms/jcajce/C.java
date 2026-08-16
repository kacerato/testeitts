package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import hi.h0;
import java.io.InputStream;
import java.security.PrivateKey;
import javax.crypto.Cipher;
import oh.AbstractC14551y;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class C extends D {

    public class a implements Qk.t {

        public final C13486b f100805a;

        public final Cipher f100806b;

        public a(C13486b c13486b, Cipher cipher) {
            this.f100805a = c13486b;
            this.f100806b = cipher;
        }

        @Override
        public C13486b a() {
            return this.f100805a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return new Jj.a(inputStream, this.f100806b);
        }
    }

    public C(PrivateKey privateKey) {
        super(privateKey);
    }

    @Override
    public J0 b(C13486b c13486b, C13486b c13486b2, h0 h0Var, AbstractC14551y abstractC14551y, byte[] bArr) throws CMSException {
        return new J0(new a(c13486b2, this.f100814e.g(h(c13486b, c13486b2, h0Var, abstractC14551y, bArr), c13486b2)));
    }
}
