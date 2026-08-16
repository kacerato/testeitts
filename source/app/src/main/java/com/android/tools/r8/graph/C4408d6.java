package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.internal.C5417Jv0;

public final class C4408d6 extends T {
    public C4408d6(C4798y c4798y, int i10) {
        super(c4798y, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00af A[ORIG_RETURN, RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(E0 e02) {
        boolean z10;
        M2 m22;
        boolean z11;
        E0 a10;
        int b10;
        boolean z12;
        if ((this.f36818e && e02.isInterface()) || this.f36816c.contains(e02)) {
            return;
        }
        int b11 = AbstractC4291c.b(this.f36815b);
        if (b11 != 0) {
            if (b11 == 1) {
                z10 = e02.f0();
            } else if (b11 != 2) {
                if (b11 != 3) {
                    throw new C5417Jv0();
                }
                z10 = e02.e0();
            } else if (!e02.f0() && !(e02 instanceof I0)) {
                z10 = false;
            }
            if (z10) {
                this.f36817d.addFirst(e02);
            }
            m22 = e02.f36247g;
            if (m22 != null && (a10 = this.f36814a.a(m22)) != null) {
                b10 = AbstractC4291c.b(this.f36815b);
                if (b10 != 0 || b10 == 1 || b10 == 2) {
                    z12 = true;
                } else {
                    if (b10 != 3) {
                        throw new C5417Jv0();
                    }
                    z12 = a10.e0();
                }
                if (z12) {
                    a(a10);
                }
            }
            if (this.f36818e) {
                for (M2 m23 : e02.f36248h.f36675b) {
                    E0 a11 = this.f36814a.a(m23);
                    if (a11 != null) {
                        int b12 = AbstractC4291c.b(this.f36815b);
                        if (b12 == 0 || b12 == 1 || b12 == 2) {
                            z11 = true;
                        } else {
                            if (b12 != 3) {
                                throw new C5417Jv0();
                            }
                            z11 = a11.e0();
                        }
                        if (z11) {
                            a(a11);
                        }
                    }
                }
                return;
            }
            return;
        }
        z10 = true;
        if (z10) {
        }
        m22 = e02.f36247g;
        if (m22 != null) {
            b10 = AbstractC4291c.b(this.f36815b);
            if (b10 != 0) {
            }
            z12 = true;
            if (z12) {
            }
        }
        if (this.f36818e) {
        }
    }
}
