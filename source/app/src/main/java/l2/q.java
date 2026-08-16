package l2;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import w1.C15879a;

@RequiresApi(21)
public final class q extends r<w> {

    public static final int f96077g = 0;

    public static final int f96078h = 1;

    public static final int f96079i = 2;

    @AttrRes
    public static final int f96080j = C15879a.c.f121996Ja;

    @AttrRes
    public static final int f96081k = C15879a.c.f122172Ta;

    public final int f96082e;

    public final boolean f96083f;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface a {
    }

    public q(int i10, boolean z10) {
        super(m(i10, z10), n());
        this.f96082e = i10;
        this.f96083f = z10;
    }

    public static w m(int i10, boolean z10) {
        if (i10 == 0) {
            return new t(z10 ? 8388613 : 8388611);
        }
        if (i10 == 1) {
            return new t(z10 ? 80 : 48);
        }
        if (i10 == 2) {
            return new s(z10);
        }
        throw new IllegalArgumentException("Invalid axis: " + i10);
    }

    private static w n() {
        return new C14047e();
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
        return f96080j;
    }

    @Override
    @AttrRes
    public int g(boolean z10) {
        return f96081k;
    }

    @Override
    @NonNull
    public w h() {
        return super.h();
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

    public int o() {
        return this.f96082e;
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
        return this.f96083f;
    }
}
