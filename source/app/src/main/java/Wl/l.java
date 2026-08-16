package Wl;

import java.security.SecureRandom;
import java.util.Vector;

public abstract class l {

    public final SecureRandom f27822a;

    public int f27823b;

    public f f27824c;

    public Vector f27825d;

    public Vector f27826e;

    public l(SecureRandom secureRandom) {
        this.f27822a = secureRandom;
    }

    public abstract void a(l lVar);

    public abstract void b();

    public final k c(k kVar, l lVar) throws RuntimeException {
        if (lVar == this || this.f27824c.equals(lVar.f27824c)) {
            return (k) kVar.clone();
        }
        if (this.f27823b != lVar.f27823b) {
            throw new RuntimeException("GF2nField.convert: B1 has a different degree and thus cannot be coverted to!");
        }
        int indexOf = this.f27825d.indexOf(lVar);
        if (indexOf == -1) {
            a(lVar);
            indexOf = this.f27825d.indexOf(lVar);
        }
        f[] fVarArr = (f[]) this.f27826e.elementAt(indexOf);
        k kVar2 = (k) kVar.clone();
        if (kVar2 instanceof m) {
            ((m) kVar2).G();
        }
        f fVar = new f(this.f27823b, kVar2.d());
        fVar.i(this.f27823b);
        f fVar2 = new f(this.f27823b);
        for (int i10 = 0; i10 < this.f27823b; i10++) {
            if (fVar.a0(fVarArr[i10])) {
                fVar2.I((this.f27823b - 1) - i10);
            }
        }
        if (lVar instanceof q) {
            return new p((q) lVar, fVar2);
        }
        if (!(lVar instanceof n)) {
            throw new RuntimeException("GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!");
        }
        m mVar = new m((n) lVar, fVar2.W());
        mVar.G();
        return mVar;
    }

    public final int d() {
        return this.f27823b;
    }

    public final f e() {
        if (this.f27824c == null) {
            b();
        }
        return new f(this.f27824c);
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (lVar.f27823b != this.f27823b || !this.f27824c.equals(lVar.f27824c)) {
            return false;
        }
        if (!(this instanceof q) || (lVar instanceof q)) {
            return !(this instanceof n) || (lVar instanceof n);
        }
        return false;
    }

    public abstract k f(f fVar);

    public final f[] g(f[] fVarArr) {
        f[] fVarArr2 = new f[fVarArr.length];
        f[] fVarArr3 = new f[fVarArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < this.f27823b; i11++) {
            fVarArr2[i11] = new f(fVarArr[i11]);
            f fVar = new f(this.f27823b);
            fVarArr3[i11] = fVar;
            fVar.I((this.f27823b - 1) - i11);
        }
        while (true) {
            int i12 = this.f27823b;
            if (i10 >= i12 - 1) {
                for (int i13 = i12 - 1; i13 > 0; i13--) {
                    for (int i14 = i13 - 1; i14 >= 0; i14--) {
                        if (fVarArr2[i14].U((this.f27823b - 1) - i13)) {
                            fVarArr2[i14].b(fVarArr2[i13]);
                            fVarArr3[i14].b(fVarArr3[i13]);
                        }
                    }
                }
                return fVarArr3;
            }
            int i15 = i10;
            while (true) {
                int i16 = this.f27823b;
                if (i15 >= i16 || fVarArr2[i15].U((i16 - 1) - i10)) {
                    break;
                }
                i15++;
            }
            if (i15 >= this.f27823b) {
                throw new RuntimeException("GF2nField.invertMatrix: Matrix cannot be inverted!");
            }
            if (i10 != i15) {
                f fVar2 = fVarArr2[i10];
                fVarArr2[i10] = fVarArr2[i15];
                fVarArr2[i15] = fVar2;
                f fVar3 = fVarArr3[i10];
                fVarArr3[i10] = fVarArr3[i15];
                fVarArr3[i15] = fVar3;
            }
            int i17 = i10 + 1;
            int i18 = i17;
            while (true) {
                int i19 = this.f27823b;
                if (i18 < i19) {
                    if (fVarArr2[i18].U((i19 - 1) - i10)) {
                        fVarArr2[i18].b(fVarArr2[i10]);
                        fVarArr3[i18].b(fVarArr3[i10]);
                    }
                    i18++;
                }
            }
            i10 = i17;
        }
    }

    public int hashCode() {
        return this.f27823b + this.f27824c.hashCode();
    }
}
