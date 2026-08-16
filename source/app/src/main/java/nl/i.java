package Nl;

import Bi.C2371c;
import Bi.r;
import Ii.L;
import Ii.O;
import Ii.Q;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import oh.C14549x;
import ql.C15119A;
import ql.C15120B;
import ql.w;
import ql.x;
import ql.z;

public class i extends KeyPairGenerator {

    public w f16434a;

    public x f16435b;

    public C14549x f16436c;

    public SecureRandom f16437d;

    public boolean f16438e;

    public i() {
        super("XMSSMT");
        this.f16435b = new x();
        this.f16437d = r.h();
        this.f16438e = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f16438e) {
            w wVar = new w(new z(10, 20, new O()), this.f16437d);
            this.f16434a = wVar;
            this.f16435b.b(wVar);
            this.f16438e = true;
        }
        C2371c a10 = this.f16435b.a();
        return new KeyPair(new b(this.f16436c, (C15120B) a10.b()), new a(this.f16436c, (C15119A) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        w wVar;
        if (!(algorithmParameterSpec instanceof Ol.w)) {
            throw new InvalidAlgorithmParameterException("parameter object not a XMSSMTParameterSpec");
        }
        Ol.w wVar2 = (Ol.w) algorithmParameterSpec;
        if (wVar2.c().equals("SHA256")) {
            this.f16436c = Sh.d.f23337c;
            wVar = new w(new z(wVar2.a(), wVar2.b(), new L()), secureRandom);
        } else if (wVar2.c().equals("SHA512")) {
            this.f16436c = Sh.d.f23341e;
            wVar = new w(new z(wVar2.a(), wVar2.b(), new O()), secureRandom);
        } else {
            if (!wVar2.c().equals("SHAKE128")) {
                if (wVar2.c().equals("SHAKE256")) {
                    this.f16436c = Sh.d.f23359n;
                    wVar = new w(new z(wVar2.a(), wVar2.b(), new Q(256)), secureRandom);
                }
                this.f16435b.b(this.f16434a);
                this.f16438e = true;
            }
            this.f16436c = Sh.d.f23357m;
            wVar = new w(new z(wVar2.a(), wVar2.b(), new Q(128)), secureRandom);
        }
        this.f16434a = wVar;
        this.f16435b.b(this.f16434a);
        this.f16438e = true;
    }
}
