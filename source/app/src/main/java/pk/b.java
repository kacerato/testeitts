package Pk;

import Xh.t;
import Xh.v;
import android.security.keystore.KeyProperties;
import dk.C12948d;
import dk.InterfaceC12950f;
import dk.k;
import hi.C13486b;
import hi.h0;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import ki.r;
import oh.C14549x;
import org.bouncycastle.openssl.PEMException;

public class b {

    public static final Map f21563b;

    public InterfaceC12950f f21564a = new C12948d();

    static {
        HashMap hashMap = new HashMap();
        f21563b = hashMap;
        hashMap.put(r.f95305I5, "ECDSA");
        hashMap.put(t.f29017H0, KeyProperties.KEY_ALGORITHM_RSA);
        hashMap.put(r.f95349s6, "DSA");
    }

    public final KeyFactory a(C13486b c13486b) throws NoSuchAlgorithmException, NoSuchProviderException {
        C14549x u10 = c13486b.u();
        String str = (String) f21563b.get(u10);
        if (str == null) {
            str = u10.J();
        }
        try {
            return this.f21564a.b(str);
        } catch (NoSuchAlgorithmException e10) {
            if (str.equals("ECDSA")) {
                return this.f21564a.b(KeyProperties.KEY_ALGORITHM_EC);
            }
            throw e10;
        }
    }

    public KeyPair b(org.bouncycastle.openssl.g gVar) throws PEMException {
        try {
            KeyFactory a10 = a(gVar.a().y());
            return new KeyPair(a10.generatePublic(new X509EncodedKeySpec(gVar.b().getEncoded())), a10.generatePrivate(new PKCS8EncodedKeySpec(gVar.a().getEncoded())));
        } catch (Exception e10) {
            throw new PEMException("unable to convert key pair: " + e10.getMessage(), e10);
        }
    }

    public PrivateKey c(v vVar) throws PEMException {
        try {
            return a(vVar.y()).generatePrivate(new PKCS8EncodedKeySpec(vVar.getEncoded()));
        } catch (Exception e10) {
            throw new PEMException("unable to convert key pair: " + e10.getMessage(), e10);
        }
    }

    public PublicKey d(h0 h0Var) throws PEMException {
        try {
            return a(h0Var.u()).generatePublic(new X509EncodedKeySpec(h0Var.getEncoded()));
        } catch (Exception e10) {
            throw new PEMException("unable to convert key pair: " + e10.getMessage(), e10);
        }
    }

    public b e(String str) {
        this.f21564a = new dk.i(str);
        return this;
    }

    public b f(Provider provider) {
        this.f21564a = new k(provider);
        return this;
    }
}
