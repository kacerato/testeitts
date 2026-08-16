package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import java.security.PrivateKey;
import javax.crypto.Cipher;
import org.bouncycastle.cms.C14675q0;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class z extends A {

    public class a implements Qk.t {

        public final C13486b f100967a;

        public final Cipher f100968b;

        public a(C13486b c13486b, Cipher cipher) {
            this.f100967a = c13486b;
            this.f100968b = cipher;
        }

        @Override
        public C13486b a() {
            return this.f100967a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return new Jj.a(inputStream, this.f100968b);
        }
    }

    public z(PrivateKey privateKey, C14675q0 c14675q0) throws IOException {
        super(privateKey, A.h(c14675q0));
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        return new J0(new a(c13486b2, this.f100797f.g(g(c13486b, c13486b2, bArr), c13486b2)));
    }
}
