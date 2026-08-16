package Oj;

import Bi.S;
import Xi.C3335c;
import Xi.O;
import Xi.P;
import Xi.T;
import bj.m;
import ck.C4215h;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import org.bouncycastle.crypto.CryptoException;

public class j extends SignatureSpi {

    public static final byte[] f20311c = new byte[0];

    public final String f20312a;

    public S f20313b;

    public static final class a extends j {
        public a() {
            super(C4215h.f34909c);
        }
    }

    public static final class b extends j {
        public b() {
            super(C4215h.f34910d);
        }
    }

    public static final class c extends j {
        public c() {
            super(null);
        }
    }

    public j(String str) {
        this.f20312a = str;
    }

    public static C3335c a(PrivateKey privateKey) throws InvalidKeyException {
        return e.a(privateKey);
    }

    public static C3335c b(PublicKey publicKey) throws InvalidKeyException {
        return e.b(publicKey);
    }

    public final S c(String str) throws InvalidKeyException {
        String str2 = this.f20312a;
        if (str2 == null || str.equals(str2)) {
            return str.equals(C4215h.f34910d) ? new m(f20311c) : new bj.j();
        }
        throw new InvalidKeyException("inappropriate key for " + this.f20312a);
    }

    @Override
    public Object engineGetParameter(String str) throws InvalidParameterException {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        String str;
        C3335c a10 = a(privateKey);
        if (a10 instanceof O) {
            str = C4215h.f34909c;
        } else {
            if (!(a10 instanceof Xi.S)) {
                throw new InvalidKeyException("unsupported private key type");
            }
            str = C4215h.f34910d;
        }
        this.f20313b = c(str);
        this.f20313b.a(true, a10);
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        String str;
        C3335c b10 = b(publicKey);
        if (b10 instanceof P) {
            str = C4215h.f34909c;
        } else {
            if (!(b10 instanceof T)) {
                throw new InvalidKeyException("unsupported public key type");
            }
            str = C4215h.f34910d;
        }
        this.f20313b = c(str);
        this.f20313b.a(false, b10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) throws InvalidParameterException {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f20313b.c();
        } catch (CryptoException e10) {
            throw new SignatureException(e10.getMessage());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f20313b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f20313b.b(bArr);
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f20313b.update(bArr, i10, i11);
    }
}
