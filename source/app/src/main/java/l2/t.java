package l2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import w1.C15879a;

@RequiresApi(21)
public final class t implements w {

    public static final int f96096c = -1;

    public int f96097a;

    @Px
    public int f96098b = -1;

    public static class a extends AnimatorListenerAdapter {

        public final View f96099a;

        public final float f96100b;

        public a(View view, float f10) {
            this.f96099a = view;
            this.f96100b = f10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f96099a.setTranslationX(this.f96100b);
        }
    }

    public static class b extends AnimatorListenerAdapter {

        public final View f96101a;

        public final float f96102b;

        public b(View view, float f10) {
            this.f96101a = view;
            this.f96102b = f10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f96101a.setTranslationY(this.f96102b);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface c {
    }

    public t(int i10) {
        this.f96097a = i10;
    }

    public static Animator c(View view, View view2, int i10, @Px int i11) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i10 == 3) {
            return e(view2, i11 + translationX, translationX, translationX);
        }
        if (i10 == 5) {
            return e(view2, translationX - i11, translationX, translationX);
        }
        if (i10 == 48) {
            return f(view2, translationY - i11, translationY, translationY);
        }
        if (i10 == 80) {
            return f(view2, i11 + translationY, translationY, translationY);
        }
        if (i10 == 8388611) {
            return e(view2, j(view) ? i11 + translationX : translationX - i11, translationX, translationX);
        }
        if (i10 == 8388613) {
            return e(view2, j(view) ? translationX - i11 : i11 + translationX, translationX, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i10);
    }

    public static Animator d(View view, View view2, int i10, @Px int i11) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i10 == 3) {
            return e(view2, translationX, translationX - i11, translationX);
        }
        if (i10 == 5) {
            return e(view2, translationX, i11 + translationX, translationX);
        }
        if (i10 == 48) {
            return f(view2, translationY, i11 + translationY, translationY);
        }
        if (i10 == 80) {
            return f(view2, translationY, translationY - i11, translationY);
        }
        if (i10 == 8388611) {
            return e(view2, translationX, j(view) ? translationX - i11 : i11 + translationX, translationX);
        }
        if (i10 == 8388613) {
            return e(view2, translationX, j(view) ? i11 + translationX : translationX - i11, translationX);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i10);
    }

    public static Animator e(View view, float f10, float f11, float f12) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f10, f11));
        ofPropertyValuesHolder.addListener(new a(view, f12));
        return ofPropertyValuesHolder;
    }

    public static Animator f(View view, float f10, float f11, float f12) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f10, f11));
        ofPropertyValuesHolder.addListener(new b(view, f12));
        return ofPropertyValuesHolder;
    }

    public static boolean j(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override
    @Nullable
    public Animator a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return d(viewGroup, view, this.f96097a, h(view.getContext()));
    }

    @Override
    @Nullable
    public Animator b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return c(viewGroup, view, this.f96097a, h(view.getContext()));
    }

    @Px
    public int g() {
        return this.f96098b;
    }

    public final int h(Context context) {
        int i10 = this.f96098b;
        return i10 != -1 ? i10 : context.getResources().getDimensionPixelSize(C15879a.f.f123347v6);
    }

    public int i() {
        return this.f96097a;
    }

    public void k(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.f96098b = i10;
    }

    public void l(int i10) {
        this.f96097a = i10;
    }
}
