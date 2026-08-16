package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Arrays;
import java.util.Deque;
import java.util.Iterator;

public class C6876d9 {

    public static final boolean f47299c = true;

    public final C4798y f47300a;

    public final C4724u1 f47301b;

    public C6876d9(C4798y c4798y) {
        this.f47300a = c4798y;
        this.f47301b = c4798y.b();
    }

    public boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return true;
    }

    public final boolean b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        boolean z10 = f47299c;
        if (!z10 && m23.N0()) {
            throw new AssertionError();
        }
        C4724u1 c4724u1 = this.f47301b;
        if (m22.F0() || m22.G0() || m22.H0() || m22.L0() || m22.R0()) {
            m22 = c4724u1.f37884J1;
        }
        C4724u1 c4724u12 = this.f47301b;
        if (m23.F0() || m23.G0() || m23.H0() || m23.L0() || m23.R0()) {
            m23 = c4724u12.f37884J1;
        }
        if (m22 == m23) {
            return true;
        }
        if (m22.P0() || m23.P0()) {
            return false;
        }
        if (!z10 && !m22.Q0()) {
            throw new AssertionError();
        }
        if (!z10 && !m23.Q0()) {
            throw new AssertionError();
        }
        if (m23 == this.f47301b.f38068i2 || m22.N0()) {
            return true;
        }
        if (m23.E0()) {
            return m22.E0() && b(m22.a(1, this.f47301b), m23.a(1, this.f47301b));
        }
        if (!z10 && !m23.I0()) {
            throw new AssertionError();
        }
        if (m22.E0()) {
            C4724u1 c4724u13 = this.f47301b;
            return m23 == c4724u13.f38048f6 || m23 == c4724u13.f38032d6;
        }
        if (z10 || m22.I0()) {
            return a(m22, m23);
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(InterfaceC8008jy interfaceC8008jy, InterfaceC8008jy interfaceC8008jy2) {
        if (interfaceC8008jy.a() != interfaceC8008jy2.a()) {
            return false;
        }
        if (interfaceC8008jy.a()) {
            InterfaceC5225Gm0 x10 = interfaceC8008jy.x();
            InterfaceC8008jy x11 = interfaceC8008jy2.x();
            if (!x10.equals(x11)) {
                O5 o52 = (O5) x11;
                o52.getClass();
                if (!(o52 instanceof C7028e40)) {
                    O5 o53 = (O5) x10;
                    if (o53 instanceof C7028e40) {
                        return false;
                    }
                    if ((o53 instanceof C7167ev0) && (o52 instanceof C7167ev0)) {
                        com.android.tools.r8.graph.M2 j10 = x10.j();
                        com.android.tools.r8.graph.M2 j11 = x11.j();
                        return j10 == null || j11 == null || j10 == j11;
                    }
                    if (x11.isPrimitive()) {
                        return x10.isPrimitive() && x10.l().I() && x11.l().I();
                    }
                    if (!x10.isPrimitive() && x11.isInitialized()) {
                        if (x10.isInitialized()) {
                            return b(x10.h().a(this.f47301b), x11.h().a(this.f47301b));
                        }
                        if (x11.h().a(this.f47301b) == this.f47301b.f38068i2) {
                            return true;
                        }
                    }
                    return false;
                }
            }
            return true;
        }
        InterfaceC5189Fx0 u10 = interfaceC8008jy.u();
        InterfaceC5189Fx0 u11 = interfaceC8008jy2.u();
        if (!f47299c) {
            O5 o54 = (O5) u10;
            o54.getClass();
            if (o54 instanceof C9163qt0) {
                throw new AssertionError();
            }
        }
        return u10.a(u11) == u11;
    }

    public final AbstractC6376a9 a(InterfaceC7896jG interfaceC7896jG, InterfaceC7896jG interfaceC7896jG2) {
        InterfaceC8008jy interfaceC8008jy;
        InterfaceC8008jy interfaceC8008jy2;
        int max = Math.max(interfaceC7896jG.isEmpty() ? -1 : interfaceC7896jG.d(), interfaceC7896jG2.isEmpty() ? -1 : interfaceC7896jG2.d());
        for (int i10 = 0; i10 <= max; i10++) {
            if (interfaceC7896jG.a(i10)) {
                interfaceC8008jy = (InterfaceC8008jy) interfaceC7896jG.get(i10);
            } else {
                int i11 = InterfaceC8008jy.f49436a;
                interfaceC8008jy = C7028e40.f47586c;
            }
            if (interfaceC7896jG2.a(i10)) {
                interfaceC8008jy2 = (InterfaceC8008jy) interfaceC7896jG2.get(i10);
            } else {
                int i12 = InterfaceC8008jy.f49436a;
                interfaceC8008jy2 = C7028e40.f47586c;
            }
            if (interfaceC8008jy.n() && interfaceC8008jy2.f()) {
                int i13 = InterfaceC8008jy.f49436a;
                interfaceC8008jy2 = C9163qt0.f51907c;
            }
            if (!a(interfaceC8008jy, interfaceC8008jy2)) {
                return a(interfaceC7896jG, interfaceC7896jG2, interfaceC8008jy, interfaceC8008jy2, i10);
            }
        }
        return new C6709c9();
    }

    public static C6543b9 a(InterfaceC7896jG interfaceC7896jG, InterfaceC7896jG interfaceC7896jG2, InterfaceC8008jy interfaceC8008jy, InterfaceC8008jy interfaceC8008jy2, int i10) {
        return new C6543b9("Could not assign '" + TU.a(interfaceC7896jG) + "' to '" + TU.a(interfaceC7896jG2) + "'. The local at index " + i10 + " with '" + ((Object) interfaceC8008jy) + "' not being assignable to '" + ((Object) interfaceC8008jy2) + "'");
    }

    public final AbstractC6376a9 a(Deque deque, Deque deque2) {
        if (deque.size() != deque2.size()) {
            return new C6543b9("Source stack " + Arrays.toString(deque.toArray()) + " and destination stack " + Arrays.toString(deque2.toArray()) + " is not the same size");
        }
        Iterator it = deque2.iterator();
        Iterator it2 = deque.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            S60 s60 = (S60) it2.next();
            S60 s602 = (S60) it.next();
            if (!a(s60, s602)) {
                return new C6543b9("Could not assign '" + Arrays.toString(deque.toArray()) + "' to '" + Arrays.toString(deque2.toArray()) + "'. The stack value at index " + i10 + " (from top) with '" + ((Object) s60) + "' not being assignable to '" + ((Object) s602) + "'");
            }
            i10++;
        }
        return new C6709c9();
    }
}
