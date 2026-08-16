package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.r;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;
import w1.C15879a;

public class ChipTextInputComboView extends FrameLayout implements Checkable {

    public final Chip f65187b;

    public final TextInputLayout f65188c;

    public final EditText f65189d;

    public TextWatcher f65190e;

    public TextView f65191f;

    public class b extends r {

        public static final String f65192c = "00";

        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f65187b.setText(ChipTextInputComboView.this.d(f65192c));
            } else {
                ChipTextInputComboView.this.f65187b.setText(ChipTextInputComboView.this.d(editable));
            }
        }
    }

    public ChipTextInputComboView(@NonNull Context context) {
        this(context, null);
    }

    public void c(InputFilter inputFilter) {
        InputFilter[] filters = this.f65189d.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f65189d.setFilters(inputFilterArr);
    }

    public final String d(CharSequence charSequence) {
        return f.b(getResources(), charSequence);
    }

    public TextInputLayout e() {
        return this.f65188c;
    }

    public void f(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f65187b, accessibilityDelegateCompat);
    }

    public void g(boolean z10) {
        this.f65189d.setCursorVisible(z10);
    }

    public void h(CharSequence charSequence) {
        this.f65191f.setText(charSequence);
    }

    public void i(CharSequence charSequence) {
        this.f65187b.setText(d(charSequence));
        if (TextUtils.isEmpty(this.f65189d.getText())) {
            return;
        }
        this.f65189d.removeTextChangedListener(this.f65190e);
        this.f65189d.setText((CharSequence) null);
        this.f65189d.addTextChangedListener(this.f65190e);
    }

    @Override
    public boolean isChecked() {
        return this.f65187b.isChecked();
    }

    public final void j() {
        this.f65189d.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        j();
    }

    @Override
    public void setChecked(boolean z10) {
        this.f65187b.setChecked(z10);
        this.f65189d.setVisibility(z10 ? 0 : 4);
        this.f65187b.setVisibility(z10 ? 8 : 0);
        if (isChecked()) {
            this.f65189d.requestFocus();
            if (TextUtils.isEmpty(this.f65189d.getText())) {
                return;
            }
            EditText editText = this.f65189d;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f65187b.setOnClickListener(onClickListener);
    }

    @Override
    public void setTag(int i10, Object obj) {
        this.f65187b.setTag(i10, obj);
    }

    @Override
    public void toggle() {
        this.f65187b.toggle();
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(C15879a.k.f123974b0, (ViewGroup) this, false);
        this.f65187b = chip;
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(C15879a.k.f123977c0, (ViewGroup) this, false);
        this.f65188c = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f65189d = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.f65190e = bVar;
        editText.addTextChangedListener(bVar);
        j();
        addView(chip);
        addView(textInputLayout);
        this.f65191f = (TextView) findViewById(C15879a.h.f123858x2);
        editText.setSaveEnabled(false);
    }
}
