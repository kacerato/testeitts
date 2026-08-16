package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.InputStream;
import java.security.PrivateKey;
import javax.crypto.Cipher;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class I extends J {

    public class a implements Qk.t {

        public final C13486b f100837a;

        public final Cipher f100838b;

        public a(C13486b c13486b, Cipher cipher) {
            this.f100837a = c13486b;
            this.f100838b = cipher;
        }

        @Override
        public C13486b a() {
            return this.f100837a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return new Jj.a(inputStream, this.f100838b);
        }
    }

    public I(PrivateKey privateKey) {
        super(privateKey);
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        return new J0(new a(c13486b2, this.f100842e.g(g(c13486b, c13486b2, bArr), c13486b2)));
    }
}
