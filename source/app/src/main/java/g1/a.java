package G1;

import G1.g;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import androidx.annotation.NonNull;

public final class a {

    public static class C0135a extends AnimatorListenerAdapter {

        public final g f7504a;

        public C0135a(g gVar) {
            this.f7504a = gVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f7504a.a();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f7504a.d();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static Animator a(@NonNull g gVar, float f10, float f11, float f12) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(gVar, (Property<g, V>) g.c.f7526a, (TypeEvaluator) g.b.f7524b, (Object[]) new g.e[]{new g.e(f10, f11, f12)});
        g.e revealInfo = gVar.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) gVar, (int) f10, (int) f11, revealInfo.f7531c, f12);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, createCircularReveal);
        return animatorSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static Animator b(g gVar, float f10, float f11, float f12, float f13) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(gVar, (Property<g, V>) g.c.f7526a, (TypeEvaluator) g.b.f7524b, (Object[]) new g.e[]{new g.e(f10, f11, f12), new g.e(f10, f11, f13)});
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) gVar, (int) f10, (int) f11, f12, f13);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, createCircularReveal);
        return animatorSet;
    }

    @NonNull
    public static Animator.AnimatorListener c(@NonNull g gVar) {
        return new C0135a(gVar);
    }
}
