package com.google.android.material.textfield;

import a2.C3567j;
import a2.C3572o;
import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.r;
import com.google.android.material.textfield.TextInputLayout;
import w1.C15879a;
import x1.C16046a;

public class b extends g2.c {

    public static final boolean f65147r = true;

    public static final int f65148s = 50;

    public static final int f65149t = 67;

    public final TextWatcher f65150e;

    public final View.OnFocusChangeListener f65151f;

    public final TextInputLayout.e f65152g;

    public final TextInputLayout.h f65153h;

    @SuppressLint({"ClickableViewAccessibility"})
    public final TextInputLayout.i f65154i;

    public boolean f65155j;

    public boolean f65156k;

    public long f65157l;

    public StateListDrawable f65158m;

    public C3567j f65159n;

    @Nullable
    public AccessibilityManager f65160o;

    public ValueAnimator f65161p;

    public ValueAnimator f65162q;

    public class a extends r {

        public class RunnableC0971a implements Runnable {

            public final AutoCompleteTextView f65164b;

            public RunnableC0971a(AutoCompleteTextView autoCompleteTextView) {
                this.f65164b = autoCompleteTextView;
            }

            @Override
            public void run() {
                boolean isPopupShowing = this.f65164b.isPopupShowing();
                b.this.E(isPopupShowing);
                b.this.f65155j = isPopupShowing;
            }
        }

        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView y10 = b.y(b.this.f88035a.getEditText());
            if (b.this.f65160o.isTouchExplorationEnabled() && b.D(y10) && !b.this.f88037c.hasFocus()) {
                y10.dismissDropDown();
            }
            y10.post(new RunnableC0971a(y10));
        }
    }

    public class C0972b implements ValueAnimator.AnimatorUpdateListener {
        public C0972b() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            b.this.f88037c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public class c implements View.OnFocusChangeListener {
        public c() {
        }

        @Override
        public void onFocusChange(View view, boolean z10) {
            b.this.f88035a.setEndIconActivated(z10);
            if (z10) {
                return;
            }
            b.this.E(false);
            b.this.f65155j = false;
        }
    }

    public class d extends TextInputLayout.e {
        public d(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!b.D(b.this.f88035a.getEditText())) {
                accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
            }
            if (accessibilityNodeInfoCompat.isShowingHintText()) {
                accessibilityNodeInfoCompat.setHintText(null);
            }
        }

        @Override
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            AutoCompleteTextView y10 = b.y(b.this.f88035a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && b.this.f65160o.isTouchExplorationEnabled() && !b.D(b.this.f88035a.getEditText())) {
                b.this.H(y10);
            }
        }
    }

    public class e implements TextInputLayout.h {
        public e() {
        }

        @Override
        public void a(@NonNull TextInputLayout textInputLayout) {
            AutoCompleteTextView y10 = b.y(textInputLayout.getEditText());
            b.this.F(y10);
            b.this.v(y10);
            b.this.G(y10);
            y10.setThreshold(0);
            y10.removeTextChangedListener(b.this.f65150e);
            y10.addTextChangedListener(b.this.f65150e);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!b.D(y10)) {
                ViewCompat.setImportantForAccessibility(b.this.f88037c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(b.this.f65152g);
            textInputLayout.setEndIconVisible(true);
        }
    }

    public class f implements TextInputLayout.i {

        public class a implements Runnable {

            public final AutoCompleteTextView f65171b;

            public a(AutoCompleteTextView autoCompleteTextView) {
                this.f65171b = autoCompleteTextView;
            }

            @Override
            public void run() {
                this.f65171b.removeTextChangedListener(b.this.f65150e);
            }
        }

        public f() {
        }

        @Override
        public void a(@NonNull TextInputLayout textInputLayout, int i10) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i10 != 3) {
                return;
            }
            autoCompleteTextView.post(new a(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == b.this.f65151f) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            if (b.f65147r) {
                autoCompleteTextView.setOnDismissListener(null);
            }
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View view) {
            b.this.H((AutoCompleteTextView) b.this.f88035a.getEditText());
        }
    }

    public class h implements View.OnTouchListener {

        public final AutoCompleteTextView f65174b;

        public h(AutoCompleteTextView autoCompleteTextView) {
            this.f65174b = autoCompleteTextView;
        }

        @Override
        public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (b.this.C()) {
                    b.this.f65155j = false;
                }
                b.this.H(this.f65174b);
            }
            return false;
        }
    }

    public class i implements AutoCompleteTextView.OnDismissListener {
        public i() {
        }

        @Override
        public void onDismiss() {
            b.this.f65155j = true;
            b.this.f65157l = System.currentTimeMillis();
            b.this.E(false);
        }
    }

    public class j extends AnimatorListenerAdapter {
        public j() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            b bVar = b.this;
            bVar.f88037c.setChecked(bVar.f65156k);
            b.this.f65162q.start();
        }
    }

    public b(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
        this.f65150e = new a();
        this.f65151f = new c();
        this.f65152g = new d(this.f88035a);
        this.f65153h = new e();
        this.f65154i = new f();
        this.f65155j = false;
        this.f65156k = false;
        this.f65157l = Long.MAX_VALUE;
    }

    private void B() {
        this.f65162q = z(67, 0.0f, 1.0f);
        ValueAnimator z10 = z(50, 1.0f, 0.0f);
        this.f65161p = z10;
        z10.addListener(new j());
    }

    public static boolean D(@NonNull EditText editText) {
        return editText.getKeyListener() != null;
    }

    @NonNull
    public static AutoCompleteTextView y(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    public final C3567j A(float f10, float f11, float f12, int i10) {
        C3572o m10 = C3572o.a().K(f10).P(f10).x(f11).C(f11).m();
        C3567j n10 = C3567j.n(this.f88036b, f12);
        n10.setShapeAppearanceModel(m10);
        n10.p0(0, i10, 0, i10);
        return n10;
    }

    public final boolean C() {
        long currentTimeMillis = System.currentTimeMillis() - this.f65157l;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    public final void E(boolean z10) {
        if (this.f65156k != z10) {
            this.f65156k = z10;
            this.f65162q.cancel();
            this.f65161p.start();
        }
    }

    public final void F(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (f65147r) {
            int boxBackgroundMode = this.f88035a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f65159n);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f65158m);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void G(@NonNull AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new h(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.f65151f);
        if (f65147r) {
            autoCompleteTextView.setOnDismissListener(new i());
        }
    }

    public final void H(@Nullable AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (C()) {
            this.f65155j = false;
        }
        if (this.f65155j) {
            this.f65155j = false;
            return;
        }
        if (f65147r) {
            E(!this.f65156k);
        } else {
            this.f65156k = !this.f65156k;
            this.f88037c.toggle();
        }
        if (!this.f65156k) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    @Override
    public void a() {
        float dimensionPixelOffset = this.f88036b.getResources().getDimensionPixelOffset(C15879a.f.f123076O5);
        float dimensionPixelOffset2 = this.f88036b.getResources().getDimensionPixelOffset(C15879a.f.f123377z4);
        int dimensionPixelOffset3 = this.f88036b.getResources().getDimensionPixelOffset(C15879a.f.f122971B4);
        C3567j A10 = A(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        C3567j A11 = A(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f65159n = A10;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f65158m = stateListDrawable;
        stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, A10);
        this.f65158m.addState(new int[0], A11);
        int i10 = this.f88038d;
        if (i10 == 0) {
            i10 = f65147r ? C15879a.g.f123441c1 : C15879a.g.f123444d1;
        }
        this.f88035a.setEndIconDrawable(i10);
        TextInputLayout textInputLayout = this.f88035a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C15879a.m.f124051K));
        this.f88035a.setEndIconOnClickListener(new g());
        this.f88035a.e(this.f65153h);
        this.f88035a.f(this.f65154i);
        B();
        this.f65160o = (AccessibilityManager) this.f88036b.getSystemService(Context.ACCESSIBILITY_SERVICE);
    }

    @Override
    public boolean b(int i10) {
        return i10 != 0;
    }

    @Override
    public boolean d() {
        return true;
    }

    public final void v(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (D(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.f88035a.getBoxBackgroundMode();
        C3567j boxBackground = this.f88035a.getBoxBackground();
        int d10 = J1.a.d(autoCompleteTextView, C15879a.c.f121898E2);
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            x(autoCompleteTextView, d10, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            w(autoCompleteTextView, d10, iArr, boxBackground);
        }
    }

    public final void w(@NonNull AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, @NonNull C3567j c3567j) {
        int boxBackgroundColor = this.f88035a.getBoxBackgroundColor();
        int[] iArr2 = {J1.a.h(i10, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f65147r) {
            ViewCompat.setBackground(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), c3567j, c3567j));
            return;
        }
        C3567j c3567j2 = new C3567j(c3567j.getShapeAppearanceModel());
        c3567j2.n0(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c3567j, c3567j2});
        int paddingStart = ViewCompat.getPaddingStart(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
        ViewCompat.setPaddingRelative(autoCompleteTextView, paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    public final void x(@NonNull AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, @NonNull C3567j c3567j) {
        LayerDrawable layerDrawable;
        int d10 = J1.a.d(autoCompleteTextView, C15879a.c.f122164T2);
        C3567j c3567j2 = new C3567j(c3567j.getShapeAppearanceModel());
        int h10 = J1.a.h(i10, d10, 0.1f);
        c3567j2.n0(new ColorStateList(iArr, new int[]{h10, 0}));
        if (f65147r) {
            c3567j2.setTint(d10);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{h10, d10});
            C3567j c3567j3 = new C3567j(c3567j.getShapeAppearanceModel());
            c3567j3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c3567j2, c3567j3), c3567j});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{c3567j2, c3567j});
        }
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
    }

    public final ValueAnimator z(int i10, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C16046a.f127888a);
        ofFloat.setDuration(i10);
        ofFloat.addUpdateListener(new C0972b());
        return ofFloat;
    }
}
