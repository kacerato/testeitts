package j1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import javax.annotation.CheckForNull;

public final class C13795t extends AbstractC13796u {

    public final transient int f92535e;

    public final transient int f92536f;

    public final AbstractC13796u f92537g;

    public C13795t(AbstractC13796u abstractC13796u, int i10, int i11) {
        this.f92537g = abstractC13796u;
        this.f92535e = i10;
        this.f92536f = i11;
    }

    @Override
    public final int b() {
        return this.f92537g.c() + this.f92535e + this.f92536f;
    }

    @Override
    public final int c() {
        return this.f92537g.c() + this.f92535e;
    }

    @Override
    @CheckForNull
    public final Object[] g() {
        return this.f92537g.g();
    }

    @Override
    public final Object get(int i10) {
        C13790n.a(i10, this.f92536f, FirebaseAnalytics.d.f67690b0);
        return this.f92537g.get(i10 + this.f92535e);
    }

    @Override
    public final AbstractC13796u subList(int i10, int i11) {
        C13790n.e(i10, i11, this.f92536f);
        AbstractC13796u abstractC13796u = this.f92537g;
        int i12 = this.f92535e;
        return abstractC13796u.subList(i10 + i12, i11 + i12);
    }

    @Override
    public final int size() {
        return this.f92536f;
    }

    @Override
    public final List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
