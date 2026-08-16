package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C8106kb;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;

public final class C5984Tp0 {

    public static final boolean f44595f = true;

    public final ArrayList f44596a = new ArrayList();

    public C5868Rp0 f44597b = null;

    public C6042Up0 f44598c = null;

    public int f44599d = 0;

    public final C6099Vp0 f44600e;

    public C5984Tp0(C6099Vp0 c6099Vp0) {
        this.f44600e = c6099Vp0;
    }

    public final Collection a(QT qt) {
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = this.f44596a;
        int size = arrayList.size();
        boolean z10 = false;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            AbstractC5926Sp0 abstractC5926Sp0 = (AbstractC5926Sp0) obj;
            abstractC5926Sp0.getClass();
            if (abstractC5926Sp0 instanceof C5868Rp0) {
                C5868Rp0 a10 = abstractC5926Sp0.a();
                arrayDeque.addFirst(new C10443yb(a10.c(), a10.f44005c));
            }
        }
        arrayDeque.add(new C10106wa(this.f44600e.f45186b.f37857F2));
        arrayDeque.add(new C8106kb(C8106kb.a.Dup));
        arrayDeque.add(new C7437ga(183, this.f44600e.f45187c.f37663o, false));
        ArrayList arrayList2 = this.f44596a;
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            AbstractC5926Sp0 abstractC5926Sp02 = (AbstractC5926Sp0) obj2;
            abstractC5926Sp02.getClass();
            if (abstractC5926Sp02 instanceof C5868Rp0) {
                C5868Rp0 a11 = abstractC5926Sp02.a();
                arrayDeque.add(new C8938pa(a11.c(), a11.f44005c));
            } else {
                if (!f44595f && !(abstractC5926Sp02 instanceof C6042Up0)) {
                    throw new AssertionError();
                }
                arrayDeque.add(new A9(abstractC5926Sp02.b().f44880c));
            }
            arrayDeque.add(new C7437ga(182, abstractC5926Sp02.f44317a, false));
        }
        arrayDeque.add(new C7437ga(182, this.f44600e.f45187c.f37666r, false));
        C5868Rp0 c5868Rp0 = this.f44597b;
        if (c5868Rp0 != null && c5868Rp0.c().c() == 2) {
            z10 = true;
        }
        int a12 = C8704o7.a(z10) + 2;
        int i12 = this.f44599d;
        if (a12 > i12) {
            qt.a(a12 - i12);
        }
        return arrayDeque;
    }
}
