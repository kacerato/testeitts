package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.r;
import com.google.android.material.timepicker.TimePickerView;
import java.lang.reflect.Field;
import java.util.Locale;
import w1.C15879a;

public class k implements TimePickerView.g, i {

    public final LinearLayout f65313b;

    public final f f65314c;

    public final TextWatcher f65315d = new a();

    public final TextWatcher f65316e = new b();

    public final ChipTextInputComboView f65317f;

    public final ChipTextInputComboView f65318g;

    public final j f65319h;

    public final EditText f65320i;

    public final EditText f65321j;

    public MaterialButtonToggleGroup f65322k;

    public class a extends r {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    k.this.f65314c.l(0);
                } else {
                    k.this.f65314c.l(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public class b extends r {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    k.this.f65314c.h(0);
                } else {
                    k.this.f65314c.h(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            k.this.e(((Integer) view.getTag(C15879a.h.f123874z4)).intValue());
        }
    }

    public class d implements MaterialButtonToggleGroup.e {
        public d() {
        }

        @Override
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
            k.this.f65314c.m(i10 == C15879a.h.f123830t2 ? 1 : 0);
        }
    }

    public k(LinearLayout linearLayout, f fVar) {
        this.f65313b = linearLayout;
        this.f65314c = fVar;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(C15879a.h.f123865y2);
        this.f65317f = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(C15879a.h.f123844v2);
        this.f65318g = chipTextInputComboView2;
        int i10 = C15879a.h.f123858x2;
        TextView textView = (TextView) chipTextInputComboView.findViewById(i10);
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(i10);
        textView.setText(resources.getString(C15879a.m.f124096g0));
        textView2.setText(resources.getString(C15879a.m.f124094f0));
        int i11 = C15879a.h.f123874z4;
        chipTextInputComboView.setTag(i11, 12);
        chipTextInputComboView2.setTag(i11, 10);
        if (fVar.f65294d == 0) {
            k();
        }
        c cVar = new c();
        chipTextInputComboView2.setOnClickListener(cVar);
        chipTextInputComboView.setOnClickListener(cVar);
        chipTextInputComboView2.c(fVar.e());
        chipTextInputComboView.c(fVar.f());
        this.f65320i = chipTextInputComboView2.e().getEditText();
        this.f65321j = chipTextInputComboView.e().getEditText();
        this.f65319h = new j(chipTextInputComboView2, chipTextInputComboView, fVar);
        chipTextInputComboView2.f(new com.google.android.material.timepicker.a(linearLayout.getContext(), C15879a.m.f124067S));
        chipTextInputComboView.f(new com.google.android.material.timepicker.a(linearLayout.getContext(), C15879a.m.f124071U));
        initialize();
    }

    public static void i(EditText editText, @ColorInt int i10) {
        try {
            Context context = editText.getContext();
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i11 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable drawable = AppCompatResources.getDrawable(context, i11);
            drawable.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{drawable, drawable});
        } catch (Throwable unused) {
        }
    }

    @Override
    public void a() {
        j(this.f65314c);
    }

    @Override
    public void c() {
        View focusedChild = this.f65313b.getFocusedChild();
        if (focusedChild == null) {
            this.f65313b.setVisibility(8);
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(this.f65313b.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        this.f65313b.setVisibility(8);
    }

    public final void d() {
        this.f65320i.addTextChangedListener(this.f65316e);
        this.f65321j.addTextChangedListener(this.f65315d);
    }

    @Override
    public void e(int i10) {
        this.f65314c.f65297g = i10;
        this.f65317f.setChecked(i10 == 12);
        this.f65318g.setChecked(i10 == 10);
        l();
    }

    public void f() {
        this.f65317f.setChecked(false);
        this.f65318g.setChecked(false);
    }

    public final void g() {
        this.f65320i.removeTextChangedListener(this.f65316e);
        this.f65321j.removeTextChangedListener(this.f65315d);
    }

    public void h() {
        this.f65317f.setChecked(this.f65314c.f65297g == 12);
        this.f65318g.setChecked(this.f65314c.f65297g == 10);
    }

    @Override
    public void initialize() {
        d();
        j(this.f65314c);
        this.f65319h.a();
    }

    public final void j(f fVar) {
        g();
        Locale locale = this.f65313b.getResources().getConfiguration().locale;
        String format = String.format(locale, f.f65290i, Integer.valueOf(fVar.f65296f));
        String format2 = String.format(locale, f.f65290i, Integer.valueOf(fVar.d()));
        this.f65317f.i(format);
        this.f65318g.i(format2);
        d();
        l();
    }

    public final void k() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f65313b.findViewById(C15879a.h.f123837u2);
        this.f65322k = materialButtonToggleGroup;
        materialButtonToggleGroup.g(new d());
        this.f65322k.setVisibility(0);
        l();
    }

    public final void l() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f65322k;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.j(this.f65314c.f65298h == 0 ? C15879a.h.f123823s2 : C15879a.h.f123830t2);
    }

    @Override
    public void show() {
        this.f65313b.setVisibility(0);
    }
}
