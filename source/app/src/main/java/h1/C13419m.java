package h1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;
import org.jspecify.annotations.NullMarked;

@NullMarked
public final class C13419m extends AbstractC13417k {

    public static final AbstractC13417k f90205f = new C13419m(new Object[0], 0);

    public final transient Object[] f90206d;

    public final transient int f90207e;

    public C13419m(Object[] objArr, int i10) {
        this.f90206d = objArr;
        this.f90207e = i10;
    }

    @Override
    public final int a(Object[] objArr, int i10) {
        System.arraycopy(this.f90206d, 0, objArr, 0, this.f90207e);
        return this.f90207e;
    }

    @Override
    public final int b() {
        return this.f90207e;
    }

    @Override
    public final int c() {
        return 0;
    }

    @Override
    public final Object get(int i10) {
        J.a(i10, this.f90207e, FirebaseAnalytics.d.f67690b0);
        Object obj = this.f90206d[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final boolean h() {
        return false;
    }

    @Override
    public final Object[] i() {
        return this.f90206d;
    }

    @Override
    public final int size() {
        return this.f90207e;
    }
}
