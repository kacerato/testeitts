package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;

public class j implements TextView.OnEditorActionListener, View.OnKeyListener {

    public final ChipTextInputComboView f65309b;

    public final ChipTextInputComboView f65310c;

    public final f f65311d;

    public boolean f65312e = false;

    public j(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, f fVar) {
        this.f65309b = chipTextInputComboView;
        this.f65310c = chipTextInputComboView2;
        this.f65311d = fVar;
    }

    public void a() {
        TextInputLayout e10 = this.f65309b.e();
        TextInputLayout e11 = this.f65310c.e();
        EditText editText = e10.getEditText();
        EditText editText2 = e11.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    public final void b(int i10) {
        this.f65310c.setChecked(i10 == 12);
        this.f65309b.setChecked(i10 == 10);
        this.f65311d.f65297g = i10;
    }

    public final boolean c(int i10, KeyEvent keyEvent, EditText editText) {
        Editable text = editText.getText();
        if (text == null || i10 < 7 || i10 > 16 || keyEvent.getAction() != 1 || editText.getSelectionStart() != 2 || text.length() != 2) {
            return false;
        }
        b(12);
        return true;
    }

    public final boolean d(int i10, KeyEvent keyEvent, EditText editText) {
        if (i10 != 67 || keyEvent.getAction() != 0 || !TextUtils.isEmpty(editText.getText())) {
            return false;
        }
        b(10);
        return true;
    }

    @Override
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        boolean z10 = i10 == 5;
        if (z10) {
            b(12);
        }
        return z10;
    }

    @Override
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (this.f65312e) {
            return false;
        }
        this.f65312e = true;
        EditText editText = (EditText) view;
        boolean d10 = this.f65311d.f65297g == 12 ? d(i10, keyEvent, editText) : c(i10, keyEvent, editText);
        this.f65312e = false;
        return d10;
    }
}
