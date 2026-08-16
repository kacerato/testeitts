package org.bouncycastle.operator.jcajce;

import Qk.p;
import Qk.q;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
import org.bouncycastle.operator.OperatorCreationException;

public class d {

    public OperatorHelper f101947a = new OperatorHelper(new C12948d());

    public class a implements q {

        public class C1927a implements p {

            public final C13486b f101949a;

            public final b f101950b;

            public C1927a(C13486b c13486b, b bVar) {
                this.f101949a = c13486b;
                this.f101950b = bVar;
            }

            @Override
            public C13486b a() {
                return this.f101949a;
            }

            @Override
            public byte[] b() {
                return this.f101950b.c();
            }

            @Override
            public OutputStream getOutputStream() {
                return this.f101950b;
            }
        }

        public a() {
        }

        @Override
        public p a(C13486b c13486b) throws OperatorCreationException {
            try {
                return new C1927a(c13486b, new b(d.this.f101947a.f(c13486b)));
            } catch (GeneralSecurityException e10) {
                throw new OperatorCreationException("exception on setup: " + ((Object) e10), e10);
            }
        }
    }

    public static class b extends OutputStream {

        public MessageDigest f101952b;

        public b(MessageDigest messageDigest) {
            this.f101952b = messageDigest;
        }

        public byte[] c() {
            return this.f101952b.digest();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f101952b.update((byte) i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f101952b.update(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f101952b.update(bArr, i10, i11);
        }
    }

    public q b() throws OperatorCreationException {
        return new a();
    }

    public d c(InterfaceC12950f interfaceC12950f) {
        this.f101947a = new OperatorHelper(interfaceC12950f);
        return this;
    }

    public d d(String str) {
        this.f101947a = new OperatorHelper(new dk.i(str));
        return this;
    }

    public d e(Provider provider) {
        this.f101947a = new OperatorHelper(new dk.k(provider));
        return this;
    }
}
