package k2;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import w1.C15879a;
import x1.C16046a;

public final class C13928n extends AbstractC13931q<C13918d> {

    public static final float f94784e = 0.8f;

    public static final float f94785f = 0.3f;

    @AttrRes
    public static final int f94786g = C15879a.c.f122086Oa;

    @AttrRes
    public static final int f94787h = C15879a.c.f122068Na;

    @AttrRes
    public static final int f94788i = C15879a.c.f122155Sa;

    public C13928n() {
        super(m(), n());
    }

    public static C13918d m() {
        C13918d c13918d = new C13918d();
        c13918d.e(0.3f);
        return c13918d;
    }

    private static v n() {
        C13932r c13932r = new C13932r();
        c13932r.o(false);
        c13932r.l(0.8f);
        return c13932r;
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
    @NonNull
    public TimeInterpolator e(boolean z10) {
        return C16046a.f127888a;
    }

    @Override
    @AttrRes
    public int f(boolean z10) {
        return z10 ? f94786g : f94787h;
    }

    @Override
    @AttrRes
    public int g(boolean z10) {
        return f94788i;
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

    @Override
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }
}
