package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;

public class C6135Wf extends AbstractC6192Xf {

    public static final int f45499d = 0;

    public final NB f45500c;

    public C6135Wf(InterfaceC6078Vf interfaceC6078Vf, NB nb2) {
        super(interfaceC6078Vf);
        this.f45500c = nb2;
    }

    @Override
    public final F1 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx) {
        F1 a10 = this.f45782a.a(c4798y, interfaceC5825Qx);
        a10.getClass();
        boolean z10 = a10 instanceof A7;
        if (z10) {
            return a10;
        }
        NB nb2 = this.f45500c;
        nb2.getClass();
        if (z10) {
            return A7.f38535b;
        }
        if (!(a10 instanceof C5341Im0)) {
            return C10504yv0.f54195b;
        }
        boolean a11 = nb2.a((int) a10.m().f41207c);
        G1 g12 = c4798y.f38427t;
        g12.getClass();
        return g12.a(C8704o7.a(a11));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6135Wf)) {
            return false;
        }
        C6135Wf c6135Wf = (C6135Wf) obj;
        return this.f45500c == c6135Wf.f45500c && this.f45782a.equals(c6135Wf.f45782a);
    }

    @Override
    public final boolean g() {
        NB nb2 = this.f45500c;
        nb2.getClass();
        if (nb2 == NB.f42527b || nb2 == NB.f42532g) {
            InterfaceC6078Vf interfaceC6078Vf = this.f45782a;
            if (interfaceC6078Vf instanceof C5788Qf) {
                C5788Qf c5788Qf = (C5788Qf) interfaceC6078Vf;
                return (c5788Qf.f44263a instanceof C6431aX) && (c5788Qf.f44264b instanceof C5341Im0);
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(getClass(), this.f45782a, this.f45500c);
    }

    public final String toString() {
        return this.f45782a.p() + " " + this.f45500c.a() + " 0";
    }
}
