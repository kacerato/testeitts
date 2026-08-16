package l2;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
public final class n extends r<s> {

    public static final float f96067f = 0.85f;

    public final boolean f96068e;

    public n(boolean z10) {
        super(m(z10), n());
        this.f96068e = z10;
    }

    public static s m(boolean z10) {
        s sVar = new s(z10);
        sVar.m(0.85f);
        sVar.l(0.85f);
        return sVar;
    }

    public static w n() {
        return new C14046d();
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

    public boolean o() {
        return this.f96068e;
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
