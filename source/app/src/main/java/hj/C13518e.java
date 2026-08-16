package hj;

import Ah.h;
import gj.InterfaceC13386b;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.Signature;
import java.security.SignatureException;
import java.util.Arrays;
import java.util.Hashtable;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.OperatorStreamException;
import org.bouncycastle.operator.RuntimeOperatorException;

public class C13518e {

    public static final Hashtable f91053b;

    public AbstractC13515b f91054a = new C13514a();

    public class a implements InterfaceC13386b {

        public final C14549x f91055a;

        public final b f91056b;

        public a(C14549x c14549x, b bVar) {
            this.f91055a = c14549x;
            this.f91056b = bVar;
        }

        @Override
        public C14549x a() {
            return this.f91055a;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f91056b;
        }

        @Override
        public byte[] getSignature() {
            try {
                byte[] c10 = this.f91056b.c();
                return this.f91055a.O(h.f641r) ? C13518e.f(c10) : c10;
            } catch (SignatureException e10) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e10.getMessage(), e10);
            }
        }
    }

    public static class b extends OutputStream {

        public Signature f91058b;

        public b(Signature signature) {
            this.f91058b = signature;
        }

        public byte[] c() throws SignatureException {
            return this.f91058b.sign();
        }

        @Override
        public void write(int i10) throws IOException {
            try {
                this.f91058b.update((byte) i10);
            } catch (SignatureException e10) {
                throw new OperatorStreamException("exception in content signer: " + e10.getMessage(), e10);
            }
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            try {
                this.f91058b.update(bArr);
            } catch (SignatureException e10) {
                throw new OperatorStreamException("exception in content signer: " + e10.getMessage(), e10);
            }
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            try {
                this.f91058b.update(bArr, i10, i11);
            } catch (SignatureException e10) {
                throw new OperatorStreamException("exception in content signer: " + e10.getMessage(), e10);
            }
        }
    }

    static {
        Hashtable hashtable = new Hashtable();
        f91053b = hashtable;
        hashtable.put("SHA1withRSA", h.f635l);
        hashtable.put("SHA256withRSA", h.f636m);
        hashtable.put("SHA1withRSAandMGF1", h.f637n);
        hashtable.put("SHA256withRSAandMGF1", h.f638o);
        hashtable.put("SHA512withRSA", h.f639p);
        hashtable.put("SHA512withRSAandMGF1", h.f640q);
        hashtable.put("SHA1withECDSA", h.f642s);
        hashtable.put("SHA224withECDSA", h.f643t);
        hashtable.put("SHA256withECDSA", h.f644u);
        hashtable.put("SHA384withECDSA", h.f645v);
        hashtable.put("SHA512withECDSA", h.f646w);
    }

    public static void d(byte[] bArr, byte[] bArr2, int i10) {
        int length = bArr.length;
        int i11 = 0;
        if (bArr[0] == 0) {
            length--;
            i11 = 1;
        }
        System.arraycopy(bArr, i11, bArr2, i10, length);
    }

    public static int e(int i10, int i11) {
        return i10 > i11 ? i10 : i11;
    }

    public static byte[] f(byte[] bArr) {
        E G10 = E.G(bArr);
        BigInteger I10 = C14539s.F(G10.I(0)).I();
        BigInteger I11 = C14539s.F(G10.I(1)).I();
        byte[] byteArray = I10.toByteArray();
        byte[] byteArray2 = I11.toByteArray();
        int i10 = i(byteArray);
        int i11 = i(byteArray2);
        int e10 = e(i10, i11);
        int i12 = e10 * 2;
        byte[] bArr2 = new byte[i12];
        Arrays.fill(bArr2, (byte) 0);
        d(byteArray, bArr2, e10 - i10);
        d(byteArray2, bArr2, i12 - i11);
        return bArr2;
    }

    public static int i(byte[] bArr) {
        int length = bArr.length;
        return bArr[0] == 0 ? length - 1 : length;
    }

    public InterfaceC13386b b(String str, PrivateKey privateKey) throws OperatorCreationException {
        return c((C14549x) f91053b.get(str), privateKey);
    }

    public InterfaceC13386b c(C14549x c14549x, PrivateKey privateKey) throws OperatorCreationException {
        try {
            Signature b10 = this.f91054a.b(c14549x);
            b10.initSign(privateKey);
            return new a(c14549x, new b(b10));
        } catch (InvalidKeyException e10) {
            throw new OperatorCreationException("invalid key: " + e10.getMessage(), e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new OperatorCreationException("unable to find algorithm: " + e11.getMessage(), e11);
        } catch (NoSuchProviderException e12) {
            throw new OperatorCreationException("unable to find provider: " + e12.getMessage(), e12);
        }
    }

    public C13518e g(String str) {
        this.f91054a = new C13519f(str);
        return this;
    }

    public C13518e h(Provider provider) {
        this.f91054a = new C13520g(provider);
        return this;
    }
}
