package Kj;

import Xh.v;
import bk.AbstractC3896b;
import bk.InterfaceC3897c;
import hi.h0;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import qh.C15104e;
import qh.InterfaceC15100a;

public class i {

    public static final String f11441a = "org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL";

    public static final Map<String, String> f11442b;

    public static InterfaceC3897c f11443c;

    public static class a implements InterfaceC3897c {

        public final Tj.a f11444a;

        public a(Tj.a aVar) {
            this.f11444a = aVar;
        }

        @Override
        public PublicKey a(h0 h0Var) throws IOException {
            return new Hj.f(C15104e.y(h0Var.A()));
        }

        @Override
        public PrivateKey b(v vVar) throws IOException {
            throw new UnsupportedOperationException("no support for private key");
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.asymmetric.util.c {
        @Override
        public PublicKey a(h0 h0Var) throws IOException {
            return i.f11443c.a(h0Var);
        }

        @Override
        public PrivateKey b(v vVar) throws IOException {
            return i.f11443c.b(vVar);
        }

        @Override
        public Key engineTranslateKey(Key key) throws InvalidKeyException {
            try {
                if (key instanceof PrivateKey) {
                    return b(v.v(key.getEncoded()));
                }
                if (key instanceof PublicKey) {
                    return a(h0.w(key.getEncoded()));
                }
                throw new InvalidKeyException("key not recognized");
            } catch (IOException e10) {
                throw new InvalidKeyException("key could not be parsed: " + e10.getMessage());
            }
        }
    }

    public static class c extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.EXTERNAL", "org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL$KeyFactory");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("KeyFactory.");
            C14549x c14549x = InterfaceC15100a.f107957L1;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL$KeyFactory");
            aVar.d("KeyFactory.OID." + ((Object) c14549x), "org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL$KeyFactory");
            InterfaceC3897c unused = i.f11443c = new a(aVar);
            aVar.c(c14549x, i.f11443c);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f11442b = hashMap;
        hashMap.put("SupportedKeyClasses", "org.bouncycastle.jcajce.ExternalPublicKey");
        hashMap.put("SupportedKeyFormats", "X.509");
    }
}
