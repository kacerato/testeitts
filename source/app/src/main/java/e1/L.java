package e1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

public final class L extends K {

    public static final K f84947f = new L(new Object[0], 0);

    public final transient Object[] f84948d;

    public final transient int f84949e;

    public L(Object[] objArr, int i10) {
        this.f84948d = objArr;
        this.f84949e = i10;
    }

    @Override
    public final Object[] b() {
        return this.f84948d;
    }

    @Override
    public final int c() {
        return 0;
    }

    @Override
    public final int d() {
        return this.f84949e;
    }

    @Override
    public final Object get(int i10) {
        E.a(i10, this.f84949e, FirebaseAnalytics.d.f67690b0);
        Object obj = this.f84948d[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final boolean h() {
        return false;
    }

    @Override
    public final int i(Object[] objArr, int i10) {
        Object[] objArr2 = this.f84948d;
        int i11 = this.f84949e;
        System.arraycopy(objArr2, 0, objArr, 0, i11);
        return i11;
    }

    @Override
    public final int size() {
        return this.f84949e;
    }
}
