package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class C6336Zu extends Q30 {

    public static final boolean f46371c = true;

    public final Q30[] f46372a;

    public final AbstractC6165Wu f46373b;

    public C6336Zu(Q30[] q30Arr, com.android.tools.r8.graph.M2[] m2Arr) {
        AbstractC6165Wu c6222Xu;
        boolean z10 = f46371c;
        if (!z10 && q30Arr.length <= 0) {
            throw new AssertionError();
        }
        if (!z10 && m2Arr.length != q30Arr.length) {
            throw new AssertionError();
        }
        if (!z10 && !Arrays.stream(q30Arr).noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.isNull((Q30) obj);
            }
        })) {
            throw new AssertionError();
        }
        this.f46372a = q30Arr;
        com.android.tools.r8.graph.M2 m22 = m2Arr[0];
        int length = m2Arr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                c6222Xu = new C6222Xu(m2Arr[0]);
                break;
            } else {
                if (m2Arr[i10] != m22) {
                    c6222Xu = new C6279Yu(m2Arr);
                    break;
                }
                i10++;
            }
        }
        this.f46373b = c6222Xu;
    }

    @Override
    public final C6336Zu a() {
        return this;
    }

    @Override
    public final int c() {
        return this.f46372a.length;
    }

    @Override
    public final boolean e() {
        return false;
    }

    @Override
    public final boolean equals(Object obj) {
        if (C6336Zu.class != obj.getClass()) {
            return false;
        }
        C6336Zu c6336Zu = (C6336Zu) obj;
        Q30[] q30Arr = this.f46372a;
        int length = q30Arr.length;
        Q30[] q30Arr2 = c6336Zu.f46372a;
        if (length == q30Arr2.length && Arrays.equals(q30Arr, q30Arr2)) {
            return this.f46373b.equals(c6336Zu.f46373b);
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Arrays.hashCode(this.f46372a);
    }

    @Override
    public final void a(BiConsumer biConsumer) {
    }

    @Override
    public final F1 a(C4554l1 c4554l1) {
        return C10504yv0.f54195b;
    }

    @Override
    public final Q30 a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        if (this.f46373b.a(c4798y)) {
            return c4798y.f38427t.a(this.f46372a.length);
        }
        Q30[] q30Arr = new Q30[this.f46372a.length];
        int i10 = 0;
        while (true) {
            Q30[] q30Arr2 = this.f46372a;
            if (i10 < q30Arr2.length) {
                q30Arr[i10] = q30Arr2[i10].a(c4798y, abstractC5308Hz, abstractC5308Hz2);
                i10++;
            } else {
                return new C6336Zu(q30Arr, this.f46373b.a(abstractC5308Hz, abstractC5308Hz2));
            }
        }
    }

    public C6336Zu(Q30[] q30Arr, AbstractC6165Wu abstractC6165Wu) {
        this.f46372a = q30Arr;
        this.f46373b = abstractC6165Wu;
    }
}
