package L2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.I1;
import com.google.android.gms.measurement.internal.InterfaceC12268c5;
import com.google.android.gms.measurement.internal.InterfaceC12275d4;
import com.google.android.gms.measurement.internal.InterfaceC12283e4;
import java.util.List;
import java.util.Map;

public final class g implements InterfaceC12268c5 {

    public final I1 f11553a;

    public g(I1 i12) {
        this.f11553a = i12;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle) {
        this.f11553a.D(str, str2, bundle);
    }

    @Override
    @Nullable
    public final String b() {
        return this.f11553a.b();
    }

    @Override
    @Nullable
    public final String c() {
        return this.f11553a.a();
    }

    @Override
    @Nullable
    public final String d() {
        return this.f11553a.T();
    }

    @Override
    public final long e() {
        return this.f11553a.U();
    }

    @Override
    @Nullable
    public final String f() {
        return this.f11553a.S();
    }

    @Override
    public final void g(String str) {
        this.f11553a.Q(str);
    }

    @Override
    public final void h(String str, String str2, Bundle bundle, long j10) {
        this.f11553a.E(str, str2, bundle, j10);
    }

    @Override
    public final void i(String str) {
        this.f11553a.P(str);
    }

    @Override
    public final int j(String str) {
        return this.f11553a.f(str);
    }

    @Override
    public final void k(InterfaceC12275d4 interfaceC12275d4) {
        this.f11553a.y(interfaceC12275d4);
    }

    @Override
    public final void l(InterfaceC12283e4 interfaceC12283e4) {
        this.f11553a.B(interfaceC12283e4);
    }

    @Override
    public final void m(InterfaceC12283e4 interfaceC12283e4) {
        this.f11553a.A(interfaceC12283e4);
    }

    @Override
    public final void n(Bundle bundle) {
        this.f11553a.G(bundle);
    }

    @Override
    @Nullable
    public final Object o(int i10) {
        return this.f11553a.j(i10);
    }

    @Override
    public final Map p(@Nullable String str, @Nullable String str2, boolean z10) {
        return this.f11553a.c(str, str2, z10);
    }

    @Override
    public final void q(String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.f11553a.H(str, str2, bundle);
    }

    @Override
    public final List r(@Nullable String str, @Nullable String str2) {
        return this.f11553a.I(str, str2);
    }
}
