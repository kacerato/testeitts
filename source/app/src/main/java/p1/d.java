package P1;

import a2.C3567j;
import a2.C3572o;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import w1.C15879a;

@RequiresApi(21)
public class d extends com.google.android.material.floatingactionbutton.a {

    public static class a extends C3567j {
        public a(C3572o c3572o) {
            super(c3572o);
        }

        @Override
        public boolean isStateful() {
            return true;
        }
    }

    public d(FloatingActionButton floatingActionButton, Z1.c cVar) {
        super(floatingActionButton, cVar);
    }

    @Override
    public void A() {
    }

    @Override
    public void C() {
        i0();
    }

    @Override
    public void E(int[] iArr) {
    }

    @Override
    public void F(float f10, float f11, float f12) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.f64504S, m0(f10, f12));
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.f64505T, m0(f10, f11));
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.f64506U, m0(f10, f11));
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.f64507V, m0(f10, f11));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f64535w, "elevation", f10).setDuration(0L));
        arrayList.add(ObjectAnimator.ofFloat(this.f64535w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(com.google.android.material.floatingactionbutton.a.f64489D);
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.f64508W, animatorSet);
        stateListAnimator.addState(com.google.android.material.floatingactionbutton.a.f64509X, m0(0.0f, 0.0f));
        this.f64535w.setStateListAnimator(stateListAnimator);
        if (c0()) {
            i0();
        }
    }

    @Override
    public boolean N() {
        return false;
    }

    @Override
    public void Y(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f64515c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(Y1.b.d(colorStateList));
        } else {
            super.Y(colorStateList);
        }
    }

    @Override
    public boolean c0() {
        return this.f64536x.a() || !e0();
    }

    @Override
    public void g0() {
    }

    @Override
    @NonNull
    public C3567j l() {
        return new a((C3572o) Preconditions.checkNotNull(this.f64513a));
    }

    @NonNull
    public c l0(int i10, ColorStateList colorStateList) {
        Context context = this.f64535w.getContext();
        c cVar = new c((C3572o) Preconditions.checkNotNull(this.f64513a));
        cVar.f(ContextCompat.getColor(context, C15879a.e.f122763D0), ContextCompat.getColor(context, C15879a.e.f122759C0), ContextCompat.getColor(context, C15879a.e.f122751A0), ContextCompat.getColor(context, C15879a.e.f122755B0));
        cVar.e(i10);
        cVar.d(colorStateList);
        return cVar;
    }

    @NonNull
    public final Animator m0(float f10, float f11) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f64535w, "elevation", f10).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f64535w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f11).setDuration(100L));
        animatorSet.setInterpolator(com.google.android.material.floatingactionbutton.a.f64489D);
        return animatorSet;
    }

    @Override
    public float n() {
        return this.f64535w.getElevation();
    }

    @Override
    public void s(@NonNull Rect rect) {
        if (this.f64536x.a()) {
            super.s(rect);
        } else if (e0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f64523k - this.f64535w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override
    public void x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        Drawable drawable;
        C3567j l10 = l();
        this.f64514b = l10;
        l10.setTintList(colorStateList);
        if (mode != null) {
            this.f64514b.setTintMode(mode);
        }
        this.f64514b.Y(this.f64535w.getContext());
        if (i10 > 0) {
            this.f64516d = l0(i10, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f64516d), (Drawable) Preconditions.checkNotNull(this.f64514b)});
        } else {
            this.f64516d = null;
            drawable = this.f64514b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(Y1.b.d(colorStateList2), drawable, null);
        this.f64515c = rippleDrawable;
        this.f64517e = rippleDrawable;
    }
}
