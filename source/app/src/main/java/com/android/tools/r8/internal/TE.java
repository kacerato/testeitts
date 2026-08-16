package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class TE extends AbstractC7686i1 {

    public final WE f44422b;

    public TE(WE we2) {
        this.f44422b = we2;
    }

    @Override
    public final void clear() {
        this.f44422b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        WE we2;
        int i10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer) && entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if (intValue == 0) {
                WE we3 = this.f44422b;
                return we3.f45344f && we3.f45342d[we3.f45348j] == intValue2;
            }
            int[] iArr = this.f44422b.f45341c;
            int a10 = AbstractC7878jA.a(intValue);
            WE we4 = this.f44422b;
            int i11 = a10 & we4.f45343e;
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            if (intValue == i12) {
                return we4.f45342d[i11] == intValue2;
            }
            do {
                we2 = this.f44422b;
                i11 = (i11 + 1) & we2.f45343e;
                i10 = iArr[i11];
                if (i10 == 0) {
                    return false;
                }
            } while (intValue != i10);
            if (we2.f45342d[i11] == intValue2) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object first() {
        WE we2 = this.f44422b;
        if (we2.f45350l != 0) {
            return new SE(we2, we2.f45345g);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new PE(this.f44422b);
    }

    @Override
    public final Object last() {
        WE we2 = this.f44422b;
        if (we2.f45350l != 0) {
            return new SE(we2, we2.f45346h);
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
        if (entry.getKey() == null || !(entry.getKey() instanceof Integer) || entry.getValue() == null || !(entry.getValue() instanceof Integer)) {
            return false;
        }
        int intValue = ((Integer) entry.getKey()).intValue();
        int intValue2 = ((Integer) entry.getValue()).intValue();
        if (intValue == 0) {
            WE we2 = this.f44422b;
            if (we2.f45344f) {
                int[] iArr = we2.f45342d;
                int i11 = we2.f45348j;
                if (iArr[i11] == intValue2) {
                    we2.f45344f = false;
                    we2.f45350l--;
                    we2.e(i11);
                    if (we2.f45350l < we2.f45349k / 4 && (i10 = we2.f45348j) > 16) {
                        we2.f(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        int[] iArr2 = this.f44422b.f45341c;
        int a10 = AbstractC7878jA.a(intValue);
        WE we3 = this.f44422b;
        int i12 = a10 & we3.f45343e;
        int i13 = iArr2[i12];
        if (i13 == 0) {
            return false;
        }
        if (i13 == intValue) {
            if (we3.f45342d[i12] != intValue2) {
                return false;
            }
            we3.g(i12);
            return true;
        }
        while (true) {
            WE we4 = this.f44422b;
            i12 = (i12 + 1) & we4.f45343e;
            int i14 = iArr2[i12];
            if (i14 == 0) {
                return false;
            }
            if (i14 == intValue && we4.f45342d[i12] == intValue2) {
                we4.g(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f44422b.f45350l;
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
        return new PE(this.f44422b);
    }

    @Override
    public final Iterator iterator() {
        return new PE(this.f44422b);
    }
}
