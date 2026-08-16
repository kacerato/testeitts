package hj;

import Ah.h;
import gj.InterfaceC13385a;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.OperatorStreamException;
import org.bouncycastle.operator.RuntimeOperatorException;

public class C13517d {

    public AbstractC13515b f91048a = new C13514a();

    public class a implements InterfaceC13385a {

        public final C14549x f91049a;

        public final b f91050b;

        public a(C14549x c14549x, b bVar) {
            this.f91049a = c14549x;
            this.f91050b = bVar;
        }

        @Override
        public C14549x a() {
            return this.f91049a;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f91050b;
        }

        @Override
        public boolean verify(byte[] bArr) {
            try {
                if (!this.f91049a.O(h.f641r)) {
                    return this.f91050b.a(bArr);
                }
                try {
                    return this.f91050b.a(C13517d.c(bArr));
                } catch (Exception unused) {
                    return false;
                }
            } catch (SignatureException e10) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e10.getMessage(), e10);
            }
        }
    }

    public static class b extends OutputStream {

        public Signature f91052b;

        public b(Signature signature) {
            this.f91052b = signature;
        }

        public boolean a(byte[] bArr) throws SignatureException {
            return this.f91052b.verify(bArr);
        }

        @Override
        public void write(int i10) throws IOException {
            try {
                this.f91052b.update((byte) i10);
            } catch (SignatureException e10) {
                throw new OperatorStreamException("exception in content signer: " + e10.getMessage(), e10);
            }
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            try {
                this.f91052b.update(bArr);
            } catch (SignatureException e10) {
                throw new OperatorStreamException("exception in content signer: " + e10.getMessage(), e10);
            }
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            try {
                this.f91052b.update(bArr, i10, i11);
            } catch (SignatureException e10) {
                throw new OperatorStreamException("exception in content signer: " + e10.getMessage(), e10);
            }
        }
    }

    public static byte[] c(byte[] bArr) throws IOException {
        int length = bArr.length / 2;
        byte[] bArr2 = new byte[length];
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        System.arraycopy(bArr, length, bArr3, 0, length);
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(new BigInteger(1, bArr2)));
        c14518h.a(new C14539s(new BigInteger(1, bArr3)));
        return new G0(c14518h).getEncoded();
    }

    public InterfaceC13385a b(C14549x c14549x, PublicKey publicKey) throws OperatorCreationException {
        try {
            Signature b10 = this.f91048a.b(c14549x);
            b10.initVerify(publicKey);
            return new a(c14549x, new b(b10));
        } catch (InvalidKeyException e10) {
            throw new OperatorCreationException("invalid key: " + e10.getMessage(), e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new OperatorCreationException("unable to find algorithm: " + e11.getMessage(), e11);
        } catch (NoSuchProviderException e12) {
            throw new OperatorCreationException("unable to find provider: " + e12.getMessage(), e12);
        }
    }

    public C13517d d(String str) {
        this.f91048a = new C13519f(str);
        return this;
    }

    public C13517d e(Provider provider) {
        this.f91048a = new C13520g(provider);
        return this;
    }
}
