package Pj;

import Bi.C2371c;
import Bi.r;
import Oi.s;
import Oi.t;
import Xi.U;
import Xi.W;
import Xi.X;
import Xi.Y;
import hk.j;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.jce.provider.C14720a;

public class h extends KeyPairGenerator {

    public U f21552a;

    public s f21553b;

    public int f21554c;

    public int f21555d;

    public SecureRandom f21556e;

    public boolean f21557f;

    public h() {
        super("ElGamal");
        this.f21553b = new s();
        this.f21554c = 1024;
        this.f21555d = 20;
        this.f21556e = r.h();
        this.f21557f = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        U u10;
        if (!this.f21557f) {
            DHParameterSpec e10 = C14720a.f101702f.e(this.f21554c);
            if (e10 != null) {
                u10 = new U(this.f21556e, new W(e10.getP(), e10.getG(), e10.getL()));
            } else {
                t tVar = new t();
                tVar.b(this.f21554c, this.f21555d, this.f21556e);
                u10 = new U(this.f21556e, tVar.a());
            }
            this.f21552a = u10;
            this.f21553b.b(this.f21552a);
            this.f21557f = true;
        }
        C2371c a10 = this.f21553b.a();
        return new KeyPair(new d((Y) a10.b()), new c((X) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f21554c = i10;
        this.f21556e = secureRandom;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        U u10;
        boolean z10 = algorithmParameterSpec instanceof j;
        if (!z10 && !(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec or an ElGamalParameterSpec");
        }
        if (z10) {
            j jVar = (j) algorithmParameterSpec;
            u10 = new U(secureRandom, new W(jVar.b(), jVar.a()));
        } else {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
            u10 = new U(secureRandom, new W(dHParameterSpec.getP(), dHParameterSpec.getG(), dHParameterSpec.getL()));
        }
        this.f21552a = u10;
        this.f21553b.b(this.f21552a);
        this.f21557f = true;
    }
}
