package l2;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import w1.C15879a;
import x1.C16046a;

@RequiresApi(21)
public final class o extends r<C14046d> {

    public static final float f96069e = 0.8f;

    public static final float f96070f = 0.3f;

    @AttrRes
    public static final int f96071g = C15879a.c.f122086Oa;

    @AttrRes
    public static final int f96072h = C15879a.c.f122068Na;

    @AttrRes
    public static final int f96073i = C15879a.c.f122155Sa;

    public o() {
        super(m(), n());
    }

    public static C14046d m() {
        C14046d c14046d = new C14046d();
        c14046d.e(0.3f);
        return c14046d;
    }

    private static w n() {
        s sVar = new s();
        sVar.o(false);
        sVar.l(0.8f);
        return sVar;
    }

    @Override
    public void a(@NonNull w wVar) {
        super.a(wVar);
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
        return z10 ? f96071g : f96072h;
    }

    @Override
    @AttrRes
    public int g(boolean z10) {
        return f96073i;
    }

    @Override
    @Nullable
    public w i() {
        return super.i();
    }

    @Override
    public boolean k(@NonNull w wVar) {
        return super.k(wVar);
    }

    @Override
    public void l(@Nullable w wVar) {
        super.l(wVar);
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
