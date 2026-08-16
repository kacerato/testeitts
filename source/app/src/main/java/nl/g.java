package Nl;

import Bi.C2371c;
import Bi.r;
import Ii.L;
import Ii.O;
import Ii.Q;
import Ol.x;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import oh.C14549x;
import ql.H;
import ql.I;
import ql.J;
import ql.s;
import ql.t;

public class g extends KeyPairGenerator {

    public s f16429a;

    public C14549x f16430b;

    public t f16431c;

    public SecureRandom f16432d;

    public boolean f16433e;

    public g() {
        super("XMSS");
        this.f16431c = new t();
        this.f16432d = r.h();
        this.f16433e = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f16433e) {
            s sVar = new s(new H(10, new O()), this.f16432d);
            this.f16429a = sVar;
            this.f16431c.b(sVar);
            this.f16433e = true;
        }
        C2371c a10 = this.f16431c.a();
        return new KeyPair(new d(this.f16430b, (J) a10.b()), new c(this.f16430b, (I) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        s sVar;
        if (!(algorithmParameterSpec instanceof x)) {
            throw new InvalidAlgorithmParameterException("parameter object not a XMSSParameterSpec");
        }
        x xVar = (x) algorithmParameterSpec;
        if (xVar.b().equals("SHA256")) {
            this.f16430b = Sh.d.f23337c;
            sVar = new s(new H(xVar.a(), new L()), secureRandom);
        } else if (xVar.b().equals("SHA512")) {
            this.f16430b = Sh.d.f23341e;
            sVar = new s(new H(xVar.a(), new O()), secureRandom);
        } else {
            if (!xVar.b().equals("SHAKE128")) {
                if (xVar.b().equals("SHAKE256")) {
                    this.f16430b = Sh.d.f23359n;
                    sVar = new s(new H(xVar.a(), new Q(256)), secureRandom);
                }
                this.f16431c.b(this.f16429a);
                this.f16433e = true;
            }
            this.f16430b = Sh.d.f23357m;
            sVar = new s(new H(xVar.a(), new Q(128)), secureRandom);
        }
        this.f16429a = sVar;
        this.f16431c.b(this.f16429a);
        this.f16433e = true;
    }
}
