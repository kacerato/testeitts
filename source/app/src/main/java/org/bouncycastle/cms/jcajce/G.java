package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.PrivateKey;
import javax.crypto.Cipher;
import org.bouncycastle.cms.C14625c0;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.J0;

public class G extends J {

    public class a implements Qk.s {

        public InputStream f100827a;

        public final C13486b f100828b;

        public final Cipher f100829c;

        public a(C13486b c13486b, Cipher cipher) {
            this.f100828b = c13486b;
            this.f100829c = cipher;
        }

        @Override
        public C13486b a() {
            return this.f100828b;
        }

        @Override
        public byte[] b() {
            InputStream inputStream = this.f100827a;
            if (inputStream instanceof C14625c0) {
                return ((C14625c0) inputStream).c();
            }
            return null;
        }

        @Override
        public OutputStream c() {
            return new b(this.f100829c);
        }

        @Override
        public InputStream d(InputStream inputStream) {
            this.f100827a = inputStream;
            return new Jj.a(inputStream, this.f100829c);
        }
    }

    public static class b extends OutputStream {

        public Cipher f100831b;

        public byte[] f100832c = new byte[1];

        public b(Cipher cipher) {
            this.f100831b = cipher;
        }

        @Override
        public void write(int i10) throws IOException {
            byte[] bArr = this.f100832c;
            bArr[0] = (byte) i10;
            this.f100831b.updateAAD(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f100831b.updateAAD(bArr, i10, i11);
        }
    }

    public G(PrivateKey privateKey) {
        super(privateKey);
    }

    @Override
    public J0 a(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        return new J0(new a(c13486b2, this.f100842e.g(g(c13486b, c13486b2, bArr), c13486b2)));
    }
}
