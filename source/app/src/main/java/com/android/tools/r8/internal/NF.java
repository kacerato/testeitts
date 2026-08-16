package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class NF extends AbstractC7519h1 {

    public final QF f42545b;

    public NF(QF qf2) {
        this.f42545b = qf2;
    }

    @Override
    public final void clear() {
        this.f42545b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        QF qf2;
        int i10;
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() == null || !(entry.getKey() instanceof Integer)) {
            return false;
        }
        int intValue = ((Integer) entry.getKey()).intValue();
        Object value = entry.getValue();
        if (intValue == 0) {
            QF qf3 = this.f42545b;
            return qf3.f43514e && ((obj2 = qf3.f43512c[qf3.f43515f]) != null ? obj2.equals(value) : value == null);
        }
        int[] iArr = this.f42545b.f43511b;
        int a10 = AbstractC7878jA.a(intValue);
        QF qf4 = this.f42545b;
        int i11 = a10 & qf4.f43513d;
        int i12 = iArr[i11];
        if (i12 == 0) {
            return false;
        }
        if (intValue == i12) {
            Object obj3 = qf4.f43512c[i11];
            return obj3 == null ? value == null : obj3.equals(value);
        }
        do {
            qf2 = this.f42545b;
            i11 = (i11 + 1) & qf2.f43513d;
            i10 = iArr[i11];
            if (i10 == 0) {
                return false;
            }
        } while (intValue != i10);
        Object obj4 = qf2.f43512c[i11];
        return obj4 == null ? value == null : obj4.equals(value);
    }

    @Override
    public final A30 iterator() {
        return new JF(this.f42545b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a9, code lost:
    
        r7.f42545b.e(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ae, code lost:
    
        return true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean remove(Object obj) {
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() == null || !(entry.getKey() instanceof Integer)) {
            return false;
        }
        int intValue = ((Integer) entry.getKey()).intValue();
        Object value = entry.getValue();
        if (intValue == 0) {
            QF qf2 = this.f42545b;
            if (!qf2.f43514e || ((obj2 = qf2.f43512c[qf2.f43515f]) != null ? !obj2.equals(value) : value != null)) {
                return false;
            }
            QF qf3 = this.f42545b;
            qf3.f43514e = false;
            Object[] objArr = qf3.f43512c;
            int i10 = qf3.f43515f;
            Object obj3 = objArr[i10];
            objArr[i10] = null;
            int i11 = qf3.f43517h - 1;
            qf3.f43517h = i11;
            if (i11 < qf3.f43516g / 4 && i10 > 16) {
                qf3.d(i10 / 2);
            }
            return true;
        }
        int[] iArr = this.f42545b.f43511b;
        int a10 = AbstractC7878jA.a(intValue);
        QF qf4 = this.f42545b;
        int i12 = a10 & qf4.f43513d;
        int i13 = iArr[i12];
        if (i13 == 0) {
            return false;
        }
        if (i13 == intValue) {
            Object obj4 = qf4.f43512c[i12];
            if (obj4 != null ? !obj4.equals(value) : value != null) {
                return false;
            }
            this.f42545b.e(i12);
            return true;
        }
        while (true) {
            QF qf5 = this.f42545b;
            i12 = (i12 + 1) & qf5.f43513d;
            int i14 = iArr[i12];
            if (i14 == 0) {
                return false;
            }
            if (i14 == intValue) {
                Object obj5 = qf5.f43512c[i12];
                if (obj5 == null) {
                    if (value == null) {
                        break;
                    }
                } else if (obj5.equals(value)) {
                    break;
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f42545b.f43517h;
    }

    @Override
    public final Iterator iterator() {
        return new JF(this.f42545b);
    }
}
