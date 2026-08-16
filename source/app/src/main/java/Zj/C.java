package Zj;

import Xi.C3360o0;
import ak.C3661a;
import ak.C3665e;
import bk.AbstractC3895a;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import yj.InterfaceC16198c;

public class C {

    public static class a extends C3665e {

        public int f31380d;

        public a(String str, int i10) {
            super(str, InterfaceC16198c.f130353O);
            this.f31380d = i10;
        }

        @Override
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof ck.z)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            ck.z zVar = (ck.z) keySpec;
            if (zVar.f() == null) {
                throw new IllegalArgumentException("Salt S must be provided.");
            }
            if (zVar.b() <= 1) {
                throw new IllegalArgumentException("Cost parameter N must be > 1.");
            }
            if (zVar.c() > 0) {
                if (zVar.e().length == 0) {
                    throw new IllegalArgumentException("password empty");
                }
                return new C3661a(this.f32326b, new C3360o0(Oi.N.i(Bi.M.UTF8.a(zVar.e()), zVar.f(), zVar.b(), zVar.a(), zVar.d(), zVar.c() / 8)));
            }
            throw new InvalidKeySpecException("positive key length required: " + zVar.c());
        }
    }

    public static class b extends AbstractC3895a {

        public static final String f31381a = C.class.getName();

        @Override
        public void a(Tj.a aVar) {
            StringBuilder sb2 = new StringBuilder();
            String str = f31381a;
            sb2.append(str);
            sb2.append("$ScryptWithUTF8");
            aVar.d("SecretKeyFactory.SCRYPT", sb2.toString());
            aVar.g("SecretKeyFactory", InterfaceC16198c.f130353O, str + "$ScryptWithUTF8");
        }
    }

    public static class c extends a {
        public c() {
            super("SCRYPT", 5);
        }
    }
}
