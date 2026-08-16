package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.Objects;

public final class A3 {

    public static final A3 f38515e = new A3(false, null, UG.f44715a, AbstractC8902pI.f51489a);

    public static final boolean f38516f = true;

    public final boolean f38517a;

    public final com.android.tools.r8.graph.M2 f38518b;

    public final Q f38519c;

    public final W f38520d;

    /* JADX WARN: Multi-variable type inference failed */
    public A3(boolean z10, com.android.tools.r8.graph.M2 m22, SG sg2, InterfaceC8568nI interfaceC8568nI) {
        this.f38517a = z10;
        this.f38518b = m22;
        this.f38519c = (Q) sg2;
        this.f38520d = (W) interfaceC8568nI;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
    
        if ((r2 instanceof com.android.tools.r8.graph.proto.i) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static A3 a(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.proto.j jVar) {
        if (jVar.c()) {
            return f38515e;
        }
        com.android.tools.r8.graph.proto.c cVar = jVar.f37623b;
        final boolean z10 = cVar.f37607d;
        if (!f38516f && z10) {
            if (!h52.d().w0()) {
                com.android.tools.r8.graph.proto.b a10 = cVar.a(0);
                a10.getClass();
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 e10 = jVar.b() ? jVar.f37624c.e() : null;
        final C6899dH c6899dH = new C6899dH(16);
        final C6901dI c6901dI = new C6901dI(16);
        cVar.a(new ZH() {
            @Override
            public final void a(int i10, Object obj) {
                A3.a(z10, h52, c6901dI, c6899dH, i10, (com.android.tools.r8.graph.proto.b) obj);
            }
        });
        return new A3(z10, e10, c6899dH, c6901dI);
    }

    public final boolean equals(Object obj) {
        if (obj != null && A3.class == obj.getClass()) {
            A3 a32 = (A3) obj;
            if (this.f38517a == a32.f38517a && this.f38518b == a32.f38518b && this.f38519c.equals(a32.f38519c) && this.f38520d.equals(a32.f38520d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f38517a), this.f38518b, this.f38519c, this.f38520d);
    }

    public static void a(boolean z10, com.android.tools.r8.graph.H5 h52, InterfaceC8568nI interfaceC8568nI, SG sg2, int i10, com.android.tools.r8.graph.proto.b bVar) {
        bVar.getClass();
        if (bVar instanceof com.android.tools.r8.graph.proto.i) {
            if (!f38516f && !z10) {
                throw new AssertionError();
            }
            return;
        }
        C4516j1 d10 = h52.d();
        if (!C4516j1.f37313x && i10 < (!d10.w0() ? 1 : 0)) {
            throw new AssertionError();
        }
        int i11 = i10 - (!d10.w0() ? 1 : 0);
        boolean z11 = f38516f;
        if (!z11 && i11 < 0) {
            throw new AssertionError();
        }
        if (bVar.c()) {
            interfaceC8568nI.add(i11);
        } else {
            if (!z11 && !(bVar instanceof com.android.tools.r8.graph.proto.k)) {
                throw new AssertionError();
            }
            sg2.a(i11, bVar.b().e());
        }
    }
}
