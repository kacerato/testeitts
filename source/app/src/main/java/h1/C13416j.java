package h1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import javax.annotation.CheckForNull;

public final class C13416j extends AbstractC13417k {

    public final transient int f90201d;

    public final transient int f90202e;

    public final AbstractC13417k f90203f;

    public C13416j(AbstractC13417k abstractC13417k, int i10, int i11) {
        this.f90203f = abstractC13417k;
        this.f90201d = i10;
        this.f90202e = i11;
    }

    @Override
    public final int b() {
        return this.f90203f.c() + this.f90201d + this.f90202e;
    }

    @Override
    public final int c() {
        return this.f90203f.c() + this.f90201d;
    }

    @Override
    public final Object get(int i10) {
        J.a(i10, this.f90202e, FirebaseAnalytics.d.f67690b0);
        return this.f90203f.get(i10 + this.f90201d);
    }

    @Override
    public final boolean h() {
        return true;
    }

    @Override
    @CheckForNull
    public final Object[] i() {
        return this.f90203f.i();
    }

    @Override
    public final AbstractC13417k subList(int i10, int i11) {
        J.c(i10, i11, this.f90202e);
        int i12 = this.f90201d;
        return this.f90203f.subList(i10 + i12, i11 + i12);
    }

    @Override
    public final int size() {
        return this.f90202e;
    }

    @Override
    public final List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
