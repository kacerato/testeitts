package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.openjdk.tools.doclint.DocLint;

public final class C12058f implements Iterable, InterfaceC12157q, InterfaceC12121m {

    @v2.d
    public final SortedMap f62273b;

    @v2.d
    public final Map f62274c;

    public C12058f() {
        this.f62273b = new TreeMap();
        this.f62274c = new TreeMap();
    }

    @Override
    public final String P1() {
        return u(DocLint.SEPARATOR);
    }

    @Override
    public final Double Q1() {
        SortedMap sortedMap = this.f62273b;
        return sortedMap.size() == 1 ? m(0).Q1() : sortedMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override
    public final Boolean R1() {
        return Boolean.TRUE;
    }

    @Override
    public final Iterator a() {
        return new C12040d(this, this.f62273b.o().iterator(), this.f62274c.o().iterator());
    }

    @Override
    public final InterfaceC12157q c(String str) {
        InterfaceC12157q interfaceC12157q;
        return "length".equals(str) ? new C12094j(Double.valueOf(k())) : (!e(str) || (interfaceC12157q = (InterfaceC12157q) this.f62274c.get(str)) == null) ? InterfaceC12157q.f62394o4 : interfaceC12157q;
    }

    @Override
    public final boolean e(String str) {
        return "length".equals(str) || this.f62274c.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12058f)) {
            return false;
        }
        C12058f c12058f = (C12058f) obj;
        if (k() != c12058f.k()) {
            return false;
        }
        SortedMap sortedMap = this.f62273b;
        if (sortedMap.isEmpty()) {
            return c12058f.f62273b.isEmpty();
        }
        for (int intValue = ((Integer) sortedMap.firstKey()).intValue(); intValue <= ((Integer) sortedMap.lastKey()).intValue(); intValue++) {
            if (!m(intValue).equals(c12058f.m(intValue))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final void f(String str, InterfaceC12157q interfaceC12157q) {
        if (interfaceC12157q == null) {
            this.f62274c.remove(str);
        } else {
            this.f62274c.put(str, interfaceC12157q);
        }
    }

    @Override
    public final InterfaceC12157q g() {
        C12058f c12058f = new C12058f();
        for (Map.Entry entry : this.f62273b.entrySet()) {
            if (entry.getValue() instanceof InterfaceC12121m) {
                c12058f.f62273b.put((Integer) entry.getKey(), (InterfaceC12157q) entry.getValue());
            } else {
                c12058f.f62273b.put((Integer) entry.getKey(), ((InterfaceC12157q) entry.getValue()).g());
            }
        }
        return c12058f;
    }

    @Override
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        return ("concat".equals(str) || "every".equals(str) || "filter".equals(str) || "forEach".equals(str) || "indexOf".equals(str) || "join".equals(str) || "lastIndexOf".equals(str) || "map".equals(str) || "pop".equals(str) || "push".equals(str) || "reduce".equals(str) || "reduceRight".equals(str) || "reverse".equals(str) || "shift".equals(str) || "slice".equals(str) || "some".equals(str) || "sort".equals(str) || "splice".equals(str) || "toString".equals(str) || "unshift".equals(str)) ? D.a(str, this, c12079h2, list) : InterfaceC12121m.b(this, new C12192u(str), c12079h2, list);
    }

    public final int hashCode() {
        return this.f62273b.hashCode() * 31;
    }

    public final List i() {
        ArrayList arrayList = new ArrayList(k());
        for (int i10 = 0; i10 < k(); i10++) {
            arrayList.add(m(i10));
        }
        return arrayList;
    }

    @Override
    public final Iterator iterator() {
        return new C12049e(this);
    }

    public final Iterator j() {
        return this.f62273b.o().iterator();
    }

    public final int k() {
        SortedMap sortedMap = this.f62273b;
        if (sortedMap.isEmpty()) {
            return 0;
        }
        return ((Integer) sortedMap.lastKey()).intValue() + 1;
    }

    public final int l() {
        return this.f62273b.size();
    }

    public final InterfaceC12157q m(int i10) {
        InterfaceC12157q interfaceC12157q;
        if (i10 < k()) {
            return (!o(i10) || (interfaceC12157q = (InterfaceC12157q) this.f62273b.get(Integer.valueOf(i10))) == null) ? InterfaceC12157q.f62394o4 : interfaceC12157q;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    @vm.m({"elements"})
    public final void n(int i10, InterfaceC12157q interfaceC12157q) {
        if (i10 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i10 < 0) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 21);
            sb2.append("Out of bounds index: ");
            sb2.append(i10);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (interfaceC12157q == null) {
            this.f62273b.remove(Integer.valueOf(i10));
        } else {
            this.f62273b.put(Integer.valueOf(i10), interfaceC12157q);
        }
    }

    public final boolean o(int i10) {
        if (i10 >= 0) {
            SortedMap sortedMap = this.f62273b;
            if (i10 <= ((Integer) sortedMap.lastKey()).intValue()) {
                return sortedMap.containsKey(Integer.valueOf(i10));
            }
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 21);
        sb2.append("Out of bounds index: ");
        sb2.append(i10);
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    public final void r() {
        this.f62273b.clear();
    }

    public final void s(int i10, InterfaceC12157q interfaceC12157q) {
        if (i10 < 0) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 21);
            sb2.append("Invalid value index: ");
            sb2.append(i10);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (i10 >= k()) {
            n(i10, interfaceC12157q);
            return;
        }
        SortedMap sortedMap = this.f62273b;
        for (int intValue = ((Integer) sortedMap.lastKey()).intValue(); intValue >= i10; intValue--) {
            Integer valueOf = Integer.valueOf(intValue);
            InterfaceC12157q interfaceC12157q2 = (InterfaceC12157q) sortedMap.get(valueOf);
            if (interfaceC12157q2 != null) {
                n(intValue + 1, interfaceC12157q2);
                sortedMap.remove(valueOf);
            }
        }
        n(i10, interfaceC12157q);
    }

    public final void t(int i10) {
        SortedMap sortedMap = this.f62273b;
        int intValue = ((Integer) sortedMap.lastKey()).intValue();
        if (i10 > intValue || i10 < 0) {
            return;
        }
        sortedMap.remove(Integer.valueOf(i10));
        if (i10 == intValue) {
            int i11 = i10 - 1;
            Integer valueOf = Integer.valueOf(i11);
            if (sortedMap.containsKey(valueOf) || i11 < 0) {
                return;
            }
            sortedMap.put(valueOf, InterfaceC12157q.f62394o4);
            return;
        }
        while (true) {
            i10++;
            if (i10 > ((Integer) sortedMap.lastKey()).intValue()) {
                return;
            }
            Integer valueOf2 = Integer.valueOf(i10);
            InterfaceC12157q interfaceC12157q = (InterfaceC12157q) sortedMap.get(valueOf2);
            if (interfaceC12157q != null) {
                sortedMap.put(Integer.valueOf(i10 - 1), interfaceC12157q);
                sortedMap.remove(valueOf2);
            }
        }
    }

    public final String toString() {
        return u(DocLint.SEPARATOR);
    }

    public final String u(String str) {
        String str2;
        StringBuilder sb2 = new StringBuilder();
        if (!this.f62273b.isEmpty()) {
            int i10 = 0;
            while (true) {
                str2 = str == null ? "" : str;
                if (i10 >= k()) {
                    break;
                }
                InterfaceC12157q m10 = m(i10);
                sb2.append(str2);
                if (!(m10 instanceof C12201v) && !(m10 instanceof C12139o)) {
                    sb2.append(m10.P1());
                }
                i10++;
            }
            sb2.delete(0, str2.length());
        }
        return sb2.toString();
    }

    public C12058f(List list) {
        this();
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                n(i10, (InterfaceC12157q) list.get(i10));
            }
        }
    }
}
