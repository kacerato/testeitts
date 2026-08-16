package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import org.objectweb.asm.Opcodes;

public final class C5313Ib implements InterfaceC5580Mq0<C5313Ib> {

    public static final C5313Ib f41132c;

    public static final C5313Ib f41133d;

    public static final C5313Ib f41134e;

    public static final C5313Ib f41135f;

    public static final C5313Ib f41136g;

    public static final C5313Ib f41137h;

    public static final C5313Ib f41138i;

    public static final C5313Ib f41139j;

    public static final C5313Ib f41140k;

    public static final C5313Ib f41141l;

    public static final C5313Ib f41142m;

    public static final C5313Ib f41143n;

    public static final C5313Ib f41144o;

    public static final C5313Ib[] f41145p;

    public static final boolean f41146q = true;

    public final int f41147b;

    static {
        C5313Ib c5313Ib = new C5313Ib(Opcodes.V1_1);
        f41132c = c5313Ib;
        C5313Ib c5313Ib2 = new C5313Ib(46);
        f41133d = c5313Ib2;
        C5313Ib c5313Ib3 = new C5313Ib(47);
        C5313Ib c5313Ib4 = new C5313Ib(48);
        f41134e = c5313Ib4;
        C5313Ib c5313Ib5 = new C5313Ib(49);
        f41135f = c5313Ib5;
        C5313Ib c5313Ib6 = new C5313Ib(50);
        f41136g = c5313Ib6;
        C5313Ib c5313Ib7 = new C5313Ib(51);
        f41137h = c5313Ib7;
        C5313Ib c5313Ib8 = new C5313Ib(52);
        f41138i = c5313Ib8;
        C5313Ib c5313Ib9 = new C5313Ib(53);
        f41139j = c5313Ib9;
        C5313Ib c5313Ib10 = new C5313Ib(54);
        C5313Ib c5313Ib11 = new C5313Ib(55);
        f41140k = c5313Ib11;
        C5313Ib c5313Ib12 = new C5313Ib(56);
        C5313Ib c5313Ib13 = new C5313Ib(57);
        C5313Ib c5313Ib14 = new C5313Ib(58);
        C5313Ib c5313Ib15 = new C5313Ib(59);
        f41141l = c5313Ib15;
        C5313Ib c5313Ib16 = new C5313Ib(60);
        C5313Ib c5313Ib17 = new C5313Ib(61);
        C5313Ib c5313Ib18 = new C5313Ib(62);
        C5313Ib c5313Ib19 = new C5313Ib(63);
        C5313Ib c5313Ib20 = new C5313Ib(64);
        C5313Ib c5313Ib21 = new C5313Ib(65);
        C5313Ib c5313Ib22 = new C5313Ib(66);
        C5313Ib c5313Ib23 = new C5313Ib(67);
        f41142m = c5313Ib23;
        C5313Ib c5313Ib24 = new C5313Ib(68);
        f41143n = c5313Ib24;
        f41144o = new C5313Ib(69);
        f41145p = new C5313Ib[]{c5313Ib, c5313Ib2, c5313Ib3, c5313Ib4, c5313Ib5, c5313Ib6, c5313Ib7, c5313Ib8, c5313Ib9, c5313Ib10, c5313Ib11, c5313Ib12, c5313Ib13, c5313Ib14, c5313Ib15, c5313Ib16, c5313Ib17, c5313Ib18, c5313Ib19, c5313Ib20, c5313Ib21, c5313Ib22, c5313Ib23, c5313Ib24};
    }

    public C5313Ib(int i10) {
        this.f41147b = i10;
    }

    public static C5313Ib a(int i10) {
        return new C5313Ib(i10);
    }

    @Override
    public final C5313Ib E() {
        return this;
    }

    public int b() {
        return this.f41147b & 65535;
    }

    public int c() {
        return this.f41147b >>> 16;
    }

    public int d() {
        return this.f41147b;
    }

    public final boolean equals(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public final int hashCode() {
        boolean z10 = C7713iA.f48866c;
        return C7713iA.a(this, m());
    }

    @Override
    public final InterfaceC5638Nq0<C5313Ib> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C5313Ib.a(abstractC5754Pq0);
            }
        };
    }

    public String toString() {
        if (c() == 0) {
            int b10 = b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(b10);
            return sb2.toString();
        }
        return b() + "." + c();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((C5313Ib) obj).b();
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((C5313Ib) obj).c();
            }
        });
    }

    public static Iterable<C5313Ib> c(final C5313Ib c5313Ib, final C5313Ib c5313Ib2) {
        boolean z10 = f41146q;
        if (!z10 && !c5313Ib.e(c5313Ib2)) {
            throw new AssertionError();
        }
        if (!z10 && c5313Ib.c() == 65535) {
            throw new AssertionError((Object) "This method does not handle preview versions");
        }
        if (!z10 && c5313Ib2.c() == 65535) {
            throw new AssertionError((Object) "This method does not handle preview versions");
        }
        return (Iterable) Arrays.stream(f41145p).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean d10;
                d10 = ((C5313Ib) obj).d(C5313Ib.this);
                return d10;
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean e10;
                e10 = ((C5313Ib) obj).e(C5313Ib.this);
                return e10;
            }
        }).collect(Collectors.toList());
    }

    public static Iterable<C5313Ib> a() {
        C5313Ib[] c5313IbArr = f41145p;
        return c(c5313IbArr[0], c5313IbArr[23]);
    }
}
