package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.InputStream;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class C14657s extends AbstractC14658t {

    public class a implements Qk.t {

        public final C13486b f100947a;

        public final Cipher f100948b;

        public a(C13486b c13486b, Cipher cipher) {
            this.f100947a = c13486b;
            this.f100948b = cipher;
        }

        @Override
        public C13486b a() {
            return this.f100947a;
        }

        @Override
        public InputStream d(InputStream inputStream) {
            return new Jj.a(inputStream, this.f100948b);
        }
    }

    public C14657s(SecretKey secretKey) {
        super(secretKey);
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        return new J0(new a(c13486b2, this.f100952e.g(g(c13486b, c13486b2, bArr), c13486b2)));
    }
}
