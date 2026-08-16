package k2;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import w1.C15879a;

public final class C13929o extends AbstractC13931q<C13919e> {

    public static final float f94789e = 0.92f;

    @AttrRes
    public static final int f94790f = C15879a.c.f121996Ja;

    @AttrRes
    public static final int f94791g = C15879a.c.f122172Ta;

    public C13929o() {
        super(m(), n());
    }

    public static C13919e m() {
        return new C13919e();
    }

    private static v n() {
        C13932r c13932r = new C13932r();
        c13932r.o(false);
        c13932r.l(0.92f);
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
    @AttrRes
    public int f(boolean z10) {
        return f94790f;
    }

    @Override
    @AttrRes
    public int g(boolean z10) {
        return f94791g;
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
