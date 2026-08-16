package Qj;

import Bi.C2371c;
import Bi.r;
import Oi.v;
import Xi.C3332a0;
import Xi.C3336c0;
import Xi.C3338d0;
import Xi.C3340e0;
import hk.n;
import hk.p;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import yh.InterfaceC16192a;

public class g extends KeyPairGenerator {

    public C3332a0 f22449a;

    public v f22450b;

    public n f22451c;

    public int f22452d;

    public SecureRandom f22453e;

    public boolean f22454f;

    public g() {
        super("GOST3410");
        this.f22450b = new v();
        this.f22452d = 1024;
        this.f22453e = null;
        this.f22454f = false;
    }

    public final void a(n nVar, SecureRandom secureRandom) {
        p a10 = nVar.a();
        C3332a0 c3332a0 = new C3332a0(secureRandom, new C3336c0(a10.b(), a10.c(), a10.a()));
        this.f22449a = c3332a0;
        this.f22450b.b(c3332a0);
        this.f22454f = true;
        this.f22451c = nVar;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f22454f) {
            a(new n(InterfaceC16192a.f130285q.J()), r.h());
        }
        C2371c a10 = this.f22450b.a();
        return new KeyPair(new d((C3340e0) a10.b(), this.f22451c), new c((C3338d0) a10.a(), this.f22451c));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f22452d = i10;
        this.f22453e = secureRandom;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof n)) {
            throw new InvalidAlgorithmParameterException("parameter object not a GOST3410ParameterSpec");
        }
        a((n) algorithmParameterSpec, secureRandom);
    }
}
