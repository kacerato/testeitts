package Yl;

import java.security.SecureRandom;

public class d extends e implements m {
    public d(int i10) {
        super(i10);
        X();
    }

    public static d Y(int i10, int i11, int i12, SecureRandom secureRandom) {
        return new d(Zl.b.b(i10, i11, i12, secureRandom));
    }

    public static d Z(int i10, SecureRandom secureRandom) {
        d dVar = new d(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            dVar.f30630a[i11] = secureRandom.nextInt(3) - 1;
        }
        return dVar;
    }

    public final void X() {
        int i10;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f30630a;
            if (i11 == iArr.length) {
                return;
            }
            i10 = iArr[i11];
            if (i10 < -1 || i10 > 1) {
                break;
            } else {
                i11++;
            }
        }
        throw new IllegalStateException("Illegal value: " + i10 + ", must be one of {-1, 0, 1}");
    }

    @Override
    public int[] d() {
        int length = this.f30630a.length;
        int[] iArr = new int[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.f30630a[i11] == 1) {
                iArr[i10] = i11;
                i10++;
            }
        }
        return org.bouncycastle.util.a.S(iArr, i10);
    }

    @Override
    public e e(e eVar, int i10) {
        if (i10 != 2048) {
            return super.e(eVar, i10);
        }
        e eVar2 = (e) eVar.clone();
        eVar2.D(2048);
        return new g(eVar2).a(this).b();
    }

    @Override
    public int[] f() {
        int length = this.f30630a.length;
        int[] iArr = new int[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.f30630a[i11] == -1) {
                iArr[i10] = i11;
                i10++;
            }
        }
        return org.bouncycastle.util.a.S(iArr, i10);
    }

    @Override
    public int size() {
        return this.f30630a.length;
    }

    public d(e eVar) {
        this(eVar.f30630a);
    }

    public d(int[] iArr) {
        super(iArr);
        X();
    }
}
