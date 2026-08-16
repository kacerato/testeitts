package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class G9 extends W9 implements Cloneable {

    public static final YB f40402e;

    public static final boolean f40403f = true;

    public final InterfaceC7896jG f40404c;

    public final Deque f40405d;

    static {
        YB yb2 = new YB(Arrays.asList(new S60[0]));
        yb2.f45951b = true;
        f40402e = yb2;
    }

    public G9(C10564zF c10564zF) {
        this((InterfaceC7896jG) c10564zF, (Deque) f40402e);
        if (!f40403f && c10564zF.isEmpty() && c10564zF != AbstractC8230lG.f49915a) {
            throw new AssertionError((Object) "Should use EMPTY_LOCALS instead");
        }
    }

    public static a V() {
        return new a();
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 207;
    }

    @Override
    public final boolean E() {
        return false;
    }

    @Override
    public final boolean K() {
        return true;
    }

    public final ArrayDeque W() {
        if (f40403f || (this.f40405d instanceof ArrayDeque)) {
            return (ArrayDeque) this.f40405d;
        }
        throw new AssertionError();
    }

    public final G9 X() {
        InterfaceC7896jG interfaceC7896jG = this.f40404c;
        C7401gI comparator = interfaceC7896jG.comparator();
        C10564zF c10564zF = new C10564zF();
        c10564zF.f54334j = comparator;
        c10564zF.putAll(interfaceC7896jG);
        return new G9((InterfaceC7896jG) c10564zF, (Deque) new ArrayDeque(this.f40405d));
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    public final Object clone() {
        return new G9(this.f40404c, this.f40405d);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean z10;
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            G9 g92 = (G9) obj;
            if (this.f40404c.equals(g92.f40404c)) {
                Deque deque = this.f40405d;
                Deque deque2 = g92.f40405d;
                if (deque == null || deque2 == null || deque.size() == deque2.size()) {
                    Iterator<E> it = deque.iterator();
                    Iterator<E> it2 = deque2.iterator();
                    while (it.hasNext()) {
                        if (it2.hasNext() && V30.a(it.next(), it2.next())) {
                        }
                    }
                    z10 = !it2.hasNext();
                    if (!z10) {
                        return true;
                    }
                }
                z10 = false;
                if (!z10) {
                }
            }
        }
        return false;
    }

    @Override
    public G9 g() {
        return this;
    }

    public int hashCode() {
        int hashCode = this.f40404c.hashCode() + 31;
        Iterator it = this.f40405d.iterator();
        while (it.hasNext()) {
            hashCode = (hashCode * 31) + ((S60) it.next()).hashCode();
        }
        return hashCode;
    }

    @Override
    public final String toString() {
        return getClass().getSimpleName();
    }

    @Override
    public final int y() {
        return 0;
    }

    public static class a {

        public static final boolean f40406e = true;

        public InterfaceC7896jG f40407a;

        public Deque f40408b;

        public boolean f40409c;

        public boolean f40410d;

        public a() {
            YB yb2 = G9.f40402e;
            this.f40407a = AbstractC8230lG.f49915a;
            this.f40408b = yb2;
            this.f40409c = false;
            this.f40410d = false;
        }

        public final void a(int i10) {
            if (!f40406e && this.f40408b != G9.f40402e) {
                throw new AssertionError();
            }
            if (i10 > 0) {
                this.f40408b = new ArrayDeque(i10);
            }
        }

        public final void b() {
            if (this.f40408b == G9.f40402e) {
                this.f40408b = new ArrayDeque();
            }
        }

        public final a a(InterfaceC8008jy interfaceC8008jy) {
            boolean z10 = f40406e;
            if (!z10 && this.f40410d) {
                throw new AssertionError();
            }
            int size = this.f40407a.size();
            if (!z10 && interfaceC8008jy.c()) {
                throw new AssertionError();
            }
            InterfaceC7896jG interfaceC7896jG = this.f40407a;
            YB yb2 = G9.f40402e;
            if (interfaceC7896jG == AbstractC8230lG.f49915a) {
                this.f40407a = new C10564zF();
            }
            I9.a(size, interfaceC8008jy, (C10564zF) this.f40407a);
            return this;
        }

        public final a a(Consumer consumer) {
            consumer.accept(this);
            return this;
        }

        public a a(S60 s60) {
            b();
            this.f40408b.addLast(s60);
            return this;
        }

        public a a(int i10, InterfaceC8008jy interfaceC8008jy) {
            this.f40410d = true;
            if (!f40406e && interfaceC8008jy.c()) {
                throw new AssertionError();
            }
            InterfaceC7896jG interfaceC7896jG = this.f40407a;
            YB yb2 = G9.f40402e;
            if (interfaceC7896jG == AbstractC8230lG.f49915a) {
                this.f40407a = new C10564zF();
            }
            I9.a(i10, interfaceC8008jy, (C10564zF) this.f40407a);
            return this;
        }

        public G9 a() {
            return new G9(this.f40407a, this.f40408b);
        }
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.O.a(this, w92);
        return 0;
    }

    public G9(C10564zF c10564zF, ArrayDeque arrayDeque) {
        this((InterfaceC7896jG) c10564zF, (Deque) arrayDeque);
        boolean z10 = f40403f;
        if (!z10 && c10564zF.isEmpty() && c10564zF != AbstractC8230lG.f49915a) {
            throw new AssertionError((Object) "Should use EMPTY_LOCALS instead");
        }
        if (!z10 && arrayDeque.isEmpty() && arrayDeque != f40402e) {
            throw new AssertionError((Object) "Should use EMPTY_STACK instead");
        }
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        Object[] objArr;
        int i10;
        Object[] objArr2;
        int size = this.f40405d.size();
        if (!f40403f && size != this.f40405d.size()) {
            throw new AssertionError();
        }
        if (size == 0) {
            objArr = null;
        } else {
            Object[] objArr3 = new Object[size];
            Iterator it = this.f40405d.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                objArr3[i11] = ((S60) it.next()).a(abstractC5308Hz, abstractC5308Hz2, abstractC10992r0);
                i11++;
            }
            objArr = objArr3;
        }
        if (this.f40404c.isEmpty()) {
            i10 = 0;
        } else {
            int d10 = this.f40404c.d();
            int i12 = 0;
            i10 = 0;
            while (i12 <= d10) {
                i10++;
                InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) this.f40404c.get(i12);
                if (interfaceC8008jy != null && interfaceC8008jy.n()) {
                    i12++;
                }
                i12++;
            }
        }
        if (i10 == 0) {
            objArr2 = null;
        } else {
            int d11 = this.f40404c.d();
            Object[] objArr4 = new Object[i10];
            int i13 = 0;
            int i14 = 0;
            while (i13 <= d11) {
                InterfaceC8008jy interfaceC8008jy2 = (InterfaceC8008jy) this.f40404c.get(i13);
                int i15 = i14 + 1;
                objArr4[i14] = interfaceC8008jy2 == null ? 0 : interfaceC8008jy2.a(abstractC5308Hz, abstractC5308Hz2, abstractC10992r0);
                if (interfaceC8008jy2 != null && interfaceC8008jy2.n()) {
                    i13++;
                }
                i13++;
                i14 = i15;
            }
            objArr2 = objArr4;
        }
        ex.a(-1, i10, objArr2, size, objArr);
    }

    public G9(InterfaceC7896jG interfaceC7896jG, Deque deque) {
        boolean z10 = f40403f;
        if (!z10) {
            I9.a(interfaceC7896jG);
        }
        if (!z10 && !deque.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.nonNull((S60) obj);
            }
        })) {
            throw new AssertionError();
        }
        this.f40404c = interfaceC7896jG;
        this.f40405d = deque;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        A30 it = this.f40404c.values().iterator();
        while (it.hasNext()) {
            a(abstractC4446f6, (InterfaceC8008jy) it.next());
            if (abstractC4446f6.f37178c.c()) {
                return;
            }
        }
        Iterator it2 = this.f40405d.iterator();
        while (it2.hasNext()) {
            a(abstractC4446f6, (InterfaceC8008jy) it2.next());
            if (abstractC4446f6.f37178c.c()) {
                return;
            }
        }
    }

    public static void a(AbstractC4446f6 abstractC4446f6, InterfaceC8008jy interfaceC8008jy) {
        com.android.tools.r8.graph.M2 m22;
        if (!f40403f && interfaceC8008jy.B()) {
            throw new AssertionError();
        }
        if (interfaceC8008jy.m()) {
            abstractC4446f6.f(interfaceC8008jy.b().f39470c);
        } else {
            if (!interfaceC8008jy.y() || (m22 = interfaceC8008jy.z().f47808d) == null) {
                return;
            }
            abstractC4446f6.f(m22);
        }
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        c7607hb.a(this);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, this);
    }

    public static S60 a(AbstractC6668bv0 abstractC6668bv0, AbstractC6668bv0 abstractC6668bv02, com.android.tools.r8.graph.M2 m22) {
        abstractC6668bv0.getClass();
        if (abstractC6668bv0 instanceof C7501gv0) {
            abstractC6668bv02.getClass();
            if (abstractC6668bv02 instanceof C7501gv0) {
                return InterfaceC8008jy.b(m22);
            }
        }
        if (abstractC6668bv0 instanceof C7167ev0) {
            abstractC6668bv02.getClass();
            if ((abstractC6668bv02 instanceof C7167ev0) && abstractC6668bv0.H() == abstractC6668bv02.H()) {
                return InterfaceC8008jy.b(m22);
            }
        }
        return abstractC6668bv02;
    }

    public G9 a(Function<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> function) {
        HH it = this.f40404c.o().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) this.f40404c.get(((Integer) it.next()).intValue());
            z10 = interfaceC8008jy != interfaceC8008jy.a(function);
            if (z10) {
                break;
            }
        }
        if (!z10) {
            for (S60 s60 : this.f40405d) {
                z10 = s60 != s60.a((Function) function);
                if (z10) {
                    break;
                }
            }
        }
        if (!z10) {
            return this;
        }
        a V10 = V();
        InterfaceC9861v30 it2 = this.f40404c.b().iterator();
        while (it2.hasNext()) {
            EF ef2 = (EF) it2.next();
            InterfaceC8008jy interfaceC8008jy2 = (InterfaceC8008jy) ef2.getValue();
            if (interfaceC8008jy2.r()) {
                if (f40403f) {
                    continue;
                } else {
                    int a10 = ef2.a();
                    if (!a.f40406e && !V10.f40407a.a(a10)) {
                        throw new AssertionError();
                    }
                    if (((InterfaceC8008jy) V10.f40407a.get(a10)) != interfaceC8008jy2) {
                        throw new AssertionError();
                    }
                }
            } else {
                V10.a(ef2.a(), interfaceC8008jy2.a(function));
            }
        }
        for (S60 s602 : this.f40405d) {
            if (!f40403f && s602.r()) {
                throw new AssertionError();
            }
            V10.a(s602.a((Function) function));
        }
        return V10.a();
    }
}
