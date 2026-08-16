package Tg;

import javax.annotation.Nullable;

public final class u {

    public static final int f25059h = 8192;

    public static final int f25060i = 1024;

    public final byte[] f25061a;

    public int f25062b;

    public int f25063c;

    public boolean f25064d;

    public boolean f25065e;

    public u f25066f;

    public u f25067g;

    public u() {
        this.f25061a = new byte[8192];
        this.f25065e = true;
        this.f25064d = false;
    }

    public final void a() {
        u uVar = this.f25067g;
        if (uVar == this) {
            throw new IllegalStateException();
        }
        if (uVar.f25065e) {
            int i10 = this.f25063c - this.f25062b;
            if (i10 > (8192 - uVar.f25063c) + (uVar.f25064d ? 0 : uVar.f25062b)) {
                return;
            }
            g(uVar, i10);
            b();
            v.a(this);
        }
    }

    @Nullable
    public final u b() {
        u uVar = this.f25066f;
        u uVar2 = uVar != this ? uVar : null;
        u uVar3 = this.f25067g;
        uVar3.f25066f = uVar;
        this.f25066f.f25067g = uVar3;
        this.f25066f = null;
        this.f25067g = null;
        return uVar2;
    }

    public final u c(u uVar) {
        uVar.f25067g = this;
        uVar.f25066f = this.f25066f;
        this.f25066f.f25067g = uVar;
        this.f25066f = uVar;
        return uVar;
    }

    public final u d() {
        this.f25064d = true;
        return new u(this.f25061a, this.f25062b, this.f25063c, true, false);
    }

    public final u e(int i10) {
        u b10;
        if (i10 <= 0 || i10 > this.f25063c - this.f25062b) {
            throw new IllegalArgumentException();
        }
        if (i10 >= 1024) {
            b10 = d();
        } else {
            b10 = v.b();
            System.arraycopy(this.f25061a, this.f25062b, b10.f25061a, 0, i10);
        }
        b10.f25063c = b10.f25062b + i10;
        this.f25062b += i10;
        this.f25067g.c(b10);
        return b10;
    }

    public final u f() {
        return new u((byte[]) this.f25061a.clone(), this.f25062b, this.f25063c, false, true);
    }

    public final void g(u uVar, int i10) {
        if (!uVar.f25065e) {
            throw new IllegalArgumentException();
        }
        int i11 = uVar.f25063c;
        if (i11 + i10 > 8192) {
            if (uVar.f25064d) {
                throw new IllegalArgumentException();
            }
            int i12 = uVar.f25062b;
            if ((i11 + i10) - i12 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = uVar.f25061a;
            System.arraycopy(bArr, i12, bArr, 0, i11 - i12);
            uVar.f25063c -= uVar.f25062b;
            uVar.f25062b = 0;
        }
        System.arraycopy(this.f25061a, this.f25062b, uVar.f25061a, uVar.f25063c, i10);
        uVar.f25063c += i10;
        this.f25062b += i10;
    }

    public u(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.f25061a = bArr;
        this.f25062b = i10;
        this.f25063c = i11;
        this.f25064d = z10;
        this.f25065e = z11;
    }
}
