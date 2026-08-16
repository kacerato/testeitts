package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.textfield.TextInputLayout;
import w1.C15879a;
import x1.C16046a;

public class a extends g2.c {

    public static final int f65127k = 100;

    public static final int f65128l = 150;

    public static final float f65129m = 0.8f;

    public final TextWatcher f65130e;

    public final View.OnFocusChangeListener f65131f;

    public final TextInputLayout.h f65132g;

    public final TextInputLayout.i f65133h;

    public AnimatorSet f65134i;

    public ValueAnimator f65135j;

    public class C0969a implements TextWatcher {
        public C0969a() {
        }

        @Override
        public void afterTextChanged(@NonNull Editable editable) {
            if (a.this.f88035a.getSuffixText() != null) {
                return;
            }
            a aVar = a.this;
            aVar.i(aVar.m());
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public class b implements View.OnFocusChangeListener {
        public b() {
        }

        @Override
        public void onFocusChange(View view, boolean z10) {
            a aVar = a.this;
            aVar.i(aVar.m());
        }
    }

    public class c implements TextInputLayout.h {
        public c() {
        }

        @Override
        public void a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(a.this.m());
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(a.this.f65131f);
            a aVar = a.this;
            aVar.f88037c.setOnFocusChangeListener(aVar.f65131f);
            editText.removeTextChangedListener(a.this.f65130e);
            editText.addTextChangedListener(a.this.f65130e);
        }
    }

    public class d implements TextInputLayout.i {

        public class RunnableC0970a implements Runnable {

            public final EditText f65140b;

            public RunnableC0970a(EditText editText) {
                this.f65140b = editText;
            }

            @Override
            public void run() {
                this.f65140b.removeTextChangedListener(a.this.f65130e);
            }
        }

        public d() {
        }

        @Override
        public void a(@NonNull TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i10 != 2) {
                return;
            }
            editText.post(new RunnableC0970a(editText));
            if (editText.getOnFocusChangeListener() == a.this.f65131f) {
                editText.setOnFocusChangeListener(null);
            }
            if (a.this.f88037c.getOnFocusChangeListener() == a.this.f65131f) {
                a.this.f88037c.setOnFocusChangeListener(null);
            }
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            Editable text = a.this.f88035a.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            a.this.f88035a.j0();
        }
    }

    public class f extends AnimatorListenerAdapter {
        public f() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            a.this.f88035a.setEndIconVisible(true);
        }
    }

    public class g extends AnimatorListenerAdapter {
        public g() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            a.this.f88035a.setEndIconVisible(false);
        }
    }

    public class h implements ValueAnimator.AnimatorUpdateListener {
        public h() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            a.this.f88037c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public class i implements ValueAnimator.AnimatorUpdateListener {
        public i() {
        }

        @Override
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            a.this.f88037c.setScaleX(floatValue);
            a.this.f88037c.setScaleY(floatValue);
        }
    }

    public a(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
        this.f65130e = new C0969a();
        this.f65131f = new b();
        this.f65132g = new c();
        this.f65133h = new d();
    }

    @Override
    public void a() {
        TextInputLayout textInputLayout = this.f88035a;
        int i10 = this.f88038d;
        if (i10 == 0) {
            i10 = C15879a.g.f123450f1;
        }
        textInputLayout.setEndIconDrawable(i10);
        TextInputLayout textInputLayout2 = this.f88035a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(C15879a.m.f124047I));
        this.f88035a.setEndIconOnClickListener(new e());
        this.f88035a.e(this.f65132g);
        this.f88035a.f(this.f65133h);
        l();
    }

    @Override
    public void c(boolean z10) {
        if (this.f88035a.getSuffixText() == null) {
            return;
        }
        i(z10);
    }

    public final void i(boolean z10) {
        boolean z11 = this.f88035a.Q() == z10;
        if (z10 && !this.f65134i.isRunning()) {
            this.f65135j.cancel();
            this.f65134i.start();
            if (z11) {
                this.f65134i.end();
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        this.f65134i.cancel();
        this.f65135j.start();
        if (z11) {
            this.f65135j.end();
        }
    }

    public final ValueAnimator j(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C16046a.f127888a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new h());
        return ofFloat;
    }

    public final ValueAnimator k() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(C16046a.f127891d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new i());
        return ofFloat;
    }

    public final void l() {
        ValueAnimator k10 = k();
        ValueAnimator j10 = j(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f65134i = animatorSet;
        animatorSet.playTogether(k10, j10);
        this.f65134i.addListener(new f());
        ValueAnimator j11 = j(1.0f, 0.0f);
        this.f65135j = j11;
        j11.addListener(new g());
    }

    public final boolean m() {
        EditText editText = this.f88035a.getEditText();
        return editText != null && (editText.hasFocus() || this.f88037c.hasFocus()) && editText.getText().length() > 0;
    }
}
