package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.Set;

public class C10022w10 extends AbstractC5359Iv0 {

    public static final boolean f53400m = true;

    public final T10 f53401k;

    public final T10 f53402l;

    public C10022w10(T10 t10, T10 t102, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, c10340xw02);
        this.f53401k = t10;
        this.f53402l = t102;
        if (!f53400m && !u2()) {
            throw new AssertionError();
        }
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.d2()) {
            return false;
        }
        C10022w10 z02 = abstractC10561zE.z0();
        return z02.f53401k == this.f53401k && z02.f53402l == this.f53402l;
    }

    @Override
    public final boolean d2() {
        return true;
    }

    @Override
    public final int r2() {
        return 52;
    }

    public final boolean u2() {
        int[] iArr = AbstractC9855v10.f53001a;
        int i10 = iArr[this.f53401k.ordinal()];
        if (i10 == 4) {
            int i11 = iArr[this.f53402l.ordinal()];
            return i11 == 5 || i11 == 6 || i11 == 7;
        }
        if (i10 == 5) {
            int i12 = iArr[this.f53402l.ordinal()];
            return i12 == 4 || i12 == 6 || i12 == 7;
        }
        if (i10 == 6) {
            int i13 = iArr[this.f53402l.ordinal()];
            return i13 == 4 || i13 == 5 || i13 == 7;
        }
        if (i10 != 7) {
            return false;
        }
        switch (iArr[this.f53402l.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    @Override
    public final C10022w10 z0() {
        return this;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c10488yq;
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        int b11 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        int[] iArr = AbstractC9855v10.f53001a;
        int i10 = iArr[this.f53401k.ordinal()];
        if (i10 == 4) {
            int i11 = iArr[this.f53402l.ordinal()];
            if (i11 == 5) {
                c10488yq = new C10488yq(b10, b11);
            } else if (i11 == 6) {
                c10488yq = new C10321xq(b10, b11);
            } else if (i11 == 7) {
                c10488yq = new C10655zq(b10, b11);
            } else {
                throw new C5417Jv0("Unexpected types " + ((Object) this.f53401k) + ", " + ((Object) this.f53402l));
            }
        } else if (i10 == 5) {
            int i12 = iArr[this.f53402l.ordinal()];
            if (i12 == 4) {
                c10488yq = new C5749Po(b10, b11);
            } else if (i12 == 6) {
                c10488yq = new C5633No(b10, b11);
            } else if (i12 == 7) {
                c10488yq = new C5691Oo(b10, b11);
            } else {
                throw new C5417Jv0("Unexpected types " + ((Object) this.f53401k) + ", " + ((Object) this.f53402l));
            }
        } else if (i10 == 6) {
            int i13 = iArr[this.f53402l.ordinal()];
            if (i13 == 4) {
                c10488yq = new C5228Go(b10, b11);
            } else if (i13 == 5) {
                c10488yq = new C5112Eo(b10, b11);
            } else if (i13 == 7) {
                c10488yq = new C5170Fo(b10, b11);
            } else {
                throw new C5417Jv0("Unexpected types " + ((Object) this.f53401k) + ", " + ((Object) this.f53402l));
            }
        } else if (i10 == 7) {
            switch (iArr[this.f53402l.ordinal()]) {
                case 1:
                    c10488yq = new C5809Qp(b10, b11);
                    break;
                case 2:
                    c10488yq = new C5867Rp(b10, b11);
                    break;
                case 3:
                    c10488yq = new C6098Vp(b10, b11);
                    break;
                case 4:
                    c10488yq = new C6041Up(b10, b11);
                    break;
                case 5:
                    c10488yq = new C5983Tp(b10, b11);
                    break;
                case 6:
                    c10488yq = new C5925Sp(b10, b11);
                    break;
                default:
                    throw new C5417Jv0("Unexpected types " + ((Object) this.f53401k) + ", " + ((Object) this.f53402l));
            }
        } else {
            throw new C5417Jv0("Unexpected types " + ((Object) this.f53401k) + ", " + ((Object) this.f53402l));
        }
        c5458Kn.a(this, c10488yq);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return D70.a(this.f53402l);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C4904Ba(this.f53401k, this.f53402l), this);
    }

    @Override
    public final void a(PS ps) {
        T10 t10 = this.f53401k;
        T10 t102 = this.f53402l;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        ps.getClass();
        int B10 = new C4904Ba(t10, t102).B();
        boolean z10 = PS.f43219u;
        if (!z10 && 133 > B10) {
            throw new AssertionError();
        }
        if (!z10 && B10 > 147) {
            throw new AssertionError();
        }
        ps.a(B10, Collections.EMPTY_LIST, Collections.singletonList(c10340xw0));
    }

    @Override
    public final boolean a(Set set) {
        return this.f53402l == T10.f44366b && ((C10340xw0) this.f54321f.get(0)).a(set);
    }
}
