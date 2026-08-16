package com.google.android.material.transformation;

import G1.g;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import j2.C13802a;
import j2.C13803b;
import java.util.ArrayList;
import java.util.List;
import w1.C15879a;
import x1.C16046a;
import x1.C16047b;
import x1.C16048c;
import x1.C16049d;
import x1.C16050e;
import x1.h;
import x1.i;
import x1.j;

@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    public final Rect f65337f;

    public final RectF f65338g;

    public final RectF f65339h;

    public final int[] f65340i;

    public float f65341j;

    public float f65342k;

    public class a extends AnimatorListenerAdapter {

        public final boolean f65343a;

        public final View f65344b;

        public final View f65345c;

        public a(boolean z10, View view, View view2) {
            this.f65343a = z10;
            this.f65344b = view;
            this.f65345c = view2;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f65343a) {
                return;
            }
            this.f65344b.setVisibility(4);
            this.f65345c.setAlpha(1.0f);
            this.f65345c.setVisibility(0);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (this.f65343a) {
                this.f65344b.setVisibility(0);
                this.f65345c.setAlpha(0.0f);
                this.f65345c.setVisibility(4);
            }
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {

        public final View f65347a;

        public b(View view) {
            this.f65347a = view;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f65347a.invalidate();
        }
    }

    public class c extends AnimatorListenerAdapter {

        public final g f65349a;

        public final Drawable f65350b;

        public c(g gVar, Drawable drawable) {
            this.f65349a = gVar;
            this.f65350b = drawable;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f65349a.setCircularRevealOverlayDrawable(null);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f65349a.setCircularRevealOverlayDrawable(this.f65350b);
        }
    }

    public class d extends AnimatorListenerAdapter {

        public final g f65352a;

        public d(g gVar) {
            this.f65352a = gVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            g.e revealInfo = this.f65352a.getRevealInfo();
            revealInfo.f7531c = Float.MAX_VALUE;
            this.f65352a.setRevealInfo(revealInfo);
        }
    }

    public static class e {

        @Nullable
        public h f65354a;

        public j f65355b;
    }

    public FabTransformationBehavior() {
        this.f65337f = new Rect();
        this.f65338g = new RectF();
        this.f65339h = new RectF();
        this.f65340i = new int[2];
    }

    public final int A(@NonNull View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    public abstract e B(Context context, boolean z10);

    @Nullable
    public final ViewGroup C(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override
    @NonNull
    public AnimatorSet g(@NonNull View view, @NonNull View view2, boolean z10, boolean z11) {
        e B10 = B(view2.getContext(), z10);
        if (z10) {
            this.f65341j = view.getTranslationX();
            this.f65342k = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        u(view, view2, z10, z11, B10, arrayList, arrayList2);
        RectF rectF = this.f65338g;
        z(view, view2, z10, z11, B10, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        t(view, view2, z10, B10, arrayList);
        w(view, view2, z10, z11, B10, arrayList, arrayList2);
        v(view, view2, z10, z11, B10, width, height, arrayList, arrayList2);
        s(view, view2, z10, z11, B10, arrayList, arrayList2);
        r(view, view2, z10, z11, B10, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        C16047b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2, view));
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            animatorSet.addListener(arrayList2.get(i10));
        }
        return animatorSet;
    }

    @Nullable
    public final ViewGroup h(@NonNull View view) {
        View findViewById = view.findViewById(C15879a.h.f123712c3);
        return findViewById != null ? C(findViewById) : ((view instanceof C13803b) || (view instanceof C13802a)) ? C(((ViewGroup) view).getChildAt(0)) : C(view);
    }

    public final void i(@NonNull View view, @NonNull e eVar, @NonNull i iVar, @NonNull i iVar2, float f10, float f11, float f12, float f13, @NonNull RectF rectF) {
        float p10 = p(eVar, iVar, f10, f12);
        float p11 = p(eVar, iVar2, f11, f13);
        Rect rect = this.f65337f;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f65338g;
        rectF2.set(rect);
        RectF rectF3 = this.f65339h;
        q(view, rectF3);
        rectF3.offset(p10, p11);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    public final void j(@NonNull View view, @NonNull RectF rectF) {
        q(view, rectF);
        rectF.offset(this.f65341j, this.f65342k);
    }

    @NonNull
    public final Pair<i, i> k(float f10, float f11, boolean z10, @NonNull e eVar) {
        i h10;
        i h11;
        if (f10 == 0.0f || f11 == 0.0f) {
            h10 = eVar.f65354a.h("translationXLinear");
            h11 = eVar.f65354a.h("translationYLinear");
        } else if ((!z10 || f11 >= 0.0f) && (z10 || f11 <= 0.0f)) {
            h10 = eVar.f65354a.h("translationXCurveDownwards");
            h11 = eVar.f65354a.h("translationYCurveDownwards");
        } else {
            h10 = eVar.f65354a.h("translationXCurveUpwards");
            h11 = eVar.f65354a.h("translationYCurveUpwards");
        }
        return new Pair<>(h10, h11);
    }

    public final float l(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        RectF rectF = this.f65338g;
        RectF rectF2 = this.f65339h;
        j(view, rectF);
        q(view2, rectF2);
        rectF2.offset(-n(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    @Override
    @CallSuper
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    public final float m(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        RectF rectF = this.f65338g;
        RectF rectF2 = this.f65339h;
        j(view, rectF);
        q(view2, rectF2);
        rectF2.offset(0.0f, -o(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    public final float n(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        float centerX;
        float centerX2;
        float f10;
        RectF rectF = this.f65338g;
        RectF rectF2 = this.f65339h;
        j(view, rectF);
        q(view2, rectF2);
        int i10 = jVar.f127909a & 7;
        if (i10 == 1) {
            centerX = rectF2.centerX();
            centerX2 = rectF.centerX();
        } else if (i10 == 3) {
            centerX = rectF2.left;
            centerX2 = rectF.left;
        } else {
            if (i10 != 5) {
                f10 = 0.0f;
                return f10 + jVar.f127910b;
            }
            centerX = rectF2.right;
            centerX2 = rectF.right;
        }
        f10 = centerX - centerX2;
        return f10 + jVar.f127910b;
    }

    public final float o(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        float centerY;
        float centerY2;
        float f10;
        RectF rectF = this.f65338g;
        RectF rectF2 = this.f65339h;
        j(view, rectF);
        q(view2, rectF2);
        int i10 = jVar.f127909a & 112;
        if (i10 == 16) {
            centerY = rectF2.centerY();
            centerY2 = rectF.centerY();
        } else if (i10 == 48) {
            centerY = rectF2.top;
            centerY2 = rectF.top;
        } else {
            if (i10 != 80) {
                f10 = 0.0f;
                return f10 + jVar.f127911c;
            }
            centerY = rectF2.bottom;
            centerY2 = rectF.bottom;
        }
        f10 = centerY - centerY2;
        return f10 + jVar.f127911c;
    }

    @Override
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    public final float p(@NonNull e eVar, @NonNull i iVar, float f10, float f11) {
        long c10 = iVar.c();
        long d10 = iVar.d();
        i h10 = eVar.f65354a.h("expansion");
        return C16046a.a(f10, f11, iVar.e().getInterpolation(((float) (((h10.c() + h10.d()) + 17) - c10)) / ((float) d10)));
    }

    public final void q(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f65340i);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public final void r(View view, View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup h10;
        ObjectAnimator ofFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof g) && G1.d.f7511o == 0) || (h10 = h(view2)) == null) {
                return;
            }
            if (z10) {
                if (!z11) {
                    C16049d.f127894a.set(h10, Float.valueOf(0.0f));
                }
                ofFloat = ObjectAnimator.ofFloat(h10, C16049d.f127894a, 1.0f);
            } else {
                ofFloat = ObjectAnimator.ofFloat(h10, C16049d.f127894a, 0.0f);
            }
            eVar.f65354a.h("contentFade").a(ofFloat);
            list.add(ofFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s(@NonNull View view, View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (view2 instanceof g) {
            g gVar = (g) view2;
            int A10 = A(view);
            int i10 = 16777215 & A10;
            if (z10) {
                if (!z11) {
                    gVar.setCircularRevealScrimColor(A10);
                }
                ofInt = ObjectAnimator.ofInt(gVar, g.d.f7527a, i10);
            } else {
                ofInt = ObjectAnimator.ofInt(gVar, g.d.f7527a, A10);
            }
            ofInt.setEvaluator(C16048c.b());
            eVar.f65354a.h("color").a(ofInt);
            list.add(ofInt);
        }
    }

    public final void t(@NonNull View view, @NonNull View view2, boolean z10, @NonNull e eVar, @NonNull List<Animator> list) {
        float n10 = n(view, view2, eVar.f65355b);
        float o10 = o(view, view2, eVar.f65355b);
        Pair<i, i> k10 = k(n10, o10, z10, eVar);
        i iVar = k10.first;
        i iVar2 = k10.second;
        Property<View, Float> property = View.TRANSLATION_X;
        if (!z10) {
            n10 = this.f65341j;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, n10);
        Property<View, Float> property2 = View.TRANSLATION_Y;
        if (!z10) {
            o10 = this.f65342k;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, property2, o10);
        iVar.a(ofFloat);
        iVar2.a(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    @TargetApi(21)
    public final void u(View view, @NonNull View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z10) {
            if (!z11) {
                view2.setTranslationZ(-elevation);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -elevation);
        }
        eVar.f65354a.h("elevation").a(ofFloat);
        list.add(ofFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void v(@NonNull View view, View view2, boolean z10, boolean z11, @NonNull e eVar, float f10, float f11, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (view2 instanceof g) {
            g gVar = (g) view2;
            float l10 = l(view, view2, eVar.f65355b);
            float m10 = m(view, view2, eVar.f65355b);
            ((FloatingActionButton) view).k(this.f65337f);
            float width = this.f65337f.width() / 2.0f;
            i h10 = eVar.f65354a.h("expansion");
            if (z10) {
                if (!z11) {
                    gVar.setRevealInfo(new g.e(l10, m10, width));
                }
                if (z11) {
                    width = gVar.getRevealInfo().f7531c;
                }
                animator = G1.a.a(gVar, l10, m10, R1.a.b(l10, m10, 0.0f, 0.0f, f10, f11));
                animator.addListener(new d(gVar));
                y(view2, h10.c(), (int) l10, (int) m10, width, list);
            } else {
                float f12 = gVar.getRevealInfo().f7531c;
                Animator a10 = G1.a.a(gVar, l10, m10, width);
                int i10 = (int) l10;
                int i11 = (int) m10;
                y(view2, h10.c(), i10, i11, f12, list);
                x(view2, h10.c(), h10.d(), eVar.f65354a.i(), i10, i11, width, list);
                animator = a10;
            }
            h10.a(animator);
            list.add(animator);
            list2.add(G1.a.c(gVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w(View view, View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if ((view2 instanceof g) && (view instanceof ImageView)) {
            g gVar = (g) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z10) {
                if (!z11) {
                    drawable.setAlpha(255);
                }
                ofInt = ObjectAnimator.ofInt(drawable, C16050e.f127895b, 0);
            } else {
                ofInt = ObjectAnimator.ofInt(drawable, C16050e.f127895b, 255);
            }
            ofInt.addUpdateListener(new b(view2));
            eVar.f65354a.h("iconFade").a(ofInt);
            list.add(ofInt);
            list2.add(new c(gVar, drawable));
        }
    }

    public final void x(View view, long j10, long j11, long j12, int i10, int i11, float f10, @NonNull List<Animator> list) {
        long j13 = j10 + j11;
        if (j13 < j12) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            createCircularReveal.setStartDelay(j13);
            createCircularReveal.setDuration(j12 - j13);
            list.add(createCircularReveal);
        }
    }

    public final void y(View view, long j10, int i10, int i11, float f10, @NonNull List<Animator> list) {
        if (j10 > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            createCircularReveal.setStartDelay(0L);
            createCircularReveal.setDuration(j10);
            list.add(createCircularReveal);
        }
    }

    public final void z(@NonNull View view, @NonNull View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        float n10 = n(view, view2, eVar.f65355b);
        float o10 = o(view, view2, eVar.f65355b);
        Pair<i, i> k10 = k(n10, o10, z10, eVar);
        i iVar = k10.first;
        i iVar2 = k10.second;
        if (z10) {
            if (!z11) {
                view2.setTranslationX(-n10);
                view2.setTranslationY(-o10);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            ofFloat2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            i(view2, eVar, iVar, iVar2, -n10, -o10, 0.0f, 0.0f, rectF);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -n10);
            ofFloat2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -o10);
        }
        iVar.a(ofFloat);
        iVar2.a(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f65337f = new Rect();
        this.f65338g = new RectF();
        this.f65339h = new RectF();
        this.f65340i = new int[2];
    }
}
