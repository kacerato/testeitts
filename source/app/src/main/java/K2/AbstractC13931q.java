package k2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k2.v;
import x1.C16046a;
import x1.C16047b;

public abstract class AbstractC13931q<P extends v> extends Visibility {

    public final P f94799b;

    @Nullable
    public v f94800c;

    public final List<v> f94801d = new ArrayList();

    public AbstractC13931q(P p10, @Nullable v vVar) {
        this.f94799b = p10;
        this.f94800c = vVar;
    }

    public static void b(List<Animator> list, @Nullable v vVar, ViewGroup viewGroup, View view, boolean z10) {
        if (vVar == null) {
            return;
        }
        Animator b10 = z10 ? vVar.b(viewGroup, view) : vVar.a(viewGroup, view);
        if (b10 != null) {
            list.add(b10);
        }
    }

    public void a(@NonNull v vVar) {
        this.f94801d.add(vVar);
    }

    public void c() {
        this.f94801d.clear();
    }

    public final Animator d(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        b(arrayList, this.f94799b, viewGroup, view, z10);
        b(arrayList, this.f94800c, viewGroup, view, z10);
        Iterator<v> it = this.f94801d.iterator();
        while (it.hasNext()) {
            b(arrayList, it.next(), viewGroup, view, z10);
        }
        j(viewGroup.getContext(), z10);
        C16047b.a(animatorSet, arrayList);
        return animatorSet;
    }

    @NonNull
    public TimeInterpolator e(boolean z10) {
        return C16046a.f127889b;
    }

    @AttrRes
    public int f(boolean z10) {
        return 0;
    }

    @AttrRes
    public int g(boolean z10) {
        return 0;
    }

    @NonNull
    public P h() {
        return this.f94799b;
    }

    @Nullable
    public v i() {
        return this.f94800c;
    }

    public final void j(@NonNull Context context, boolean z10) {
        u.q(this, context, f(z10));
        u.r(this, context, g(z10), e(z10));
    }

    public boolean k(@NonNull v vVar) {
        return this.f94801d.remove(vVar);
    }

    public void l(@Nullable v vVar) {
        this.f94800c = vVar;
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return d(viewGroup, view, true);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return d(viewGroup, view, false);
    }
}
