package Cl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Bi.r;
import Ol.h;
import Ol.i;
import Ol.k;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import oh.C14549x;
import org.bouncycastle.pqc.crypto.lms.A;
import org.bouncycastle.pqc.crypto.lms.C14748d;
import org.bouncycastle.pqc.crypto.lms.g;
import org.bouncycastle.pqc.crypto.lms.j;
import org.bouncycastle.pqc.crypto.lms.s;
import org.bouncycastle.pqc.crypto.lms.u;
import org.bouncycastle.pqc.crypto.lms.v;
import org.bouncycastle.pqc.crypto.lms.w;

public class e extends KeyPairGenerator {

    public G f4484a;

    public C14549x f4485b;

    public InterfaceC2372d f4486c;

    public SecureRandom f4487d;

    public boolean f4488e;

    public e() {
        super("LMS");
        this.f4486c = new s();
        this.f4487d = r.h();
        this.f4488e = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f4488e) {
            org.bouncycastle.pqc.crypto.lms.r rVar = new org.bouncycastle.pqc.crypto.lms.r(new u(A.f102113f, j.f102170j), this.f4487d);
            this.f4484a = rVar;
            this.f4486c.b(rVar);
            this.f4488e = true;
        }
        C2371c a10 = this.f4486c.a();
        if (this.f4486c instanceof s) {
            return new KeyPair(new b((w) a10.b()), new a((v) a10.a()));
        }
        return new KeyPair(new b((g) a10.b()), new a((org.bouncycastle.pqc.crypto.lms.f) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        InterfaceC2372d eVar;
        if (algorithmParameterSpec instanceof Ol.j) {
            Ol.j jVar = (Ol.j) algorithmParameterSpec;
            this.f4484a = new org.bouncycastle.pqc.crypto.lms.r(new u(jVar.c(), jVar.b()), secureRandom);
            eVar = new s();
        } else {
            int i10 = 0;
            if (algorithmParameterSpec instanceof h) {
                Ol.j[] a10 = ((h) algorithmParameterSpec).a();
                u[] uVarArr = new u[a10.length];
                while (i10 != a10.length) {
                    uVarArr[i10] = new u(a10[i10].c(), a10[i10].b());
                    i10++;
                }
                this.f4484a = new C14748d(uVarArr, secureRandom);
                eVar = new org.bouncycastle.pqc.crypto.lms.e();
            } else if (algorithmParameterSpec instanceof k) {
                k kVar = (k) algorithmParameterSpec;
                this.f4484a = new org.bouncycastle.pqc.crypto.lms.r(new u(kVar.b(), kVar.a()), secureRandom);
                eVar = new s();
            } else {
                if (!(algorithmParameterSpec instanceof i)) {
                    throw new InvalidAlgorithmParameterException("parameter object not a LMSParameterSpec/LMSHSSParameterSpec");
                }
                k[] a11 = ((i) algorithmParameterSpec).a();
                u[] uVarArr2 = new u[a11.length];
                while (i10 != a11.length) {
                    uVarArr2[i10] = new u(a11[i10].b(), a11[i10].a());
                    i10++;
                }
                this.f4484a = new C14748d(uVarArr2, secureRandom);
                eVar = new org.bouncycastle.pqc.crypto.lms.e();
            }
        }
        this.f4486c = eVar;
        eVar.b(this.f4484a);
        this.f4488e = true;
    }
}
