package com.google.android.material.timepicker;

import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import com.google.android.material.timepicker.ChipTextInputComboView;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import w1.C15879a;

public class g implements ClockHandView.d, TimePickerView.g, TimePickerView.f, ClockHandView.c, i {

    public static final String[] f65299g = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"};

    public static final String[] f65300h = {ChipTextInputComboView.b.f65192c, "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22"};

    public static final String[] f65301i = {ChipTextInputComboView.b.f65192c, "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    public static final int f65302j = 30;

    public static final int f65303k = 6;

    public TimePickerView f65304b;

    public f f65305c;

    public float f65306d;

    public float f65307e;

    public boolean f65308f = false;

    public g(TimePickerView timePickerView, f fVar) {
        this.f65304b = timePickerView;
        this.f65305c = fVar;
        initialize();
    }

    @Override
    public void a() {
        this.f65307e = this.f65305c.d() * g();
        f fVar = this.f65305c;
        this.f65306d = fVar.f65296f * 6;
        j(fVar.f65297g, false);
        k();
    }

    @Override
    public void b(float f10, boolean z10) {
        this.f65308f = true;
        f fVar = this.f65305c;
        int i10 = fVar.f65296f;
        int i11 = fVar.f65295e;
        if (fVar.f65297g == 10) {
            this.f65304b.k(this.f65307e, false);
            if (!((AccessibilityManager) ContextCompat.getSystemService(this.f65304b.getContext(), AccessibilityManager.class)).isTouchExplorationEnabled()) {
                j(12, true);
            }
        } else {
            int round = Math.round(f10);
            if (!z10) {
                this.f65305c.l(((round + 15) / 30) * 5);
                this.f65306d = this.f65305c.f65296f * 6;
            }
            this.f65304b.k(this.f65306d, z10);
        }
        this.f65308f = false;
        k();
        i(i11, i10);
    }

    @Override
    public void c() {
        this.f65304b.setVisibility(8);
    }

    @Override
    public void d(int i10) {
        this.f65305c.m(i10);
    }

    @Override
    public void e(int i10) {
        j(i10, true);
    }

    @Override
    public void f(float f10, boolean z10) {
        if (this.f65308f) {
            return;
        }
        f fVar = this.f65305c;
        int i10 = fVar.f65295e;
        int i11 = fVar.f65296f;
        int round = Math.round(f10);
        f fVar2 = this.f65305c;
        if (fVar2.f65297g == 12) {
            fVar2.l((round + 3) / 6);
            this.f65306d = (float) Math.floor(this.f65305c.f65296f * 6);
        } else {
            this.f65305c.h((round + (g() / 2)) / g());
            this.f65307e = this.f65305c.d() * g();
        }
        if (z10) {
            return;
        }
        k();
        i(i10, i11);
    }

    public final int g() {
        return this.f65305c.f65294d == 1 ? 15 : 30;
    }

    public final String[] h() {
        return this.f65305c.f65294d == 1 ? f65300h : f65299g;
    }

    public final void i(int i10, int i11) {
        f fVar = this.f65305c;
        if (fVar.f65296f == i11 && fVar.f65295e == i10) {
            return;
        }
        this.f65304b.performHapticFeedback(4);
    }

    @Override
    public void initialize() {
        if (this.f65305c.f65294d == 0) {
            this.f65304b.t();
        }
        this.f65304b.i(this);
        this.f65304b.q(this);
        this.f65304b.p(this);
        this.f65304b.n(this);
        l();
        a();
    }

    public void j(int i10, boolean z10) {
        boolean z11 = i10 == 12;
        this.f65304b.j(z11);
        this.f65305c.f65297g = i10;
        this.f65304b.c(z11 ? f65301i : h(), z11 ? C15879a.m.f124073V : C15879a.m.f124069T);
        this.f65304b.k(z11 ? this.f65306d : this.f65307e, z10);
        this.f65304b.a(i10);
        this.f65304b.m(new a(this.f65304b.getContext(), C15879a.m.f124067S));
        this.f65304b.l(new a(this.f65304b.getContext(), C15879a.m.f124071U));
    }

    public final void k() {
        TimePickerView timePickerView = this.f65304b;
        f fVar = this.f65305c;
        timePickerView.b(fVar.f65298h, fVar.d(), this.f65305c.f65296f);
    }

    public final void l() {
        m(f65299g, f.f65291j);
        m(f65300h, f.f65291j);
        m(f65301i, f.f65290i);
    }

    public final void m(String[] strArr, String str) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            strArr[i10] = f.c(this.f65304b.getResources(), strArr[i10], str);
        }
    }

    @Override
    public void show() {
        this.f65304b.setVisibility(0);
    }
}
