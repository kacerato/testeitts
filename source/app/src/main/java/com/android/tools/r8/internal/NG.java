package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class NG extends AbstractC7686i1 {

    public final QG f42548b;

    public NG(QG qg2) {
        this.f42548b = qg2;
    }

    @Override
    public final void clear() {
        this.f42548b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        QG qg2;
        int i10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            Object value = entry.getValue();
            if (intValue == 0) {
                QG qg3 = this.f42548b;
                return qg3.f43527e && qg3.f43525c[qg3.f43531i] == value;
            }
            int[] iArr = this.f42548b.f43524b;
            int a10 = AbstractC7878jA.a(intValue);
            QG qg4 = this.f42548b;
            int i11 = a10 & qg4.f43526d;
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            if (intValue == i12) {
                return qg4.f43525c[i11] == value;
            }
            do {
                qg2 = this.f42548b;
                i11 = (i11 + 1) & qg2.f43526d;
                i10 = iArr[i11];
                if (i10 == 0) {
                    return false;
                }
            } while (intValue != i10);
            if (qg2.f43525c[i11] == value) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object first() {
        QG qg2 = this.f42548b;
        if (qg2.f43533k != 0) {
            return new MG(qg2, qg2.f43528f);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new JG(this.f42548b);
    }

    @Override
    public final Object last() {
        QG qg2 = this.f42548b;
        if (qg2.f43533k != 0) {
            return new MG(qg2, qg2.f43529g);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(Object obj) {
        int i10;
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
            QG qg2 = this.f42548b;
            if (qg2.f43527e) {
                Object[] objArr = qg2.f43525c;
                int i11 = qg2.f43531i;
                if (objArr[i11] == value) {
                    qg2.f43527e = false;
                    objArr[i11] = null;
                    qg2.f43533k--;
                    qg2.d(i11);
                    if (qg2.f43533k < qg2.f43532j / 4 && (i10 = qg2.f43531i) > 16) {
                        qg2.e(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        int[] iArr = this.f42548b.f43524b;
        int a10 = AbstractC7878jA.a(intValue);
        QG qg3 = this.f42548b;
        int i12 = a10 & qg3.f43526d;
        int i13 = iArr[i12];
        if (i13 == 0) {
            return false;
        }
        if (i13 == intValue) {
            if (qg3.f43525c[i12] != value) {
                return false;
            }
            qg3.f(i12);
            return true;
        }
        while (true) {
            QG qg4 = this.f42548b;
            i12 = (i12 + 1) & qg4.f43526d;
            int i14 = iArr[i12];
            if (i14 == 0) {
                return false;
            }
            if (i14 == intValue && qg4.f43525c[i12] == value) {
                qg4.f(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f42548b.f43533k;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final A30 iterator() {
        return new JG(this.f42548b);
    }

    @Override
    public final Iterator iterator() {
        return new JG(this.f42548b);
    }
}
