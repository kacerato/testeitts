package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.internal.r;
import com.google.android.material.textfield.TextInputLayout;
import w1.C15879a;

public class c extends g2.c {

    public final TextWatcher f65178e;

    public final TextInputLayout.h f65179f;

    public final TextInputLayout.i f65180g;

    public class a extends r {
        public a() {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            c.this.f88037c.setChecked(!r1.g());
        }
    }

    public class b implements TextInputLayout.h {
        public b() {
        }

        @Override
        public void a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            c.this.f88037c.setChecked(!r4.g());
            editText.removeTextChangedListener(c.this.f65178e);
            editText.addTextChangedListener(c.this.f65178e);
        }
    }

    public class C0973c implements TextInputLayout.i {

        public class a implements Runnable {

            public final EditText f65184b;

            public a(EditText editText) {
                this.f65184b = editText;
            }

            @Override
            public void run() {
                this.f65184b.removeTextChangedListener(c.this.f65178e);
            }
        }

        public C0973c() {
        }

        @Override
        public void a(@NonNull TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i10 != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            EditText editText = c.this.f88035a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (c.this.g()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            c.this.f88035a.j0();
        }
    }

    public c(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
        this.f65178e = new a();
        this.f65179f = new b();
        this.f65180g = new C0973c();
    }

    public static boolean h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override
    public void a() {
        TextInputLayout textInputLayout = this.f88035a;
        int i10 = this.f88038d;
        if (i10 == 0) {
            i10 = C15879a.g.f123400J0;
        }
        textInputLayout.setEndIconDrawable(i10);
        TextInputLayout textInputLayout2 = this.f88035a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(C15879a.m.f124070T0));
        this.f88035a.setEndIconOnClickListener(new d());
        this.f88035a.e(this.f65179f);
        this.f88035a.f(this.f65180g);
        EditText editText = this.f88035a.getEditText();
        if (h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    public final boolean g() {
        EditText editText = this.f88035a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }
}
