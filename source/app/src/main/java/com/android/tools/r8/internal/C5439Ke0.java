package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Objects;
import java.util.TreeSet;
import java.util.function.IntConsumer;

public class C5439Ke0 implements Comparable<C5439Ke0> {

    public static final boolean f41724f = true;

    public final AbstractC8999pu0 f41725b;

    public final int f41726c;

    public final int f41727d;

    public final AbstractC10561zE f41728e;

    public C5439Ke0(int i10, int i11, AbstractC8999pu0 abstractC8999pu0) {
        this.f41726c = i10;
        this.f41727d = i11;
        this.f41728e = null;
        this.f41725b = abstractC8999pu0;
    }

    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(this.f41726c);
        if (this.f41725b.A()) {
            intConsumer.accept(this.f41726c + 1);
        }
    }

    public final void b(IntConsumer intConsumer) {
        int i10 = this.f41727d;
        if (i10 != Integer.MIN_VALUE) {
            intConsumer.accept(i10);
            if (this.f41725b.A()) {
                intConsumer.accept(this.f41727d + 1);
            }
        }
    }

    @Override
    public final int compareTo(C5439Ke0 c5439Ke0) {
        C5439Ke0 c5439Ke02 = c5439Ke0;
        int i10 = this.f41727d - c5439Ke02.f41727d;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.f41726c - c5439Ke02.f41726c;
        if (i11 != 0) {
            return i11;
        }
        if (this.f41725b.x() != c5439Ke02.f41725b.x()) {
            return Boolean.compare(this.f41725b.x(), c5439Ke02.f41725b.x());
        }
        if (this.f41725b.A() != c5439Ke02.f41725b.A()) {
            return Boolean.compare(this.f41725b.A(), c5439Ke02.f41725b.A());
        }
        if (this.f41725b.y() != c5439Ke02.f41725b.y()) {
            return Boolean.compare(this.f41725b.y(), c5439Ke02.f41725b.y());
        }
        AbstractC10561zE abstractC10561zE = this.f41728e;
        if (abstractC10561zE == null) {
            return c5439Ke02.f41728e != null ? -1 : 0;
        }
        AbstractC10561zE abstractC10561zE2 = c5439Ke02.f41728e;
        if (abstractC10561zE2 == null) {
            return 1;
        }
        return abstractC10561zE.f54322g - abstractC10561zE2.f54322g;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C5439Ke0)) {
            return false;
        }
        C5439Ke0 c5439Ke0 = (C5439Ke0) obj;
        return c5439Ke0.f41727d == this.f41727d && c5439Ke0.f41726c == this.f41726c && this.f41725b.equals(c5439Ke0.f41725b) && c5439Ke0.f41728e == this.f41728e;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f41728e) + (this.f41725b.hashCode() * 5) + (this.f41726c * 3) + this.f41727d;
    }

    public final String toString() {
        if (this.f41725b.z()) {
            return "move " + this.f41726c + ", " + this.f41727d;
        }
        if (this.f41725b.A()) {
            return "move-wide " + this.f41726c + ", " + this.f41727d;
        }
        if (!f41724f && !this.f41725b.y()) {
            throw new AssertionError();
        }
        return "move-object " + this.f41726c + ", " + this.f41727d;
    }

    public final boolean a(C5612Ne0 c5612Ne0, TreeSet treeSet, C7561hF c7561hF) {
        int i10;
        if (a(c5612Ne0)) {
            return true;
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            C5439Ke0 c5439Ke0 = (C5439Ke0) it.next();
            if (this != c5439Ke0 && (i10 = c5439Ke0.f41727d) != Integer.MIN_VALUE) {
                int i11 = c7561hF.get(i10);
                boolean A10 = c5439Ke0.f41725b.A();
                if (this.f41726c == i11 || ((this.f41725b.A() && this.f41726c + 1 == i11) || (A10 && this.f41726c == i11 + 1))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean b(C5612Ne0 c5612Ne0) {
        boolean z10 = f41724f;
        if (!z10 && !a(c5612Ne0)) {
            throw new AssertionError();
        }
        if (!this.f41725b.A()) {
            return false;
        }
        if (this.f41728e != null) {
            if (z10 || this.f41727d == Integer.MIN_VALUE) {
                return false;
            }
            throw new AssertionError();
        }
        int i10 = c5612Ne0.f42652b.get(this.f41727d);
        if (!z10 && i10 == this.f41726c) {
            throw new AssertionError();
        }
        int i11 = this.f41726c;
        if (i10 == i11 - 1 && c5612Ne0.f42660j.h(i11)) {
            return true;
        }
        int i12 = this.f41726c + 1;
        return i10 == i12 && c5612Ne0.f42660j.h(i12);
    }

    public C5439Ke0(int i10, AbstractC8999pu0 abstractC8999pu0, AbstractC10561zE abstractC10561zE) {
        if (!f41724f && !abstractC10561zE.e2()) {
            throw new AssertionError();
        }
        this.f41726c = i10;
        this.f41727d = Integer.MIN_VALUE;
        this.f41728e = abstractC10561zE;
        this.f41725b = abstractC8999pu0;
    }

    public final boolean a(C5612Ne0 c5612Ne0) {
        return c5612Ne0.f42660j.h(this.f41726c) || (this.f41725b.A() && c5612Ne0.f42660j.h(this.f41726c + 1));
    }

    public final boolean a() {
        return this.f41725b.A();
    }
}
