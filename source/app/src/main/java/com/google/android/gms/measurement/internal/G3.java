package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.C12017a3;
import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12035c3;
import com.google.android.gms.internal.measurement.C12044d3;
import com.google.android.gms.internal.measurement.C12053e3;
import com.google.android.gms.internal.measurement.C12062f3;
import com.google.android.gms.internal.measurement.C12089i3;
import com.google.android.gms.internal.measurement.C12116l3;
import com.google.android.gms.internal.measurement.C12125m3;
import com.google.android.gms.internal.measurement.C12134n3;
import com.google.android.gms.internal.measurement.C12143o3;
import com.google.android.gms.internal.measurement.C12161q3;
import com.google.android.gms.internal.measurement.G7;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

public final class G3 implements Callable {

    public final I f62650b;

    public final String f62651c;

    public final R3 f62652d;

    public G3(R3 r32, I i10, String str) {
        this.f62650b = i10;
        this.f62651c = str;
        Objects.requireNonNull(r32);
        this.f62652d = r32;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object call() throws Exception {
        C12308h5 c12308h5;
        byte[] bArr;
        c7 c7Var;
        k7 k7Var;
        c7 c7Var2;
        I2 i22;
        C12089i3 c12089i3;
        Bundle bundle;
        String str;
        C12370p3 c12370p3;
        C12125m3 c12125m3;
        String str2;
        Object obj;
        E a10;
        long j10;
        C12421w F02;
        R3 r32 = this.f62652d;
        r32.i1().D();
        C12308h5 J02 = r32.i1().J0();
        J02.h();
        C12370p3 c12370p32 = J02.f62917a;
        C12370p3.q();
        I i10 = this.f62650b;
        G0.A.r(i10);
        String str3 = this.f62651c;
        G0.A.l(str3);
        String str4 = i10.f62679b;
        if (!"_iap".equals(str4) && !"_iapx".equals(str4)) {
            J02.f62917a.a().v().c("Generating a payload for this event is not available. package_name, event_name", str3, str4);
            return null;
        }
        c7 c7Var3 = J02.f62657b;
        C12089i3 L10 = C12116l3.L();
        c7Var3.F0().t0();
        try {
            I2 L02 = c7Var3.F0().L0(str3);
            if (L02 == null) {
                J02.f62917a.a().v().b("Log and bundle not available. package_name", str3);
                bArr = new byte[0];
            } else if (L02.d()) {
                C12125m3 j02 = C12134n3.j0();
                j02.T(1);
                j02.v("android");
                if (!TextUtils.isEmpty(L02.o0())) {
                    j02.E(L02.o0());
                }
                if (!TextUtils.isEmpty(L02.H0())) {
                    j02.C((String) G0.A.r(L02.H0()));
                }
                if (!TextUtils.isEmpty(L02.D0())) {
                    j02.F((String) G0.A.r(L02.D0()));
                }
                if (L02.F0() != -2147483648L) {
                    j02.w0((int) L02.F0());
                }
                j02.G(L02.J0());
                j02.E0(L02.b());
                String r02 = L02.r0();
                if (!TextUtils.isEmpty(r02)) {
                    j02.q0(r02);
                }
                j02.L0(L02.X());
                Z3 g10 = J02.f62657b.g(str3);
                j02.R(L02.L0());
                if (c12370p32.g() && J02.f62917a.w().k(j02.D()) && g10.o(Y3.AD_STORAGE) && !TextUtils.isEmpty(null)) {
                    j02.z0(null);
                }
                j02.G0(g10.k());
                if (g10.o(Y3.AD_STORAGE) && L02.P()) {
                    Pair m10 = c7Var3.L0().m(L02.o0(), g10);
                    if (L02.P() && !TextUtils.isEmpty((CharSequence) m10.first)) {
                        try {
                            j02.J(C12308h5.m((String) m10.first, Long.toString(i10.f62682e)));
                            S s10 = m10.second;
                            if (s10 != 0) {
                                j02.M(((Boolean) s10).booleanValue());
                            }
                        } catch (SecurityException e10) {
                            J02.f62917a.a().v().b("Resettable device id encryption failed", e10.getMessage());
                            bArr = new byte[0];
                            c7Var = J02.f62657b;
                            F02 = c7Var.F0();
                            F02.v0();
                            return bArr;
                        }
                    }
                }
                C12370p3 c12370p33 = J02.f62917a;
                c12370p33.K().l();
                j02.y(Build.MODEL);
                c12370p33.K().l();
                j02.x(Build.VERSION.RELEASE);
                j02.B((int) c12370p33.K().o());
                j02.A(c12370p33.K().p());
                try {
                    try {
                        if (g10.o(Y3.ANALYTICS_STORAGE) && L02.p0() != null) {
                            j02.P(C12308h5.m((String) G0.A.r(L02.p0()), Long.toString(i10.f62682e)));
                        }
                        if (!TextUtils.isEmpty(L02.x0())) {
                            j02.u0((String) G0.A.r(L02.x0()));
                        }
                        String o02 = L02.o0();
                        c7 c7Var4 = J02.f62657b;
                        List E02 = c7Var4.F0().E0(o02);
                        Iterator it = E02.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                k7Var = null;
                                break;
                            }
                            k7Var = (k7) it.next();
                            if ("_lte".equals(k7Var.f63380c)) {
                                break;
                            }
                        }
                        if (k7Var == null || k7Var.f63382e == null) {
                            k7 k7Var2 = new k7(o02, "auto", "_lte", J02.f62917a.e().a(), 0L);
                            E02.add(k7Var2);
                            c7Var4.F0().C0(k7Var2);
                        }
                        com.google.android.gms.internal.measurement.E3[] e3Arr = new com.google.android.gms.internal.measurement.E3[E02.size()];
                        for (int i11 = 0; i11 < E02.size(); i11++) {
                            com.google.android.gms.internal.measurement.D3 P10 = com.google.android.gms.internal.measurement.E3.P();
                            P10.u(((k7) E02.get(i11)).f63380c);
                            P10.t(((k7) E02.get(i11)).f63381d);
                            c7Var4.K0().G(P10, ((k7) E02.get(i11)).f63382e);
                            e3Arr[i11] = (com.google.android.gms.internal.measurement.E3) P10.q();
                        }
                        j02.c1(Arrays.asList(e3Arr));
                        c7 c7Var5 = J02.f62657b;
                        c7Var5.n(L02, j02);
                        c7Var5.o(L02, j02);
                        C2 a11 = C2.a(i10);
                        C12370p3 c12370p34 = J02.f62917a;
                        m7 C10 = c12370p34.C();
                        Bundle bundle2 = a11.f62576d;
                        C10.w(bundle2, c7Var4.F0().I(str3));
                        c12370p34.C().u(a11, c12370p34.w().w(str3));
                        try {
                            bundle2.putLong("_c", 1L);
                            c12370p34.a().v().a("Marking in-app purchase as real-time");
                            bundle2.putLong("_r", 1L);
                            String str5 = i10.f62681d;
                            bundle2.putString("_o", str5);
                            if (c12370p34.C().P(j02.D(), L02.l0())) {
                                c12370p34.C().A(bundle2, "_dbg", 1L);
                                c12370p34.C().A(bundle2, "_r", 1L);
                            }
                            C12421w F03 = c7Var4.F0();
                            String str6 = i10.f62679b;
                            E x02 = F03.x0(str3, str6);
                            if (x02 == null) {
                                bundle = bundle2;
                                str = str5;
                                c12370p3 = c12370p34;
                                c12125m3 = j02;
                                c7Var2 = c7Var4;
                                c12089i3 = L10;
                                str2 = str3;
                                i22 = L02;
                                obj = null;
                                a10 = new E(str3, str6, 0L, 0L, 0L, i10.f62682e, 0L, null, null, null, null);
                                j10 = 0;
                            } else {
                                c7Var2 = c7Var4;
                                i22 = L02;
                                c12089i3 = L10;
                                bundle = bundle2;
                                str = str5;
                                c12370p3 = c12370p34;
                                c12125m3 = j02;
                                str2 = str3;
                                obj = null;
                                long j11 = x02.f62605f;
                                a10 = x02.a(i10.f62682e);
                                j10 = j11;
                            }
                            c7Var2.F0().y0(a10);
                            try {
                                D d10 = new D(J02.f62917a, str, str2, str6, i10.f62682e, j10, bundle);
                                C12017a3 O10 = C12026b3.O();
                                O10.H(d10.f62589d);
                                O10.E(d10.f62587b);
                                O10.J(d10.f62590e);
                                G g11 = d10.f62591f;
                                F f10 = new F(g11);
                                while (f10.hasNext()) {
                                    String next = f10.next();
                                    C12053e3 Q10 = C12062f3.Q();
                                    Q10.u(next);
                                    Object b10 = g11.b(next);
                                    if (b10 != null) {
                                        c7Var2.K0().H(Q10, b10);
                                        O10.z(Q10);
                                    }
                                }
                                c12125m3.S0(O10);
                                C12143o3 E10 = C12161q3.E();
                                C12035c3 E11 = C12044d3.E();
                                E11.u(a10.f62602c);
                                E11.t(str6);
                                E10.t(E11);
                                c12125m3.C0(E10);
                                c12125m3.s0(c7Var2.I0().m(i22.o0(), Collections.emptyList(), c12125m3.W0(), Long.valueOf(O10.G()), Long.valueOf(O10.G()), false));
                                if (O10.F()) {
                                    c12125m3.h1(O10.G());
                                    c12125m3.j1(O10.G());
                                }
                                long B02 = i22.B0();
                                if (B02 != 0) {
                                    c12125m3.t(B02);
                                }
                                long z02 = i22.z0();
                                if (z02 != 0) {
                                    c12125m3.k1(z02);
                                } else if (B02 != 0) {
                                    c12125m3.k1(B02);
                                }
                                String t02 = i22.t0();
                                G7.a();
                                String str7 = str2;
                                if (c12370p3.w().H(str7, C12281e2.f63163N0) && t02 != null) {
                                    c12125m3.H0(t02);
                                }
                                i22.l();
                                c12125m3.S((int) i22.g());
                                c12370p3.w().A();
                                c12125m3.H(130000L);
                                c12125m3.e1(c12370p3.e().a());
                                c12125m3.r0(true);
                                c7Var5.x(c12125m3.D(), c12125m3);
                                C12089i3 c12089i32 = c12089i3;
                                c12089i32.x(c12125m3);
                                I2 i23 = i22;
                                i23.A0(c12125m3.g1());
                                i23.C0(c12125m3.i1());
                                c7Var2.F0().M0(i23, false, false);
                                c7Var2.F0().u0();
                                c7Var2.F0().v0();
                                try {
                                    return c7Var2.K0().V(((C12116l3) c12089i32.q()).g());
                                } catch (IOException e11) {
                                    J02.f62917a.a().o().c("Data loss. Failed to bundle and serialize. appId", B2.x(str7), e11);
                                    return obj;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                c12308h5 = J02;
                                c12308h5.f62657b.F0().v0();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            c12308h5 = J02;
                        }
                    } catch (SecurityException e12) {
                        J02.f62917a.a().v().b("app instance id encryption failed", e12.getMessage());
                        bArr = new byte[0];
                        c7Var = J02.f62657b;
                        F02 = c7Var.F0();
                        F02.v0();
                        return bArr;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    c12308h5 = i10;
                }
            } else {
                J02.f62917a.a().v().b("Log and bundle disabled. package_name", str3);
                bArr = new byte[0];
            }
            F02 = c7Var3.F0();
            F02.v0();
            return bArr;
        } catch (Throwable th5) {
            th = th5;
            c12308h5 = J02;
            c12308h5.f62657b.F0().v0();
            throw th;
        }
    }
}
