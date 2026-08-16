package l2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import l2.w;
import x1.C16046a;
import x1.C16047b;

@RequiresApi(21)
public abstract class r<P extends w> extends Visibility {

    public final P f96084b;

    @Nullable
    public w f96085c;

    public final List<w> f96086d = new ArrayList();

    public r(P p10, @Nullable w wVar) {
        this.f96084b = p10;
        this.f96085c = wVar;
    }

    public static void b(List<Animator> list, @Nullable w wVar, ViewGroup viewGroup, View view, boolean z10) {
        if (wVar == null) {
            return;
        }
        Animator b10 = z10 ? wVar.b(viewGroup, view) : wVar.a(viewGroup, view);
        if (b10 != null) {
            list.add(b10);
        }
    }

    public void a(@NonNull w wVar) {
        this.f96086d.add(wVar);
    }

    public void c() {
        this.f96086d.clear();
    }

    public final Animator d(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        b(arrayList, this.f96084b, viewGroup, view, z10);
        b(arrayList, this.f96085c, viewGroup, view, z10);
        Iterator<w> it = this.f96086d.iterator();
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
        return this.f96084b;
    }

    @Nullable
    public w i() {
        return this.f96085c;
    }

    public final void j(@NonNull Context context, boolean z10) {
        v.q(this, context, f(z10));
        v.r(this, context, g(z10), e(z10));
    }

    public boolean k(@NonNull w wVar) {
        return this.f96086d.remove(wVar);
    }

    public void l(@Nullable w wVar) {
        this.f96085c = wVar;
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
