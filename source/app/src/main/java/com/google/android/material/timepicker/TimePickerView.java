package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockHandView;
import java.util.Locale;
import w1.C15879a;

class TimePickerView extends ConstraintLayout implements h {

    public final Chip f65233b;

    public final Chip f65234c;

    public final ClockHandView f65235d;

    public final ClockFaceView f65236e;

    public final MaterialButtonToggleGroup f65237f;

    public final View.OnClickListener f65238g;

    public f f65239h;

    public g f65240i;

    public e f65241j;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (TimePickerView.this.f65240i != null) {
                TimePickerView.this.f65240i.e(((Integer) view.getTag(C15879a.h.f123874z4)).intValue());
            }
        }
    }

    public class b implements MaterialButtonToggleGroup.e {
        public b() {
        }

        @Override
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
            int i11 = i10 == C15879a.h.f123830t2 ? 1 : 0;
            if (TimePickerView.this.f65239h == null || !z10) {
                return;
            }
            TimePickerView.this.f65239h.d(i11);
        }
    }

    public class c extends GestureDetector.SimpleOnGestureListener {
        public c() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean onDoubleTap = super.onDoubleTap(motionEvent);
            if (TimePickerView.this.f65241j != null) {
                TimePickerView.this.f65241j.a();
            }
            return onDoubleTap;
        }
    }

    public class d implements View.OnTouchListener {

        public final GestureDetector f65245b;

        public d(GestureDetector gestureDetector) {
            this.f65245b = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f65245b.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public interface e {
        void a();
    }

    public interface f {
        void d(int i10);
    }

    public interface g {
        void e(int i10);
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    @Override
    public void a(int i10) {
        this.f65233b.setChecked(i10 == 12);
        this.f65234c.setChecked(i10 == 10);
    }

    @Override
    @SuppressLint({"DefaultLocale"})
    public void b(int i10, int i11, int i12) {
        this.f65237f.j(i10 == 1 ? C15879a.h.f123830t2 : C15879a.h.f123823s2);
        Locale locale = getResources().getConfiguration().locale;
        String format = String.format(locale, com.google.android.material.timepicker.f.f65290i, Integer.valueOf(i12));
        String format2 = String.format(locale, com.google.android.material.timepicker.f.f65290i, Integer.valueOf(i11));
        this.f65233b.setText(format);
        this.f65234c.setText(format2);
    }

    @Override
    public void c(String[] strArr, @StringRes int i10) {
        this.f65236e.c(strArr, i10);
    }

    @Override
    public void d(float f10) {
        this.f65235d.l(f10);
    }

    public void i(ClockHandView.d dVar) {
        this.f65235d.b(dVar);
    }

    public void j(boolean z10) {
        this.f65235d.j(z10);
    }

    public void k(float f10, boolean z10) {
        this.f65235d.m(f10, z10);
    }

    public void l(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f65233b, accessibilityDelegateCompat);
    }

    public void m(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f65234c, accessibilityDelegateCompat);
    }

    public void n(ClockHandView.c cVar) {
        this.f65235d.o(cVar);
    }

    public void o(@Nullable e eVar) {
        this.f65241j = eVar;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
    }

    @Override
    public void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            u();
        }
    }

    public void p(f fVar) {
        this.f65239h = fVar;
    }

    public void q(g gVar) {
        this.f65240i = gVar;
    }

    public final void r() {
        Chip chip = this.f65233b;
        int i10 = C15879a.h.f123874z4;
        chip.setTag(i10, 12);
        this.f65234c.setTag(i10, 10);
        this.f65233b.setOnClickListener(this.f65238g);
        this.f65234c.setOnClickListener(this.f65238g);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void s() {
        d dVar = new d(new GestureDetector(getContext(), new c()));
        this.f65233b.setOnTouchListener(dVar);
        this.f65234c.setOnTouchListener(dVar);
    }

    public void t() {
        this.f65237f.setVisibility(0);
    }

    public final void u() {
        if (this.f65237f.getVisibility() == 0) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(this);
            constraintSet.clear(C15879a.h.f123802p2, ViewCompat.getLayoutDirection(this) == 0 ? 2 : 1);
            constraintSet.applyTo(this);
        }
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f65238g = new a();
        LayoutInflater.from(context).inflate(C15879a.k.f123980d0, this);
        this.f65236e = (ClockFaceView) findViewById(C15879a.h.f123809q2);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(C15879a.h.f123837u2);
        this.f65237f = materialButtonToggleGroup;
        materialButtonToggleGroup.g(new b());
        this.f65233b = (Chip) findViewById(C15879a.h.f123872z2);
        this.f65234c = (Chip) findViewById(C15879a.h.f123851w2);
        this.f65235d = (ClockHandView) findViewById(C15879a.h.f123816r2);
        s();
        r();
    }
}
