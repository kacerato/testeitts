package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.AbstractC11147c3;
import com.android.tools.r8.shaking.AbstractC11250i4;
import com.android.tools.r8.shaking.C11334n4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public abstract class BV {

    public static final boolean f38929a = true;

    /* JADX WARN: Removed duplicated region for block: B:125:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0255 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x005b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List a(com.android.tools.r8.shaking.G3 g32, ArrayList arrayList) {
        List<com.android.tools.r8.shaking.R3> g10;
        AbstractC11250i4 abstractC11250i4;
        com.android.tools.r8.shaking.K3 k32 = (com.android.tools.r8.shaking.K3) ((C8699o50) C9073qK.a((Iterable) arrayList)).b();
        List<AbstractC11250i4> b10 = k32.b();
        AbstractC11147c3 c10 = k32.c();
        List list = k32.f57286j;
        AbstractC11250i4 e10 = k32.e();
        int a10 = JK.a(g32.E().g().iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.shaking.R3) obj).j();
            }
        });
        com.android.tools.r8.shaking.R3 r32 = a10 >= 0 ? (com.android.tools.r8.shaking.R3) k32.f57289m.get(a10) : null;
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return (com.android.tools.r8.shaking.K3) ((C8699o50) obj).b();
            }
        };
        Iterator it = arrayList.subList(Math.min(arrayList.size(), 1), arrayList.size()).iterator();
        it.getClass();
        while (it.hasNext()) {
            com.android.tools.r8.shaking.K3 k33 = (com.android.tools.r8.shaking.K3) interfaceC5422Jy.apply(it.next());
            boolean z10 = f38929a;
            if (!z10 && k33.i() != k32.i()) {
                throw new AssertionError();
            }
            if (!z10 && k33.f57278b != k32.f57278b) {
                throw new AssertionError();
            }
            if (!z10 && k33.j() != k32.j()) {
                throw new AssertionError();
            }
            if (!z10 && k33.a() != k32.a()) {
                throw new AssertionError();
            }
            if (!z10 && k33.h() != k32.h()) {
                throw new AssertionError();
            }
            if (!z10 && Boolean.valueOf(k33.f57283g) != Boolean.valueOf(k32.f57283g)) {
                throw new AssertionError();
            }
            if (!z10 && k33.d() != k32.d()) {
                throw new AssertionError();
            }
            if (!z10 && Boolean.valueOf(k33.f()) != Boolean.valueOf(k32.f())) {
                throw new AssertionError();
            }
            if (!z10 && k33.D() != k32.D()) {
                throw new AssertionError();
            }
            if (!z10 && k33.C() != k32.C()) {
                throw new AssertionError();
            }
            if (k33.b() == b10 && k33.c().equals(c10) && k33.f57286j == list && Objects.equals(k33.e(), e10)) {
                if (r32 != null) {
                    com.android.tools.r8.shaking.R3 r33 = (com.android.tools.r8.shaking.R3) k33.f57289m.get(a10);
                    if (!z10 && r32.b() != r33.b()) {
                        throw new AssertionError();
                    }
                    if (!z10 && r32.f() != r33.f()) {
                        throw new AssertionError();
                    }
                    if (!z10 && r32.h() != r33.h()) {
                        throw new AssertionError();
                    }
                    if (!z10 && r32.g() != r33.g()) {
                        throw new AssertionError();
                    }
                    if (r32.c() == r33.c() && r32.e().equals(r33.e()) && r32.d() == r33.d()) {
                        if (r32.f56924e != null) {
                            AbstractC11250i4 i10 = r32.i();
                            AbstractC11250i4 i11 = r33.i();
                            if (!z10) {
                                i11.getClass();
                                if (i11 instanceof C11334n4) {
                                    throw new AssertionError();
                                }
                            }
                            i10.getClass();
                            if (i10 instanceof AbstractC11250i4.b) {
                                i11.getClass();
                                if (i11 instanceof AbstractC11250i4.b) {
                                    i10 = new C11334n4(C4875Al0.b(i10.b(), i11.b()));
                                    if (i10 != null) {
                                        abstractC11250i4 = i10;
                                    }
                                }
                                i10 = null;
                                if (i10 != null) {
                                }
                            } else {
                                if (i10 instanceof C11334n4) {
                                    i11.getClass();
                                    if (i11 instanceof AbstractC11250i4.b) {
                                        i10.c().add(i11.b());
                                        if (i10 != null) {
                                        }
                                    }
                                }
                                i10 = null;
                                if (i10 != null) {
                                }
                            }
                            if (r32 == null) {
                            }
                        } else {
                            abstractC11250i4 = null;
                        }
                        r32 = new com.android.tools.r8.shaking.R3(r32.c(), r32.b(), r32.f(), r32.h(), abstractC11250i4, r32.e(), r32.d(), r32.g());
                        if (r32 == null) {
                        }
                    }
                    r32 = null;
                    if (r32 == null) {
                    }
                }
            }
            return arrayList;
        }
        if (r32 != null) {
            ArrayList arrayList2 = new ArrayList(k32.g());
            arrayList2.set(a10, r32);
            g10 = arrayList2;
        } else {
            g10 = k32.g();
        }
        C8699o50 c8699o50 = new C8699o50((com.android.tools.r8.shaking.H3) ((C8699o50) C9073qK.a((Iterable) arrayList)).a(), new com.android.tools.r8.shaking.K3(k32.i(), k32.f57278b, k32.j(), b10, k32.a(), k32.h(), k32.f57283g, k32.d(), c10, list, e10, k32.f(), g10, k32.D(), k32.C()));
        int i12 = AbstractC7552hC.f48487c;
        return new C5920Sm0(c8699o50);
    }
}
