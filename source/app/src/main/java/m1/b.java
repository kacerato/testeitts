package m1;

import G0.A;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.measurement.internal.C12260b5;
import com.google.android.gms.measurement.internal.C12370p3;
import com.google.android.gms.measurement.internal.InterfaceC12275d4;
import com.google.android.gms.measurement.internal.InterfaceC12283e4;
import com.google.android.gms.measurement.internal.i7;
import java.util.List;
import java.util.Map;

public final class b extends d {

    public final C12370p3 f96680a;

    public final C12260b5 f96681b;

    public b(@NonNull C12370p3 c12370p3) {
        super(null);
        A.r(c12370p3);
        this.f96680a = c12370p3;
        this.f96681b = c12370p3.B();
    }

    @Override
    public final void a(String str, String str2, Bundle bundle) {
        this.f96681b.p(str, str2, bundle);
    }

    @Override
    public final String b() {
        return this.f96681b.S();
    }

    @Override
    public final String c() {
        return this.f96681b.R();
    }

    @Override
    public final String d() {
        return this.f96681b.E();
    }

    @Override
    public final long e() {
        return this.f96680a.C().p0();
    }

    @Override
    public final String f() {
        return this.f96681b.E();
    }

    @Override
    public final void g(String str) {
        C12370p3 c12370p3 = this.f96680a;
        c12370p3.M().j(str, c12370p3.e().c());
    }

    @Override
    public final void h(String str, String str2, Bundle bundle, long j10) {
        this.f96681b.q(str, str2, bundle, true, false, j10);
    }

    @Override
    public final void i(String str) {
        C12370p3 c12370p3 = this.f96680a;
        c12370p3.M().i(str, c12370p3.e().c());
    }

    @Override
    public final int j(String str) {
        this.f96681b.M(str);
        return 25;
    }

    @Override
    public final void k(InterfaceC12275d4 interfaceC12275d4) {
        this.f96681b.J(interfaceC12275d4);
    }

    @Override
    public final void l(InterfaceC12283e4 interfaceC12283e4) {
        this.f96681b.L(interfaceC12283e4);
    }

    @Override
    public final void m(InterfaceC12283e4 interfaceC12283e4) {
        this.f96681b.K(interfaceC12283e4);
    }

    @Override
    public final void n(Bundle bundle) {
        this.f96681b.N(bundle);
    }

    @Override
    public final Object o(int i10) {
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? this.f96681b.i0() : this.f96681b.l0() : this.f96681b.m0() : this.f96681b.k0() : this.f96681b.j0();
    }

    @Override
    public final Map p(String str, String str2, boolean z10) {
        return this.f96681b.D(str, str2, z10);
    }

    @Override
    public final void q(String str, String str2, Bundle bundle) {
        this.f96680a.B().P(str, str2, bundle);
    }

    @Override
    public final List r(String str, String str2) {
        return this.f96681b.Q(str, str2);
    }

    @Override
    public final Map s(boolean z10) {
        List<i7> C10 = this.f96681b.C(z10);
        ArrayMap arrayMap = new ArrayMap(C10.size());
        for (i7 i7Var : C10) {
            Object n10 = i7Var.n();
            if (n10 != null) {
                arrayMap.put(i7Var.f63358c, n10);
            }
        }
        return arrayMap;
    }

    @Override
    public final Boolean t() {
        return this.f96681b.i0();
    }

    @Override
    public final Integer u() {
        return this.f96681b.l0();
    }

    @Override
    public final String v() {
        return this.f96681b.j0();
    }

    @Override
    public final Long w() {
        return this.f96681b.k0();
    }

    @Override
    public final Double x() {
        return this.f96681b.m0();
    }
}
