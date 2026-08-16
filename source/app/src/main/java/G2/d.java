package g2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;
import w1.C15879a;
import x1.C16046a;
import x1.C16047b;

public final class d {

    public static final int f88039A = 0;

    public static final int f88040B = 1;

    public static final int f88041C = 2;

    public static final int f88042v = 217;

    public static final int f88043w = 167;

    public static final int f88044x = 0;

    public static final int f88045y = 1;

    public static final int f88046z = 2;

    public final Context f88047a;

    @NonNull
    public final TextInputLayout f88048b;

    public LinearLayout f88049c;

    public int f88050d;

    public FrameLayout f88051e;

    @Nullable
    public Animator f88052f;

    public final float f88053g;

    public int f88054h;

    public int f88055i;

    @Nullable
    public CharSequence f88056j;

    public boolean f88057k;

    @Nullable
    public TextView f88058l;

    @Nullable
    public CharSequence f88059m;

    public int f88060n;

    @Nullable
    public ColorStateList f88061o;

    public CharSequence f88062p;

    public boolean f88063q;

    @Nullable
    public TextView f88064r;

    public int f88065s;

    @Nullable
    public ColorStateList f88066t;

    public Typeface f88067u;

    public class a extends AnimatorListenerAdapter {

        public final int f88068a;

        public final TextView f88069b;

        public final int f88070c;

        public final TextView f88071d;

        public a(int i10, TextView textView, int i11, TextView textView2) {
            this.f88068a = i10;
            this.f88069b = textView;
            this.f88070c = i11;
            this.f88071d = textView2;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            d.this.f88054h = this.f88068a;
            d.this.f88052f = null;
            TextView textView = this.f88069b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f88070c == 1 && d.this.f88058l != null) {
                    d.this.f88058l.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f88071d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f88071d.setAlpha(1.0f);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f88071d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public d(@NonNull TextInputLayout textInputLayout) {
        this.f88047a = textInputLayout.getContext();
        this.f88048b = textInputLayout;
        this.f88053g = r0.getResources().getDimensionPixelSize(C15879a.f.f123024I1);
    }

    public final boolean A(int i10) {
        return (i10 != 2 || this.f88064r == null || TextUtils.isEmpty(this.f88062p)) ? false : true;
    }

    public boolean B(int i10) {
        return i10 == 0 || i10 == 1;
    }

    public boolean C() {
        return this.f88057k;
    }

    public boolean D() {
        return this.f88063q;
    }

    public void E(TextView textView, int i10) {
        FrameLayout frameLayout;
        if (this.f88049c == null) {
            return;
        }
        if (!B(i10) || (frameLayout = this.f88051e) == null) {
            this.f88049c.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i11 = this.f88050d - 1;
        this.f88050d = i11;
        P(this.f88049c, i11);
    }

    public final void F(int i10, int i11) {
        TextView m10;
        TextView m11;
        if (i10 == i11) {
            return;
        }
        if (i11 != 0 && (m11 = m(i11)) != null) {
            m11.setVisibility(0);
            m11.setAlpha(1.0f);
        }
        if (i10 != 0 && (m10 = m(i10)) != null) {
            m10.setVisibility(4);
            if (i10 == 1) {
                m10.setText((CharSequence) null);
            }
        }
        this.f88054h = i11;
    }

    public void G(@Nullable CharSequence charSequence) {
        this.f88059m = charSequence;
        TextView textView = this.f88058l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    public void H(boolean z10) {
        if (this.f88057k == z10) {
            return;
        }
        g();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f88047a);
            this.f88058l = appCompatTextView;
            appCompatTextView.setId(C15879a.h.f123875z5);
            this.f88058l.setTextAlignment(5);
            Typeface typeface = this.f88067u;
            if (typeface != null) {
                this.f88058l.setTypeface(typeface);
            }
            I(this.f88060n);
            J(this.f88061o);
            G(this.f88059m);
            this.f88058l.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f88058l, 1);
            d(this.f88058l, 0);
        } else {
            x();
            E(this.f88058l, 0);
            this.f88058l = null;
            this.f88048b.K0();
            this.f88048b.X0();
        }
        this.f88057k = z10;
    }

    public void I(@StyleRes int i10) {
        this.f88060n = i10;
        TextView textView = this.f88058l;
        if (textView != null) {
            this.f88048b.w0(textView, i10);
        }
    }

    public void J(@Nullable ColorStateList colorStateList) {
        this.f88061o = colorStateList;
        TextView textView = this.f88058l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public void K(@StyleRes int i10) {
        this.f88065s = i10;
        TextView textView = this.f88064r;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i10);
        }
    }

    public void L(boolean z10) {
        if (this.f88063q == z10) {
            return;
        }
        g();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f88047a);
            this.f88064r = appCompatTextView;
            appCompatTextView.setId(C15879a.h.f123517A5);
            this.f88064r.setTextAlignment(5);
            Typeface typeface = this.f88067u;
            if (typeface != null) {
                this.f88064r.setTypeface(typeface);
            }
            this.f88064r.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f88064r, 1);
            K(this.f88065s);
            M(this.f88066t);
            d(this.f88064r, 1);
        } else {
            y();
            E(this.f88064r, 1);
            this.f88064r = null;
            this.f88048b.K0();
            this.f88048b.X0();
        }
        this.f88063q = z10;
    }

    public void M(@Nullable ColorStateList colorStateList) {
        this.f88066t = colorStateList;
        TextView textView = this.f88064r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    public final void N(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    public void O(Typeface typeface) {
        if (typeface != this.f88067u) {
            this.f88067u = typeface;
            N(this.f88058l, typeface);
            N(this.f88064r, typeface);
        }
    }

    public final void P(@NonNull ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    public final boolean Q(@Nullable TextView textView, @Nullable CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f88048b) && this.f88048b.isEnabled() && !(this.f88055i == this.f88054h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    public void R(CharSequence charSequence) {
        g();
        this.f88056j = charSequence;
        this.f88058l.setText(charSequence);
        int i10 = this.f88054h;
        if (i10 != 1) {
            this.f88055i = 1;
        }
        T(i10, this.f88055i, Q(this.f88058l, charSequence));
    }

    public void S(CharSequence charSequence) {
        g();
        this.f88062p = charSequence;
        this.f88064r.setText(charSequence);
        int i10 = this.f88054h;
        if (i10 != 2) {
            this.f88055i = 2;
        }
        T(i10, this.f88055i, Q(this.f88064r, charSequence));
    }

    public final void T(int i10, int i11, boolean z10) {
        if (i10 == i11) {
            return;
        }
        if (z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f88052f = animatorSet;
            ArrayList arrayList = new ArrayList();
            h(arrayList, this.f88063q, this.f88064r, 2, i10, i11);
            h(arrayList, this.f88057k, this.f88058l, 1, i10, i11);
            C16047b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i11, m(i10), i10, m(i11)));
            animatorSet.start();
        } else {
            F(i10, i11);
        }
        this.f88048b.K0();
        this.f88048b.N0(z10);
        this.f88048b.X0();
    }

    public void d(TextView textView, int i10) {
        if (this.f88049c == null && this.f88051e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f88047a);
            this.f88049c = linearLayout;
            linearLayout.setOrientation(0);
            this.f88048b.addView(this.f88049c, -1, -2);
            this.f88051e = new FrameLayout(this.f88047a);
            this.f88049c.addView(this.f88051e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f88048b.getEditText() != null) {
                e();
            }
        }
        if (B(i10)) {
            this.f88051e.setVisibility(0);
            this.f88051e.addView(textView);
        } else {
            this.f88049c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f88049c.setVisibility(0);
        this.f88050d++;
    }

    public void e() {
        if (f()) {
            EditText editText = this.f88048b.getEditText();
            boolean g10 = X1.c.g(this.f88047a);
            LinearLayout linearLayout = this.f88049c;
            int i10 = C15879a.f.f123367y2;
            ViewCompat.setPaddingRelative(linearLayout, u(g10, i10, ViewCompat.getPaddingStart(editText)), u(g10, C15879a.f.f123375z2, this.f88047a.getResources().getDimensionPixelSize(C15879a.f.f123359x2)), u(g10, i10, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    public final boolean f() {
        return (this.f88049c == null || this.f88048b.getEditText() == null) ? false : true;
    }

    public void g() {
        Animator animator = this.f88052f;
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void h(@NonNull List<Animator> list, boolean z10, @Nullable TextView textView, int i10, int i11, int i12) {
        if (textView == null || !z10) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            list.add(i(textView, i12 == i10));
            if (i12 == i10) {
                list.add(j(textView));
            }
        }
    }

    public final ObjectAnimator i(TextView textView, boolean z10) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z10 ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C16046a.f127888a);
        return ofFloat;
    }

    public final ObjectAnimator j(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f88053g, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(C16046a.f127891d);
        return ofFloat;
    }

    public boolean k() {
        return z(this.f88054h);
    }

    public boolean l() {
        return z(this.f88055i);
    }

    @Nullable
    public final TextView m(int i10) {
        if (i10 == 1) {
            return this.f88058l;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f88064r;
    }

    @Nullable
    public CharSequence n() {
        return this.f88059m;
    }

    @Nullable
    public CharSequence o() {
        return this.f88056j;
    }

    @ColorInt
    public int p() {
        TextView textView = this.f88058l;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    public ColorStateList q() {
        TextView textView = this.f88058l;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    public CharSequence r() {
        return this.f88062p;
    }

    @Nullable
    public ColorStateList s() {
        TextView textView = this.f88064r;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    @ColorInt
    public int t() {
        TextView textView = this.f88064r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    public final int u(boolean z10, @DimenRes int i10, int i11) {
        return z10 ? this.f88047a.getResources().getDimensionPixelSize(i10) : i11;
    }

    public boolean v() {
        return A(this.f88054h);
    }

    public boolean w() {
        return A(this.f88055i);
    }

    public void x() {
        this.f88056j = null;
        g();
        if (this.f88054h == 1) {
            if (!this.f88063q || TextUtils.isEmpty(this.f88062p)) {
                this.f88055i = 0;
            } else {
                this.f88055i = 2;
            }
        }
        T(this.f88054h, this.f88055i, Q(this.f88058l, null));
    }

    public void y() {
        g();
        int i10 = this.f88054h;
        if (i10 == 2) {
            this.f88055i = 0;
        }
        T(i10, this.f88055i, Q(this.f88064r, null));
    }

    public final boolean z(int i10) {
        return (i10 != 1 || this.f88058l == null || TextUtils.isEmpty(this.f88056j)) ? false : true;
    }
}
