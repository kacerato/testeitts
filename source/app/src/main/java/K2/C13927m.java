package k2;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;

public final class C13927m extends AbstractC13931q<C13932r> {

    public static final float f94782f = 0.85f;

    public final boolean f94783e;

    public C13927m(boolean z10) {
        super(m(z10), n());
        this.f94783e = z10;
    }

    public static C13932r m(boolean z10) {
        C13932r c13932r = new C13932r(z10);
        c13932r.m(0.85f);
        c13932r.l(0.85f);
        return c13932r;
    }

    public static v n() {
        return new C13918d();
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

    public boolean o() {
        return this.f94783e;
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
