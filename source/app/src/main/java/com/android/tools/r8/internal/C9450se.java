package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C10656zq0;
import java.util.Collections;

public final class C9450se extends AbstractC9702u6 {

    public static final boolean f52420n = true;

    public final EnumC9283re f52421m;

    public C9450se(T10 t10, EnumC9283re enumC9283re, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
        this.f52421m = enumC9283re;
    }

    @Override
    public final C9450se E() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9450se) && abstractC10561zE.E().f52421m == this.f52421m;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 11;
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(C9450se.class.getSimpleName());
        sb2.append(" (");
        int i10 = AbstractC9117qe.f51834a[this.f52781k.ordinal()];
        if (i10 == 1) {
            sb2.append("double, ");
            sb2.append(a(this.f52421m));
        } else if (i10 == 2) {
            sb2.append("float, ");
            sb2.append(a(this.f52421m));
        } else {
            if (i10 != 3) {
                throw new C5417Jv0("Unexpected type " + ((Object) this.f52781k));
            }
            sb2.append("long");
        }
        sb2.append(")");
        for (int length = sb2.length(); length < 20; length++) {
            sb2.append(" ");
        }
        C10340xw0 c10340xw0 = this.f54320e;
        if (c10340xw0 != null) {
            sb2.append((Object) c10340xw0);
            sb2.append(" <- ");
        }
        C10656zq0.a(sb2, this.f54321f, ", ", C10656zq0.a.f54552e);
        return sb2.toString();
    }

    @Override
    public final boolean v2() {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c6322Zn;
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        int b11 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        int b12 = c5458Kn.f41765d.b(y2(), this.f54322g);
        int i10 = AbstractC9117qe.f51834a[this.f52781k.ordinal()];
        if (i10 == 1) {
            boolean z10 = f52420n;
            if (!z10 && this.f52421m == EnumC9283re.f52079b) {
                throw new AssertionError();
            }
            EnumC9283re enumC9283re = this.f52421m;
            if (enumC9283re == EnumC9283re.f52080c) {
                c6322Zn = new C6208Xn(b10, b11, b12);
            } else {
                if (!z10 && enumC9283re != EnumC9283re.f52081d) {
                    throw new AssertionError();
                }
                c6322Zn = new C6322Zn(b10, b11, b12);
            }
        } else if (i10 == 2) {
            boolean z11 = f52420n;
            if (!z11 && this.f52421m == EnumC9283re.f52079b) {
                throw new AssertionError();
            }
            EnumC9283re enumC9283re2 = this.f52421m;
            if (enumC9283re2 == EnumC9283re.f52080c) {
                c6322Zn = new C6265Yn(b10, b11, b12);
            } else {
                if (!z11 && enumC9283re2 != EnumC9283re.f52081d) {
                    throw new AssertionError();
                }
                c6322Zn = new C6479ao(b10, b11, b12);
            }
        } else if (i10 == 3) {
            if (!f52420n && this.f52421m != EnumC9283re.f52079b) {
                throw new AssertionError();
            }
            c6322Zn = new C6151Wn(b10, b11, b12);
        } else {
            throw new C5417Jv0("Unexpected type " + ((Object) this.f52781k));
        }
        c5458Kn.a(this, c6322Zn);
    }

    public static String a(EnumC9283re enumC9283re) {
        int i10 = AbstractC9117qe.f51835b[enumC9283re.ordinal()];
        if (i10 == 1) {
            return "none";
        }
        if (i10 == 2) {
            return "gt";
        }
        if (i10 == 3) {
            return "lt";
        }
        throw new C5417Jv0("Unexpected bias " + ((Object) enumC9283re));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
    
        if (r3.f52421m == com.android.tools.r8.internal.EnumC9283re.f52080c) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00af, code lost:
    
        r5 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ad, code lost:
    
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ab, code lost:
    
        if (r3.f52421m == com.android.tools.r8.internal.EnumC9283re.f52080c) goto L39;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        int signum;
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        F1 a10 = m12.a((C10340xw0) this.f54321f.get(0));
        F1 a11 = m12.a(y2());
        a10.getClass();
        if (a10 instanceof C5341Im0) {
            a11.getClass();
            if (a11 instanceof C5341Im0) {
                C5341Im0 m10 = a10.m();
                C5341Im0 m11 = a11.m();
                T10 t10 = this.f52781k;
                if (t10 == T10.f44370f) {
                    signum = Integer.signum(Long.compare(m10.f41207c, m11.f41207c));
                } else if (t10 == T10.f44371g) {
                    float intBitsToFloat = Float.intBitsToFloat((int) m10.f41207c);
                    float intBitsToFloat2 = Float.intBitsToFloat((int) m11.f41207c);
                    if (!Float.isNaN(intBitsToFloat) && !Float.isNaN(intBitsToFloat2)) {
                        signum = (int) Math.signum(intBitsToFloat - intBitsToFloat2);
                    }
                } else {
                    if (!f52420n && t10 != T10.f44372h) {
                        throw new AssertionError();
                    }
                    double longBitsToDouble = Double.longBitsToDouble(m10.f41207c);
                    double longBitsToDouble2 = Double.longBitsToDouble(m11.f41207c);
                    if (!Double.isNaN(longBitsToDouble) && !Double.isNaN(longBitsToDouble2)) {
                        signum = (int) Math.signum(longBitsToDouble - longBitsToDouble2);
                    }
                }
                return c4798y.f38427t.a(signum, a());
            }
        }
        if (a10.Y() && a11.Y()) {
            if (a10.G().a(a11.G())) {
                int i11 = F1.f40064a;
                return C10504yv0.f54195b;
            }
            return c4798y.f38427t.a(Integer.signum(Long.compare(r5.A(), r6.A())), a());
        }
        int i12 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C9044q9(this.f52421m, this.f52781k), this);
    }

    @Override
    public final void a(PS ps) {
        T10 t10 = this.f52781k;
        EnumC9283re enumC9283re = this.f52421m;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        C10340xw0 y22 = y2();
        ps.getClass();
        ps.a(PS.a(enumC9283re, t10), Collections.EMPTY_LIST, AbstractC7552hC.a(c10340xw0, y22));
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.k();
    }
}
