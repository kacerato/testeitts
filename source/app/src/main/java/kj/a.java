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
import oh.E;
import yj.InterfaceC16198c;

public class a {

    public static final String f11425a = "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE";

    public static final Map<String, String> f11426b;

    public static InterfaceC3897c f11427c;

    public static class C0374a implements InterfaceC3897c {

        public final Tj.a f11428a;

        public C0374a(Tj.a aVar) {
            this.f11428a = aVar;
        }

        @Override
        public PublicKey a(h0 h0Var) throws IOException {
            E G10 = E.G(h0Var.z().F());
            PublicKey[] publicKeyArr = new PublicKey[G10.size()];
            for (int i10 = 0; i10 != G10.size(); i10++) {
                h0 w10 = h0.w(G10.I(i10));
                publicKeyArr[i10] = this.f11428a.e(w10.u().u()).a(w10);
            }
            return new Hj.e(publicKeyArr);
        }

        @Override
        public PrivateKey b(v vVar) throws IOException {
            E G10 = E.G(vVar.E());
            PrivateKey[] privateKeyArr = new PrivateKey[G10.size()];
            for (int i10 = 0; i10 != G10.size(); i10++) {
                v v10 = v.v(G10.I(i10));
                privateKeyArr[i10] = this.f11428a.e(v10.y().u()).b(v10);
            }
            return new Hj.d(privateKeyArr);
        }
    }

    public static class b extends org.bouncycastle.jcajce.provider.asymmetric.util.c {
        @Override
        public PublicKey a(h0 h0Var) throws IOException {
            return a.f11427c.a(h0Var);
        }

        @Override
        public PrivateKey b(v vVar) throws IOException {
            return a.f11427c.b(vVar);
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
            aVar.d("KeyFactory.COMPOSITE", "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE$KeyFactory");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("KeyFactory.");
            C14549x c14549x = InterfaceC16198c.f130354P;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE$KeyFactory");
            aVar.d("KeyFactory.OID." + ((Object) c14549x), "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE$KeyFactory");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("KeyFactory.");
            C14549x c14549x2 = InterfaceC16198c.f130355Q;
            sb3.append((Object) c14549x2);
            aVar.d(sb3.toString(), "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE$KeyFactory");
            aVar.d("KeyFactory.OID." + ((Object) c14549x2), "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE$KeyFactory");
            InterfaceC3897c unused = a.f11427c = new C0374a(aVar);
            aVar.c(c14549x, a.f11427c);
            aVar.c(c14549x2, a.f11427c);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f11426b = hashMap;
        hashMap.put("SupportedKeyClasses", "org.bouncycastle.jcajce.CompositePublicKey|org.bouncycastle.jcajce.CompositePrivateKey");
        hashMap.put("SupportedKeyFormats", "PKCS#8|X.509");
    }
}
