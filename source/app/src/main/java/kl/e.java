package Kl;

import Bi.C2371c;
import Bi.r;
import Ii.N;
import Ii.P;
import Ol.u;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import nl.C14461e;
import nl.C14462f;
import nl.C14465i;
import nl.C14466j;
import oh.C14549x;

public class e extends KeyPairGenerator {

    public C14549x f11480a;

    public C14461e f11481b;

    public C14462f f11482c;

    public SecureRandom f11483d;

    public boolean f11484e;

    public e() {
        super("SPHINCS256");
        this.f11480a = Sh.d.f23347h;
        this.f11482c = new C14462f();
        this.f11483d = r.h();
        this.f11484e = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f11484e) {
            C14461e c14461e = new C14461e(this.f11483d, new P(256));
            this.f11481b = c14461e;
            this.f11482c.b(c14461e);
            this.f11484e = true;
        }
        C2371c a10 = this.f11482c.a();
        return new KeyPair(new b(this.f11480a, (C14466j) a10.b()), new a(this.f11480a, (C14465i) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        C14461e c14461e;
        if (!(algorithmParameterSpec instanceof u)) {
            throw new InvalidAlgorithmParameterException("parameter object not a SPHINCS256KeyGenParameterSpec");
        }
        u uVar = (u) algorithmParameterSpec;
        if (!uVar.a().equals(u.f20450c)) {
            if (uVar.a().equals("SHA3-256")) {
                this.f11480a = Sh.d.f23351j;
                c14461e = new C14461e(secureRandom, new N(256));
            }
            this.f11482c.b(this.f11481b);
            this.f11484e = true;
        }
        this.f11480a = Sh.d.f23347h;
        c14461e = new C14461e(secureRandom, new P(256));
        this.f11481b = c14461e;
        this.f11482c.b(this.f11481b);
        this.f11484e = true;
    }
}
