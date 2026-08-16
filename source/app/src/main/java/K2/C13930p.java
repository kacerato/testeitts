package k2;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.transition.TransitionValues;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import w1.C15879a;

public final class C13930p extends AbstractC13931q<v> {

    public static final int f94792g = 0;

    public static final int f94793h = 1;

    public static final int f94794i = 2;

    @AttrRes
    public static final int f94795j = C15879a.c.f121996Ja;

    @AttrRes
    public static final int f94796k = C15879a.c.f122172Ta;

    public final int f94797e;

    public final boolean f94798f;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface a {
    }

    public C13930p(int i10, boolean z10) {
        super(m(i10, z10), n());
        this.f94797e = i10;
        this.f94798f = z10;
    }

    public static v m(int i10, boolean z10) {
        if (i10 == 0) {
            return new C13933s(z10 ? 8388613 : 8388611);
        }
        if (i10 == 1) {
            return new C13933s(z10 ? 80 : 48);
        }
        if (i10 == 2) {
            return new C13932r(z10);
        }
        throw new IllegalArgumentException("Invalid axis: " + i10);
    }

    private static v n() {
        return new C13919e();
    }

    @Override
    public void a(@NonNull v vVar) {
        super.a(vVar);
    }

    @Override
    public void c() {
        super.c();
    }

    @Override
    @AttrRes
    public int f(boolean z10) {
        return f94795j;
    }

    @Override
    @AttrRes
    public int g(boolean z10) {
        return f94796k;
    }

    @Override
    @NonNull
    public v h() {
        return super.h();
    }

    @Override
    @Nullable
    public v i() {
        return super.i();
    }

    @Override
    public boolean k(@NonNull v vVar) {
        return super.k(vVar);
    }

    @Override
    public void l(@Nullable v vVar) {
        super.l(vVar);
    }

    public int o() {
        return this.f94797e;
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    public boolean p() {
        return this.f94798f;
    }
}
