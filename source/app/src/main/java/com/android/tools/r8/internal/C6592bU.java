package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C6592bU extends AbstractC7519h1 {

    public final C7091eU f46769b;

    public C6592bU(C7091eU c7091eU) {
        this.f46769b = c7091eU;
    }

    @Override
    public final void clear() {
        this.f46769b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        C7091eU c7091eU;
        long j10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Long)) {
            long longValue = ((Long) entry.getKey()).longValue();
            Object value = entry.getValue();
            if (longValue == 0) {
                C7091eU c7091eU2 = this.f46769b;
                return c7091eU2.f47694e && c7091eU2.f47692c[c7091eU2.f47695f] == value;
            }
            long[] jArr = this.f46769b.f47691b;
            int a10 = (int) AbstractC7878jA.a(longValue);
            C7091eU c7091eU3 = this.f46769b;
            int i10 = a10 & c7091eU3.f47693d;
            long j11 = jArr[i10];
            if (j11 == 0) {
                return false;
            }
            if (longValue == j11) {
                return c7091eU3.f47692c[i10] == value;
            }
            do {
                c7091eU = this.f46769b;
                i10 = (i10 + 1) & c7091eU.f47693d;
                j10 = jArr[i10];
                if (j10 == 0) {
                    return false;
                }
            } while (longValue != j10);
            if (c7091eU.f47692c[i10] == value) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new XT(this.f46769b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() == null || !(entry.getKey() instanceof Long)) {
            return false;
        }
        long longValue = ((Long) entry.getKey()).longValue();
        Object value = entry.getValue();
        if (longValue == 0) {
            C7091eU c7091eU = this.f46769b;
            if (c7091eU.f47694e) {
                Object[] objArr = c7091eU.f47692c;
                int i10 = c7091eU.f47695f;
                if (objArr[i10] == value) {
                    c7091eU.f47694e = false;
                    objArr[i10] = null;
                    int i11 = c7091eU.f47697h - 1;
                    c7091eU.f47697h = i11;
                    if (i11 < c7091eU.f47696g / 4 && i10 > 16) {
                        c7091eU.d(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        long[] jArr = this.f46769b.f47691b;
        int a10 = (int) AbstractC7878jA.a(longValue);
        C7091eU c7091eU2 = this.f46769b;
        int i12 = a10 & c7091eU2.f47693d;
        long j10 = jArr[i12];
        if (j10 == 0) {
            return false;
        }
        if (j10 == longValue) {
            if (c7091eU2.f47692c[i12] != value) {
                return false;
            }
            c7091eU2.e(i12);
            return true;
        }
        while (true) {
            C7091eU c7091eU3 = this.f46769b;
            i12 = (i12 + 1) & c7091eU3.f47693d;
            long j11 = jArr[i12];
            if (j11 == 0) {
                return false;
            }
            if (j11 == longValue && c7091eU3.f47692c[i12] == value) {
                c7091eU3.e(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f46769b.f47697h;
    }

    @Override
    public final Iterator iterator() {
        return new XT(this.f46769b);
    }
}
