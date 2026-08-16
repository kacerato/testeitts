package Fj;

import Ek.C2499j;
import Fk.C2539k;
import Fk.C2543o;
import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import ck.n;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.h0;
import java.security.Provider;
import java.security.interfaces.ECPublicKey;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import oh.C14549x;

public class j implements Dj.c {

    public final ECPublicKey f6995a;

    public final byte[] f6996b;

    public final InterfaceC12950f f6997c;

    public static class b {

        public final ECPublicKey f6998a;

        public final byte[] f6999b;

        public InterfaceC12950f f7000c = new C12948d();

        public b(ECPublicKey eCPublicKey, byte[] bArr) {
            this.f6998a = eCPublicKey;
            this.f6999b = bArr;
        }

        public j a() {
            return new j(this.f6998a, this.f6999b, this.f7000c);
        }

        public b b(String str) {
            this.f7000c = new dk.i(str);
            return this;
        }

        public b c(Provider provider) {
            this.f7000c = new dk.k(provider);
            return this;
        }
    }

    public j(ECPublicKey eCPublicKey, byte[] bArr, InterfaceC12950f interfaceC12950f) {
        this.f6995a = eCPublicKey;
        this.f6996b = bArr;
        this.f6997c = interfaceC12950f;
    }

    @Override
    public C2499j a(byte[] bArr) {
        try {
            Cipher e10 = this.f6997c.e("ETSIKEMwithSHA256");
            e10.init(3, this.f6995a, new n(this.f6996b, true));
            byte[] wrap = e10.wrap(new SecretKeySpec(bArr, KeyProperties.KEY_ALGORITHM_AES));
            int fieldSize = (this.f6995a.getParams().getCurve().getField().getFieldSize() + 7) / 8;
            if (wrap[0] == 4) {
                fieldSize *= 2;
            }
            int i10 = fieldSize + 1;
            C14549x K10 = C14549x.K(h0.w(this.f6995a.getEncoded()).u().x());
            C2543o a10 = C2543o.u().f(C2539k.A(org.bouncycastle.util.a.X(wrap, 0, i10))).c(org.bouncycastle.util.a.X(wrap, i10, bArr.length + i10)).e(org.bouncycastle.util.a.X(wrap, i10 + bArr.length, wrap.length)).a();
            if (K10.A(Zh.d.f31273H)) {
                return C2499j.v(a10);
            }
            if (K10.A(InterfaceC3890b.f33255u)) {
                return C2499j.u(a10);
            }
            throw new IllegalStateException("recipient key curve is not P-256 or Brainpool P256r1");
        } catch (Exception e11) {
            throw new RuntimeException(e11.getMessage(), e11);
        }
    }
}
