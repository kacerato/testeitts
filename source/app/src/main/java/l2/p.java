package l2;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import w1.C15879a;

@RequiresApi(21)
public final class p extends r<C14047e> {

    public static final float f96074e = 0.92f;

    @AttrRes
    public static final int f96075f = C15879a.c.f121996Ja;

    @AttrRes
    public static final int f96076g = C15879a.c.f122172Ta;

    public p() {
        super(m(), n());
    }

    public static C14047e m() {
        return new C14047e();
    }

    private static w n() {
        s sVar = new s();
        sVar.o(false);
        sVar.l(0.92f);
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
    @AttrRes
    public int f(boolean z10) {
        return f96075f;
    }

    @Override
    @AttrRes
    public int g(boolean z10) {
        return f96076g;
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
