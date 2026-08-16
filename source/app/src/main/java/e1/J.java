package e1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Objects;

public final class J extends K {

    public final transient int f84943d;

    public final transient int f84944e;

    public final K f84945f;

    public J(K k10, int i10, int i11) {
        Objects.requireNonNull(k10);
        this.f84945f = k10;
        this.f84943d = i10;
        this.f84944e = i11;
    }

    @Override
    public final Object[] b() {
        return this.f84945f.b();
    }

    @Override
    public final int c() {
        return this.f84945f.c() + this.f84943d;
    }

    @Override
    public final int d() {
        return this.f84945f.c() + this.f84943d + this.f84944e;
    }

    @Override
    public final Object get(int i10) {
        E.a(i10, this.f84944e, FirebaseAnalytics.d.f67690b0);
        return this.f84945f.get(i10 + this.f84943d);
    }

    @Override
    public final boolean h() {
        return true;
    }

    @Override
    public final K subList(int i10, int i11) {
        E.c(i10, i11, this.f84944e);
        int i12 = this.f84943d;
        return this.f84945f.subList(i10 + i12, i11 + i12);
    }

    @Override
    public final int size() {
        return this.f84944e;
    }

    @Override
    public final List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
