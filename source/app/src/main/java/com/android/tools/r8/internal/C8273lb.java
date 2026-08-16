package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.JavaElement;

public final class C8273lb extends AbstractC9441sb {

    public static final boolean f50008e = true;

    public final AbstractC9274rb[] f50009c;

    public final AbstractC9274rb[] f50010d;

    public C8273lb(int i10, int i11) {
        super(0, null);
        this.f50009c = new AbstractC9274rb[i10];
        this.f50010d = new AbstractC9274rb[i11];
    }

    @Override
    public final C8273lb a() {
        return this;
    }

    @Override
    public final int b() {
        return this.f50009c.length - 1;
    }

    @Override
    public final C8774ob c() {
        if (f50008e || this.f50010d.length > 0) {
            return b(this.f50010d.length - 1);
        }
        throw new AssertionError();
    }

    @Override
    public final int d() {
        return this.f50010d.length;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("stack: [");
        AbstractC9274rb[] abstractC9274rbArr = this.f50010d;
        int length = abstractC9274rbArr.length;
        String str = "";
        int i10 = 0;
        String str2 = "";
        int i11 = 0;
        while (i11 < length) {
            AbstractC9274rb abstractC9274rb = abstractC9274rbArr[i11];
            sb2.append(str2);
            sb2.append((Object) abstractC9274rb);
            i11++;
            str2 = ", ";
        }
        sb2.append("] locals: [");
        while (true) {
            AbstractC9274rb[] abstractC9274rbArr2 = this.f50009c;
            if (i10 >= abstractC9274rbArr2.length) {
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                return sb2.toString();
            }
            if (abstractC9274rbArr2[i10] != null) {
                sb2.append(str);
                sb2.append(i10);
                sb2.append(':');
                sb2.append((Object) this.f50009c[i10]);
                str = ", ";
            }
            i10++;
        }
    }

    @Override
    public final C8774ob a(int i10) {
        AbstractC9274rb abstractC9274rb;
        AbstractC9274rb[] abstractC9274rbArr = this.f50009c;
        if (i10 < abstractC9274rbArr.length && (abstractC9274rb = abstractC9274rbArr[i10]) != null) {
            return new C8774ob(i10, abstractC9274rb);
        }
        return null;
    }

    @Override
    public final C8774ob b(int i10) {
        return new C8774ob(i10 + 100000, this.f50010d[i10]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8273lb(com.android.tools.r8.graph.M2[] m2Arr, com.android.tools.r8.graph.M2[] m2Arr2, B60 b60) {
        super(0, null);
        AbstractC9274rb c9108qb;
        AbstractC9274rb c9108qb2;
        if (!f50008e && b60 == null) {
            throw new AssertionError();
        }
        this.f50009c = new AbstractC9274rb[m2Arr.length];
        this.f50010d = new AbstractC9274rb[m2Arr2.length];
        for (int i10 = 0; i10 < m2Arr.length; i10++) {
            AbstractC9274rb[] abstractC9274rbArr = this.f50009c;
            com.android.tools.r8.graph.M2 m22 = m2Arr[i10];
            if (m22 == null) {
                c9108qb2 = null;
            } else if (m22.V0().equals("NULL")) {
                c9108qb2 = new C8941pb(EnumC5477Kw0.f41824b);
            } else {
                c9108qb2 = new C9108qb(m22);
            }
            abstractC9274rbArr[i10] = c9108qb2;
        }
        for (int i11 = 0; i11 < m2Arr2.length; i11++) {
            if (!f50008e && m2Arr2[i11] == null) {
                throw new AssertionError();
            }
            AbstractC9274rb[] abstractC9274rbArr2 = this.f50010d;
            com.android.tools.r8.graph.M2 m23 = m2Arr2[i11];
            if (m23.V0().equals("NULL")) {
                c9108qb = new C8941pb(EnumC5477Kw0.f41824b);
            } else {
                c9108qb = new C9108qb(m23);
            }
            abstractC9274rbArr2[i11] = c9108qb;
        }
    }

    @Override
    public final void a(C8273lb c8273lb) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            AbstractC9274rb[] abstractC9274rbArr = this.f50009c;
            if (i11 >= abstractC9274rbArr.length) {
                break;
            }
            AbstractC9274rb[] abstractC9274rbArr2 = c8273lb.f50009c;
            if (i11 >= abstractC9274rbArr2.length) {
                break;
            }
            abstractC9274rbArr2[i11] = abstractC9274rbArr[i11];
            i11++;
        }
        while (true) {
            AbstractC9274rb[] abstractC9274rbArr3 = this.f50010d;
            if (i10 >= abstractC9274rbArr3.length) {
                return;
            }
            AbstractC9274rb[] abstractC9274rbArr4 = c8273lb.f50010d;
            if (i10 >= abstractC9274rbArr4.length) {
                return;
            }
            abstractC9274rbArr4[i10] = abstractC9274rbArr3[i10];
            i10++;
        }
    }
}
