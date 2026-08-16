package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.G9;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;

public final class C8121kg extends H9 {

    public static final boolean f49708f = true;

    public final C10564zF f49709c;

    public final ArrayDeque f49710d;

    public int f49711e;

    public C8121kg() {
        this(new C10564zF(), new ArrayDeque(), 0);
    }

    public static C7667hv a(int i10, S60 s60, S60 s602) {
        return new C7667hv("Cannot join stacks, expected frame types at stack index " + i10 + " to join to a precise (non-top) type, but types " + C7667hv.a(1, s60) + " and " + C7667hv.a(1, s602) + " do not");
    }

    @Override
    public final H9 b(O8 o82, G9 g92) {
        AbstractC6376a9 a10 = o82.e().a(this.f49709c, g92.f40404c);
        return a10 instanceof C6543b9 ? new C7667hv(a10.a().f46711a) : this;
    }

    @Override
    public final H9 c(O8 o82, G9 g92) {
        AbstractC6376a9 a10 = o82.e().a(this.f49710d, g92.f40405d);
        return a10 instanceof C6543b9 ? new C7667hv(a10.a().f46711a) : this;
    }

    @Override
    public final D1 mo697clone() {
        return new C8121kg(this.f49709c.m744clone(), this.f49710d.m1754clone(), this.f49711e);
    }

    @Override
    public final C8121kg d() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005b A[RETURN] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean z10;
        if (this == obj) {
            return true;
        }
        if (obj != null && C8121kg.class == obj.getClass()) {
            C8121kg c8121kg = (C8121kg) obj;
            if (this.f49709c.equals(c8121kg.f49709c)) {
                ArrayDeque arrayDeque = this.f49710d;
                ArrayDeque arrayDeque2 = c8121kg.f49710d;
                if (arrayDeque == null || arrayDeque2 == null || arrayDeque.size() == arrayDeque2.size()) {
                    Iterator<E> it = arrayDeque.iterator();
                    Iterator<E> it2 = arrayDeque2.iterator();
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
    public final H9 f() {
        return C9038q7.f51720c;
    }

    @Override
    public final H9 g() {
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8121kg.b((H9) obj, (S60) obj2);
            }
        });
    }

    public final int hashCode() {
        return Objects.hash(this.f49709c, this.f49710d);
    }

    public C8121kg(C10564zF c10564zF, ArrayDeque arrayDeque, int i10) {
        if (!f49708f) {
            I9.a(c10564zF);
        }
        this.f49709c = c10564zF;
        this.f49710d = arrayDeque;
        this.f49711e = i10;
    }

    @Override
    public final Object mo697clone() {
        return new C8121kg(this.f49709c.m744clone(), this.f49710d.m1754clone(), this.f49711e);
    }

    public static C7667hv a(S60 s60) {
        return new C7667hv("Unexpected attempt to initialize " + C7667hv.a(1, s60));
    }

    public static H9 b(H9 h92, S60 s60) {
        boolean z10;
        if (!s60.F()) {
            z10 = false;
        } else if (s60.d()) {
            z10 = true;
        } else if (s60.B()) {
            z10 = s60.p().f39161c.r();
        } else {
            if (!f49708f && !s60.m()) {
                throw new AssertionError();
            }
            z10 = s60.b().f39470c.E0();
        }
        return z10 ? h92 : H9.a(C7667hv.a(1, s60), "an array type", "on stack");
    }

    @Override
    public final H9 a(O8 o82, G9 g92) {
        G9.a V10 = G9.V();
        V10.f40407a = this.f49709c;
        V10.f40408b = this.f49710d;
        G9 a10 = V10.a();
        C6876d9 e10 = o82.e();
        e10.getClass();
        AbstractC6376a9 a11 = e10.a(a10.f40404c, g92.f40404c);
        if (a11 instanceof C6709c9) {
            a11 = e10.a(a10.f40405d, g92.f40405d);
        }
        if (a11 instanceof C6543b9) {
            return new C7667hv(a11.a().f46711a);
        }
        if (o82.b()) {
            return this;
        }
        G9 X10 = g92.X();
        if (G9.f40403f || (X10.f40404c instanceof C10564zF)) {
            return new C8121kg((C10564zF) X10.f40404c, X10.W(), this.f49711e);
        }
        throw new AssertionError();
    }

    public final C7667hv b(O8 o82, S60 s60) {
        return new C7667hv("The max stack height of " + o82.a() + " is violated when pushing " + C7667hv.a(1, s60) + " to existing stack of size " + this.f49711e);
    }

    public static void b(int i10, G9.a aVar) {
        boolean z10 = f49708f;
        if (!z10 && aVar.f40407a.a(i10)) {
            throw new AssertionError();
        }
        if (!z10) {
            if (aVar.f40407a.a(i10 + 1)) {
                throw new AssertionError();
            }
        }
        a(i10, aVar);
        a(i10 + 1, aVar);
    }

    @Override
    public final H9 a(AbstractC6668bv0 abstractC6668bv0, com.android.tools.r8.graph.M2 m22) {
        abstractC6668bv0.getClass();
        C8394mF c8394mF = new C8394mF(((C7893jF) this.f49709c.b()).f49199c);
        while (c8394mF.hasNext()) {
            C8227lF a10 = c8394mF.a();
            InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) a10.getValue();
            if (interfaceC8008jy.t()) {
                a10.setValue(G9.a(abstractC6668bv0, interfaceC8008jy.E(), m22));
            }
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        Iterator it = this.f49710d.iterator();
        while (it.hasNext()) {
            S60 s60 = (S60) it.next();
            if (s60.t()) {
                s60 = G9.a(abstractC6668bv0, s60.E(), m22);
            }
            arrayDeque.addLast(s60);
        }
        return new C8121kg(this.f49709c, arrayDeque, this.f49711e);
    }

    public final void a(Consumer consumer, C8570nJ c8570nJ) {
        if (!this.f49710d.isEmpty()) {
            consumer.accept((S60) this.f49710d.peekLast());
        } else if (!f49708f && !c8570nJ.F().f50836P) {
            throw new AssertionError();
        }
    }

    public final void a(int i10, Consumer consumer, C8570nJ c8570nJ) {
        if (this.f49710d.size() >= i10) {
            ArrayDeque arrayDeque = new ArrayDeque(i10);
            Iterator descendingIterator = this.f49710d.descendingIterator();
            while (descendingIterator.hasNext() && i10 > 0) {
                arrayDeque.addFirst((S60) descendingIterator.next());
                i10--;
            }
            consumer.accept(arrayDeque);
            return;
        }
        if (!f49708f && !c8570nJ.F().f50836P) {
            throw new AssertionError();
        }
    }

    @Override
    public final H9 a(BiFunction biFunction) {
        if (this.f49710d.isEmpty()) {
            return new C7667hv("Unexpected pop from empty stack");
        }
        S60 s60 = (S60) this.f49710d.removeLast();
        this.f49711e -= s60.v();
        return (H9) biFunction.apply(this, s60);
    }

    @Override
    public final H9 a(final com.android.tools.r8.graph.A2 a22, final O8 o82) {
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8121kg.this.a(a22, o82, (H9) obj, (S60) obj2);
            }
        });
    }

    public final H9 a(com.android.tools.r8.graph.A2 a22, O8 o82, H9 h92, S60 s60) {
        com.android.tools.r8.graph.M2 j10;
        if (s60.t()) {
            if (s60.i()) {
                if (a22.s0() == o82.c().s0() || o82.a(a22.s0())) {
                    return h92.a(s60.s(), o82.c().s0());
                }
            } else if (s60.y() && a22.s0() == (j10 = s60.j())) {
                return h92.a(s60.z(), j10);
            }
            boolean z10 = f49708f;
            if (!z10 && !s60.t()) {
                throw new AssertionError();
            }
            StringBuilder sb2 = new StringBuilder("Constructor mismatch, expected constructor from ");
            if (s60.y()) {
                com.android.tools.r8.graph.M2 j11 = s60.j();
                sb2.append(j11 == null ? "null" : j11.D0());
            } else {
                if (!z10 && !s60.i()) {
                    throw new AssertionError();
                }
                sb2.append(o82.c().s0().D0());
                sb2.append(" or its superclass");
            }
            sb2.append(", but was ");
            sb2.append(a22.a(true, false));
            return new C7667hv(sb2.toString());
        }
        return a(s60);
    }

    @Override
    public final H9 a(final C4798y c4798y, final com.android.tools.r8.graph.M2 m22, O8 o82, final BiFunction biFunction) {
        final C6876d9 e10 = o82.e();
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8121kg.a(C4798y.this, e10, m22, biFunction, (H9) obj, (S60) obj2);
            }
        });
    }

    public static H9 a(C4798y c4798y, C6876d9 c6876d9, com.android.tools.r8.graph.M2 m22, BiFunction biFunction, H9 h92, S60 s60) {
        if (s60.isInitialized() && c6876d9.b(s60.a(c4798y.b()), m22)) {
            return (H9) biFunction.apply(h92, s60);
        }
        return H9.a(C7667hv.a(1, s60), C7667hv.a(2, InterfaceC8008jy.a(m22)), "on stack");
    }

    @Override
    public final H9 a(C4798y c4798y, O8 o82, com.android.tools.r8.graph.M2... m2Arr) {
        H9 h92 = this;
        for (int length = m2Arr.length - 1; length >= 0; length--) {
            h92 = h92.a(c4798y, o82, m2Arr[length]);
        }
        return h92;
    }

    @Override
    public final H9 a(O8 o82, com.android.tools.r8.graph.M2 m22) {
        return a(o82, InterfaceC8008jy.a(m22));
    }

    @Override
    public final H9 a(O8 o82, AbstractC8999pu0 abstractC8999pu0) {
        S60 cd2;
        int i10 = InterfaceC8008jy.f49436a;
        if (abstractC8999pu0.x()) {
            cd2 = InterfaceC8008jy.a(abstractC8999pu0.c().D().charAt(0));
        } else {
            AbstractC6450ae0 d10 = abstractC8999pu0.d();
            d10.getClass();
            boolean z10 = d10 instanceof C6301Zd0;
            if (z10) {
                cd2 = C8353m10.f50176c;
            } else {
                if (!AbstractC7841iy.f49127a && z10) {
                    throw new AssertionError();
                }
                cd2 = new CD(d10);
            }
        }
        return a(o82, cd2);
    }

    @Override
    public final H9 a(O8 o82, S60 s60) {
        int v10 = s60.v() + this.f49711e;
        if (v10 > o82.a()) {
            return b(o82, s60);
        }
        this.f49710d.addLast(s60);
        this.f49711e = v10;
        return this;
    }

    @Override
    public final H9 a(C5020Da c5020Da, com.android.tools.r8.graph.M2 m22) {
        C10564zF c10564zF = this.f49709c;
        C7401gI c7401gI = c10564zF.f54334j;
        C10564zF c10564zF2 = new C10564zF();
        c10564zF2.f54334j = c7401gI;
        c10564zF2.putAll(c10564zF);
        return new C8121kg(c10564zF2, new ArrayDeque(), 0).a(c5020Da, InterfaceC8008jy.b(m22));
    }

    @Override
    public final H9 a(C4798y c4798y, O8 o82, int i10, EnumC5477Kw0 enumC5477Kw0, BiFunction biFunction) {
        InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) this.f49709c.get(i10);
        if (interfaceC8008jy == null) {
            return new C7667hv("Unexpected read of missing local at index " + i10);
        }
        if (interfaceC8008jy.isInitialized()) {
            C6876d9 e10 = o82.e();
            if (e10.b(interfaceC8008jy.a(c4798y.b()), enumC5477Kw0.a(e10.f47301b))) {
                return (H9) biFunction.apply(this, interfaceC8008jy);
            }
        } else if (interfaceC8008jy.t() && enumC5477Kw0.a()) {
            return (H9) biFunction.apply(this, interfaceC8008jy);
        }
        return H9.a(interfaceC8008jy, enumC5477Kw0, i10);
    }

    @Override
    public final H9 a(int i10, S60 s60, O8 o82) {
        if (C8704o7.a(s60.n()) + i10 >= o82.d()) {
            StringBuilder sb2 = new StringBuilder("The max locals of ");
            sb2.append(o82.d());
            sb2.append(" is violated when storing ");
            sb2.append(C7667hv.a(1, s60));
            sb2.append(" at local index ");
            sb2.append(i10);
            if (s60.n()) {
                sb2.append(" and ");
                sb2.append(i10 + 1);
            }
            return new C7667hv(sb2.toString());
        }
        I9.a(i10, s60, this.f49709c);
        return this;
    }

    public static void a(int i10, AbstractC5247Gx0 abstractC5247Gx0, InterfaceC9861v30 interfaceC9861v30) {
        boolean z10 = f49708f;
        if (!z10 && !interfaceC9861v30.hasNext()) {
            throw new AssertionError();
        }
        EF ef2 = (EF) interfaceC9861v30.next();
        int a10 = ef2.a();
        if (!z10 && a10 != i10 + 1) {
            throw new AssertionError();
        }
        InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) ef2.getValue();
        if (!z10 && interfaceC8008jy != abstractC5247Gx0.I()) {
            throw new AssertionError();
        }
    }

    public static void a(InterfaceC9861v30 interfaceC9861v30, EF ef2, G9.a aVar, UnaryOperator unaryOperator) {
        int a10 = ef2.a();
        InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) ef2.getValue();
        boolean z10 = f49708f;
        if (!z10 && interfaceC8008jy.r()) {
            throw new AssertionError();
        }
        if (interfaceC8008jy.g()) {
            a(a10, interfaceC8008jy.e(), interfaceC9861v30);
        }
        InterfaceC8008jy interfaceC8008jy2 = (InterfaceC8008jy) unaryOperator.apply(interfaceC8008jy);
        if (!z10 && interfaceC8008jy2.a() != interfaceC8008jy.a()) {
            throw new AssertionError();
        }
        if (!interfaceC8008jy2.f() && !interfaceC8008jy2.c()) {
            aVar.a(a10, interfaceC8008jy2);
        } else if (interfaceC8008jy2.a()) {
            a(a10, aVar);
        } else {
            b(a10, aVar);
        }
    }

    public static void a(int i10, G9.a aVar) {
        if (!f49708f && aVar.f40407a.a(i10)) {
            throw new AssertionError();
        }
        int i11 = InterfaceC8008jy.f49436a;
        aVar.a(i10, C7028e40.f47586c);
    }

    public final C7667hv a(C4798y c4798y, ArrayDeque arrayDeque, G9.a aVar) {
        S60 k10;
        Iterator it = this.f49710d.iterator();
        Iterator<E> it2 = arrayDeque.iterator();
        int i10 = 0;
        while (it.hasNext() && it2.hasNext()) {
            S60 s60 = (S60) it.next();
            S60 s602 = (S60) it2.next();
            if (s60.a() != s602.a()) {
                return new C7667hv("Cannot join stacks, expected frame types at stack index " + i10 + " to have the same width, but was: " + C7667hv.a(1, s60) + " and " + C7667hv.a(1, s602));
            }
            if (s60.a()) {
                InterfaceC8008jy a10 = s60.x().a(c4798y, s602.x());
                if (((O5) a10) instanceof C7028e40) {
                    return a(i10, s60, s602);
                }
                if (!f49708f && !a10.D()) {
                    throw new AssertionError();
                }
                k10 = a10.k();
            } else {
                InterfaceC8008jy a11 = s60.u().a(s602.u());
                if (((O5) a11) instanceof C9163qt0) {
                    return a(i10, s60, s602);
                }
                if (!f49708f && !a11.D()) {
                    throw new AssertionError();
                }
                k10 = a11.k();
            }
            aVar.a(k10);
            i10++;
        }
        if (it.hasNext() || it2.hasNext()) {
            return new C7667hv("Cannot join stacks of different size");
        }
        return null;
    }
}
