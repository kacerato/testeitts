package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.InputStream;
import javax.crypto.Cipher;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class N extends O {

    public class a implements Qk.t {

        public final C13486b f100851a;

        public final Cipher f100852b;

        public a(C13486b c13486b, Cipher cipher) {
            this.f100851a = c13486b;
            this.f100852b = cipher;
        }

        @Override
        public C13486b a() {
            return this.f100851a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return new Jj.a(inputStream, this.f100852b);
        }
    }

    public N(char[] cArr) {
        super(cArr);
    }

    @Override
    public J0 d(C13486b c13486b, C13486b c13486b2, byte[] bArr, byte[] bArr2) throws CMSException {
        return new J0(new a(c13486b2, this.f100855d.g(g(c13486b, c13486b2, bArr, bArr2), c13486b2)));
    }
}
