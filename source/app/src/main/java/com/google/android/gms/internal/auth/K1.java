package com.google.android.gms.internal.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class K1 extends W0 implements RandomAccess, L1 {

    public static final K1 f61633d;

    @Deprecated
    public static final L1 f61634e;

    public final List f61635c;

    static {
        K1 k12 = new K1(false);
        f61633d = k12;
        f61634e = k12;
    }

    public K1() {
        this(10);
    }

    public static String k(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC11956l1 ? ((AbstractC11956l1) obj).w(H1.f61615b) : H1.d((byte[]) obj);
    }

    @Override
    public final F1 L0(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.f61635c);
        return new K1(arrayList);
    }

    @Override
    public final L1 R1() {
        return P1() ? new L2(this) : this;
    }

    @Override
    public final List T1() {
        return Collections.unmodifiableList(this.f61635c);
    }

    @Override
    public final void add(int i10, Object obj) {
        a();
        this.f61635c.add(i10, (String) obj);
        this.modCount++;
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        a();
        if (collection instanceof L1) {
            collection = ((L1) collection).T1();
        }
        boolean addAll = this.f61635c.addAll(i10, collection);
        this.modCount++;
        return addAll;
    }

    @Override
    public final void clear() {
        a();
        this.f61635c.clear();
        this.modCount++;
    }

    @Override
    public final String get(int i10) {
        Object obj = this.f61635c.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC11956l1) {
            AbstractC11956l1 abstractC11956l1 = (AbstractC11956l1) obj;
            String w10 = abstractC11956l1.w(H1.f61615b);
            if (abstractC11956l1.r()) {
                this.f61635c.set(i10, w10);
            }
            return w10;
        }
        byte[] bArr = (byte[]) obj;
        String d10 = H1.d(bArr);
        if (U2.b(bArr)) {
            this.f61635c.set(i10, d10);
        }
        return d10;
    }

    @Override
    public final Object remove(int i10) {
        a();
        Object remove = this.f61635c.remove(i10);
        this.modCount++;
        return k(remove);
    }

    @Override
    public final Object set(int i10, Object obj) {
        a();
        return k(this.f61635c.set(i10, (String) obj));
    }

    @Override
    public final int size() {
        return this.f61635c.size();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K1(int i10) {
        super(true);
        ArrayList arrayList = new ArrayList(i10);
        this.f61635c = arrayList;
    }

    public K1(ArrayList arrayList) {
        super(true);
        this.f61635c = arrayList;
    }

    public K1(boolean z10) {
        super(false);
        this.f61635c = Collections.emptyList();
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
