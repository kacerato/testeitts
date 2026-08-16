package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public class J0 extends AbstractC12665d<String> implements K0, RandomAccess {

    public static final J0 f68770e;

    @Deprecated
    public static final K0 f68771f;

    public final List<Object> f68772d;

    public static class a extends AbstractList<byte[]> implements RandomAccess {

        public final J0 f68773b;

        public a(J0 list) {
            this.f68773b = list;
        }

        @Override
        public void add(int index, byte[] s10) {
            this.f68773b.j(index, s10);
            this.modCount++;
        }

        @Override
        public byte[] get(int index) {
            return this.f68773b.M3(index);
        }

        @Override
        public byte[] remove(int index) {
            String remove = this.f68773b.remove(index);
            this.modCount++;
            return J0.k(remove);
        }

        @Override
        public byte[] set(int index, byte[] s10) {
            Object t10 = this.f68773b.t(index, s10);
            this.modCount++;
            return J0.k(t10);
        }

        @Override
        public int size() {
            return this.f68773b.size();
        }
    }

    public static class b extends AbstractList<AbstractC12724x> implements RandomAccess {

        public final J0 f68774b;

        public b(J0 list) {
            this.f68774b = list;
        }

        @Override
        public void add(int index, AbstractC12724x s10) {
            this.f68774b.h(index, s10);
            this.modCount++;
        }

        @Override
        public AbstractC12724x get(int index) {
            return this.f68774b.ub(index);
        }

        @Override
        public AbstractC12724x remove(int index) {
            String remove = this.f68774b.remove(index);
            this.modCount++;
            return J0.l(remove);
        }

        @Override
        public AbstractC12724x set(int index, AbstractC12724x s10) {
            Object s11 = this.f68774b.s(index, s10);
            this.modCount++;
            return J0.l(s11);
        }

        @Override
        public int size() {
            return this.f68774b.size();
        }
    }

    static {
        J0 j02 = new J0();
        f68770e = j02;
        j02.r9();
        f68771f = j02;
    }

    public J0() {
        this(10);
    }

    public static byte[] k(Object o10) {
        return o10 instanceof byte[] ? (byte[]) o10 : o10 instanceof String ? D0.y((String) o10) : ((AbstractC12724x) o10).b0();
    }

    public static AbstractC12724x l(Object o10) {
        return o10 instanceof AbstractC12724x ? (AbstractC12724x) o10 : o10 instanceof String ? AbstractC12724x.w((String) o10) : AbstractC12724x.u((byte[]) o10);
    }

    public static String m(Object o10) {
        return o10 instanceof String ? (String) o10 : o10 instanceof AbstractC12724x ? ((AbstractC12724x) o10).g0() : D0.z((byte[]) o10);
    }

    public static J0 n() {
        return f68770e;
    }

    @Override
    public boolean E7(Collection<? extends AbstractC12724x> values) {
        a();
        boolean addAll = this.f68772d.addAll(values);
        this.modCount++;
        return addAll;
    }

    @Override
    public List<?> Ea() {
        return Collections.unmodifiableList(this.f68772d);
    }

    @Override
    public Object Ee(int index) {
        return this.f68772d.get(index);
    }

    @Override
    public List<AbstractC12724x> Hb() {
        return new b(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public byte[] M3(int index) {
        Object obj = this.f68772d.get(index);
        byte[] k10 = k(obj);
        if (k10 != obj) {
            this.f68772d.set(index, k10);
        }
        return k10;
    }

    @Override
    public void Re(int index, AbstractC12724x s10) {
        s(index, s10);
    }

    @Override
    public boolean T3(Collection<byte[]> c10) {
        a();
        boolean addAll = this.f68772d.addAll(c10);
        this.modCount++;
        return addAll;
    }

    @Override
    public boolean addAll(Collection<? extends String> c10) {
        return addAll(size(), c10);
    }

    @Override
    public void b3(AbstractC12724x element) {
        a();
        this.f68772d.add(element);
        this.modCount++;
    }

    @Override
    public void clear() {
        a();
        this.f68772d.clear();
        this.modCount++;
    }

    @Override
    public void d4(K0 other) {
        a();
        for (Object obj : other.Ea()) {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.f68772d.add(Arrays.copyOf(bArr, bArr.length));
            } else {
                this.f68772d.add(obj);
            }
        }
    }

    @Override
    public boolean equals(Object o10) {
        return super.equals(o10);
    }

    public final void h(int index, AbstractC12724x element) {
        a();
        this.f68772d.add(index, element);
        this.modCount++;
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean hc() {
        return super.hc();
    }

    @Override
    public void add(int index, String element) {
        a();
        this.f68772d.add(index, element);
        this.modCount++;
    }

    public final void j(int index, byte[] element) {
        a();
        this.f68772d.add(index, element);
        this.modCount++;
    }

    @Override
    public void l1(byte[] element) {
        a();
        this.f68772d.add(element);
        this.modCount++;
    }

    @Override
    public J0 q2(int capacity) {
        if (capacity < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(capacity);
        arrayList.addAll(this.f68772d);
        return new J0((ArrayList<Object>) arrayList);
    }

    @Override
    public String remove(int index) {
        a();
        Object remove = this.f68772d.remove(index);
        this.modCount++;
        return m(remove);
    }

    @Override
    public String set(int index, String s10) {
        a();
        return m(this.f68772d.set(index, s10));
    }

    @Override
    public void r2(int index, byte[] s10) {
        t(index, s10);
    }

    @Override
    public boolean removeAll(Collection c10) {
        return super.removeAll(c10);
    }

    @Override
    public boolean retainAll(Collection c10) {
        return super.retainAll(c10);
    }

    public final Object s(int index, AbstractC12724x s10) {
        a();
        return this.f68772d.set(index, s10);
    }

    @Override
    public int size() {
        return this.f68772d.size();
    }

    public final Object t(int index, byte[] s10) {
        a();
        return this.f68772d.set(index, s10);
    }

    @Override
    public K0 t8() {
        return hc() ? new v2(this) : this;
    }

    @Override
    public AbstractC12724x ub(int index) {
        Object obj = this.f68772d.get(index);
        AbstractC12724x l10 = l(obj);
        if (l10 != obj) {
            this.f68772d.set(index, l10);
        }
        return l10;
    }

    @Override
    public List<byte[]> y4() {
        return new a(this);
    }

    public J0(int initialCapacity) {
        this((ArrayList<Object>) new ArrayList(initialCapacity));
    }

    @Override
    public boolean add(Object e10) {
        return super.add(e10);
    }

    @Override
    public boolean addAll(int index, Collection<? extends String> c10) {
        a();
        if (c10 instanceof K0) {
            c10 = ((K0) c10).Ea();
        }
        boolean addAll = this.f68772d.addAll(index, c10);
        this.modCount++;
        return addAll;
    }

    @Override
    public String get(int index) {
        Object obj = this.f68772d.get(index);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC12724x) {
            AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
            String g02 = abstractC12724x.g0();
            if (abstractC12724x.J()) {
                this.f68772d.set(index, g02);
            }
            return g02;
        }
        byte[] bArr = (byte[]) obj;
        String z10 = D0.z(bArr);
        if (D0.u(bArr)) {
            this.f68772d.set(index, z10);
        }
        return z10;
    }

    @Override
    public boolean remove(Object o10) {
        return super.remove(o10);
    }

    public J0(K0 from) {
        this.f68772d = new ArrayList(from.size());
        addAll(from);
    }

    public J0(List<String> from) {
        this((ArrayList<Object>) new ArrayList(from));
    }

    public J0(ArrayList<Object> list) {
        this.f68772d = list;
    }
}
