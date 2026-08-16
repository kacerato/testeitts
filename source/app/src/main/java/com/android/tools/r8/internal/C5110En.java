package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;

public final class C5110En extends AbstractC5168Fn {

    public static final boolean f40017f = true;

    public int f40018e;

    public C5110En(EB eb2) {
        super(eb2);
        this.f40018e = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b1  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C5458Kn c5458Kn, ArrayList arrayList) {
        AbstractC5635Np c9316rp;
        AbstractC5635Np abstractC5635Np;
        EB eb2 = (EB) this.f40310a;
        int a10 = c5458Kn.a(eb2.v2().f45293f.a()).a() - c5458Kn.a(eb2).a();
        int a11 = a(0, c5458Kn);
        if (a10 < 0) {
            c5458Kn.f41777p = true;
        }
        if (this.f40018e == 3) {
            if (!f40017f) {
                EB eb3 = (EB) this.f40310a;
                if (eb3 != c5458Kn.a(eb3.v2()).f40310a) {
                    throw new AssertionError();
                }
            }
            a10--;
            arrayList.add(new C8154kr());
        }
        if (!f40017f && a10 == 0) {
            throw new AssertionError();
        }
        if (eb2.x2()) {
            switch (AbstractC10646zn.f54538a[((EB) this.f40310a).f39789l.ordinal()]) {
                case 1:
                    abstractC5635Np = new C9483sp(a11, a10);
                    break;
                case 2:
                    abstractC5635Np = new C9817up(a11, a10);
                    break;
                case 3:
                    abstractC5635Np = new C10151wp(a11, a10);
                    break;
                case 4:
                    abstractC5635Np = new C10485yp(a11, a10);
                    break;
                case 5:
                    abstractC5635Np = new C4882Ap(a11, a10);
                    break;
                case 6:
                    abstractC5635Np = new C4998Cp(a11, a10);
                    break;
                default:
                    abstractC5635Np = null;
                    break;
            }
        } else {
            int a12 = a(1, c5458Kn);
            switch (AbstractC10646zn.f54538a[((EB) this.f40310a).f39789l.ordinal()]) {
                case 1:
                    c9316rp = new C9316rp(a11, a12, a10);
                    abstractC5635Np = c9316rp;
                    break;
                case 2:
                    c9316rp = new C9650tp(a11, a12, a10);
                    abstractC5635Np = c9316rp;
                    break;
                case 3:
                    c9316rp = new C9984vp(a11, a12, a10);
                    abstractC5635Np = c9316rp;
                    break;
                case 4:
                    c9316rp = new C10318xp(a11, a12, a10);
                    abstractC5635Np = c9316rp;
                    break;
                case 5:
                    c9316rp = new C10652zp(a11, a12, a10);
                    abstractC5635Np = c9316rp;
                    break;
                case 6:
                    c9316rp = new C4940Bp(a11, a12, a10);
                    abstractC5635Np = c9316rp;
                    break;
            }
        }
        abstractC5635Np.e(a());
        arrayList.add(abstractC5635Np);
    }

    @Override
    public final int b() {
        return this.f40018e;
    }

    @Override
    public final int c() {
        return 3;
    }

    @Override
    public final int d() {
        return 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (r0 < (-32768)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        r4.f41770i.add(((com.android.tools.r8.internal.EB) r3.f40310a).b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (((r1 - (r2 - a())) - a()) > 32767) goto L29;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(C5458Kn c5458Kn) {
        AbstractC5168Fn a10 = c5458Kn.a(((EB) this.f40310a).v2());
        boolean z10 = AbstractC5168Fn.f40309d;
        if (!z10 && this.f40312c < 0) {
            throw new AssertionError();
        }
        int i10 = this.f40312c;
        if (!z10 && a10.f40312c < 0) {
            throw new AssertionError();
        }
        int i11 = a10.f40312c;
        if (i11 < i10) {
            int a11 = a10.a() - a();
            if (!f40017f && a11 >= 0) {
                throw new AssertionError();
            }
        }
        EB eb2 = (EB) this.f40310a;
        int i12 = eb2 == c5458Kn.a(eb2.v2()).f40310a ? 3 : 2;
        this.f40018e = i12;
        return i12;
    }

    public final int a(int i10, C5458Kn c5458Kn) {
        EB eb2 = (EB) this.f40310a;
        return c5458Kn.f41765d.b((C10340xw0) eb2.f54321f.get(i10), eb2.f54322g);
    }

    @Override
    public final boolean a(AbstractC5168Fn abstractC5168Fn, C5458Kn c5458Kn) {
        int[] iArr;
        if (!(abstractC5168Fn instanceof C5110En)) {
            return false;
        }
        C5110En c5110En = (C5110En) abstractC5168Fn;
        EB eb2 = (EB) this.f40310a;
        if (eb2.f39789l == ((EB) c5110En.f40310a).f39789l) {
            int[] iArr2 = eb2.x2() ? new int[]{a(0, c5458Kn)} : new int[]{a(0, c5458Kn), a(1, c5458Kn)};
            if (((EB) c5110En.f40310a).x2()) {
                iArr = new int[]{c5110En.a(0, c5458Kn)};
            } else {
                iArr = new int[]{c5110En.a(0, c5458Kn), c5110En.a(1, c5458Kn)};
            }
            if (Arrays.equals(iArr2, iArr)) {
                return true;
            }
        }
        return false;
    }
}
