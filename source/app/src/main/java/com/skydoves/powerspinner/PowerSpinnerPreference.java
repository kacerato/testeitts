package com.skydoves.powerspinner;

import Lf.k;
import Mf.r;
import Od.g;
import Od.n;
import Od.o;
import Od.p;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import androidx.preference.R;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class PowerSpinnerPreference extends Preference {

    @NotNull
    public final PowerSpinnerView f83557b;

    public int f83558c;

    public static final class a extends O implements r<Integer, Object, Integer, Object, P0> {
        public a() {
            super(4);
        }

        public final void b(int i10, @Nullable Object obj, int i11, @NotNull Object obj2) {
            M.p(obj2, "<anonymous parameter 3>");
            PowerSpinnerPreference.this.persistInt(i11);
        }

        @Override
        public P0 invoke(Integer num, Object obj, Integer num2, Object obj2) {
            b(num.intValue(), obj, num2.intValue(), obj2);
            return P0.f98194a;
        }
    }

    public static final class b<T> extends O implements r<Integer, T, Integer, T, P0> {

        public final g f83561c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(g gVar) {
            super(4);
            this.f83561c = gVar;
        }

        public final void b(int i10, @Nullable T t10, int i11, T t11) {
            this.f83561c.a(i10, t10, i11, t11);
            PowerSpinnerPreference.this.persistInt(i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public P0 invoke(Integer num, Object obj, Integer num2, Object obj2) {
            b(num.intValue(), obj, num2.intValue(), obj2);
            return P0.f98194a;
        }
    }

    public static final class c<T> extends O implements r<Integer, T, Integer, T, P0> {

        public final r f83563c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(r rVar) {
            super(4);
            this.f83563c = rVar;
        }

        public final void b(int i10, @Nullable T t10, int i11, T t11) {
            this.f83563c.invoke(Integer.valueOf(i10), t10, Integer.valueOf(i11), t11);
            PowerSpinnerPreference.this.persistInt(i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public P0 invoke(Integer num, Object obj, Integer num2, Object obj2) {
            b(num.intValue(), obj, num2.intValue(), obj2);
            return P0.f98194a;
        }
    }

    @k
    public PowerSpinnerPreference(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    public final void b(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, n.m.f18331Y6);
        M.o(obtainStyledAttributes, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)");
        try {
            h(obtainStyledAttributes);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final void c(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, n.m.f18331Y6, i10, 0);
        M.o(obtainStyledAttributes, "context.obtainStyledAttr\u2026fStyleAttr,\n      0\n    )");
        try {
            h(obtainStyledAttributes);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NotNull
    public final PowerSpinnerView d() {
        return this.f83557b;
    }

    public final <T> void e(r<? super Integer, ? super T, ? super Integer, ? super T, P0> block) {
        M.p(block, "block");
        this.f83557b.setOnSpinnerItemSelectedListener(new c(block));
    }

    public final <T> void g(@NotNull g<T> onSpinnerItemSelectedListener) {
        M.p(onSpinnerItemSelectedListener, "onSpinnerItemSelectedListener");
        this.f83557b.setOnSpinnerItemSelectedListener(new b(onSpinnerItemSelectedListener));
    }

    public final void h(TypedArray typedArray) {
        PowerSpinnerView powerSpinnerView = this.f83557b;
        powerSpinnerView.setShowArrow(typedArray.getBoolean(n.m.f18408e7, powerSpinnerView.getShowArrow()));
        int integer = typedArray.getInteger(n.m.f18382c7, this.f83557b.getArrowGravity().a());
        p pVar = p.START;
        if (integer == pVar.a()) {
            this.f83557b.setArrowGravity(pVar);
        } else {
            p pVar2 = p.TOP;
            if (integer == pVar2.a()) {
                this.f83557b.setArrowGravity(pVar2);
            } else {
                p pVar3 = p.END;
                if (integer == pVar3.a()) {
                    this.f83557b.setArrowGravity(pVar3);
                } else {
                    p pVar4 = p.BOTTOM;
                    if (integer == pVar4.a()) {
                        this.f83557b.setArrowGravity(pVar4);
                    }
                }
            }
        }
        PowerSpinnerView powerSpinnerView2 = this.f83557b;
        powerSpinnerView2.setArrowPadding(typedArray.getDimensionPixelSize(n.m.f18395d7, powerSpinnerView2.getArrowPadding()));
        PowerSpinnerView powerSpinnerView3 = this.f83557b;
        powerSpinnerView3.setArrowAnimate(typedArray.getBoolean(n.m.f18343Z6, powerSpinnerView3.getArrowAnimate()));
        this.f83557b.setArrowAnimationDuration(typedArray.getInteger(n.m.f18356a7, (int) r0.getArrowAnimationDuration()));
        PowerSpinnerView powerSpinnerView4 = this.f83557b;
        powerSpinnerView4.setShowDivider(typedArray.getBoolean(n.m.f18473j7, powerSpinnerView4.getShowDivider()));
        PowerSpinnerView powerSpinnerView5 = this.f83557b;
        powerSpinnerView5.setDividerSize(typedArray.getDimensionPixelSize(n.m.f18486k7, powerSpinnerView5.getDividerSize()));
        PowerSpinnerView powerSpinnerView6 = this.f83557b;
        powerSpinnerView6.setDividerColor(typedArray.getColor(n.m.f18460i7, powerSpinnerView6.getDividerColor()));
        PowerSpinnerView powerSpinnerView7 = this.f83557b;
        powerSpinnerView7.setSpinnerPopupBackgroundColor(typedArray.getColor(n.m.f18538o7, powerSpinnerView7.getSpinnerPopupBackgroundColor()));
        int integer2 = typedArray.getInteger(n.m.f18512m7, this.f83557b.getSpinnerPopupAnimation().a());
        o oVar = o.DROPDOWN;
        if (integer2 == oVar.a()) {
            this.f83557b.setSpinnerPopupAnimation(oVar);
        } else {
            o oVar2 = o.FADE;
            if (integer2 == oVar2.a()) {
                this.f83557b.setSpinnerPopupAnimation(oVar2);
            } else {
                o oVar3 = o.BOUNCE;
                if (integer2 == oVar3.a()) {
                    this.f83557b.setSpinnerPopupAnimation(oVar3);
                }
            }
        }
        PowerSpinnerView powerSpinnerView8 = this.f83557b;
        powerSpinnerView8.setSpinnerPopupAnimationStyle(typedArray.getResourceId(n.m.f18525n7, powerSpinnerView8.getSpinnerPopupAnimationStyle()));
        PowerSpinnerView powerSpinnerView9 = this.f83557b;
        powerSpinnerView9.setSpinnerPopupWidth(typedArray.getDimensionPixelSize(n.m.f18577r7, powerSpinnerView9.getSpinnerPopupWidth()));
        PowerSpinnerView powerSpinnerView10 = this.f83557b;
        powerSpinnerView10.setSpinnerPopupHeight(typedArray.getDimensionPixelSize(n.m.f18564q7, powerSpinnerView10.getSpinnerPopupHeight()));
        PowerSpinnerView powerSpinnerView11 = this.f83557b;
        powerSpinnerView11.setSpinnerPopupElevation(typedArray.getDimensionPixelSize(n.m.f18551p7, powerSpinnerView11.getSpinnerPopupElevation()));
        int resourceId = typedArray.getResourceId(n.m.f18499l7, -1);
        if (resourceId != -1) {
            this.f83557b.setItems(resourceId);
        }
        PowerSpinnerView powerSpinnerView12 = this.f83557b;
        powerSpinnerView12.setDismissWhenNotifiedItemSelected(typedArray.getBoolean(n.m.f18447h7, powerSpinnerView12.getDismissWhenNotifiedItemSelected()));
    }

    @Override
    public void onBindViewHolder(@Nullable PreferenceViewHolder preferenceViewHolder) {
        PowerSpinnerView powerSpinnerView = this.f83557b;
        powerSpinnerView.r(getPersistedInt(this.f83558c));
        if (powerSpinnerView.getSpinnerAdapter().d() == null) {
            powerSpinnerView.setOnSpinnerItemSelectedListener(new a());
        }
        if (preferenceViewHolder != null) {
            View findViewById = preferenceViewHolder.findViewById(n.g.f17440Z0);
            if (findViewById == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup");
            }
            ((ViewGroup) findViewById).addView(this.f83557b, -1, -2);
            View findViewById2 = preferenceViewHolder.findViewById(n.g.f17444a1);
            if (findViewById2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
            }
            TextView textView = (TextView) findViewById2;
            textView.setText(getTitle());
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            PowerSpinnerView powerSpinnerView2 = this.f83557b;
            int marginStart = marginLayoutParams.getMarginStart();
            Context context = getContext();
            M.o(context, "context");
            int c10 = Od.a.c(context, 10);
            int marginEnd = marginLayoutParams.getMarginEnd();
            Context context2 = getContext();
            M.o(context2, "context");
            powerSpinnerView2.setPadding(marginStart, c10, marginEnd, Od.a.c(context2, 10));
        }
    }

    @Override
    @NotNull
    public Object onGetDefaultValue(@NotNull TypedArray a10, int i10) {
        M.p(a10, "a");
        return Integer.valueOf(a10.getInt(i10, 0));
    }

    @Override
    public void onSetInitialValue(@Nullable Object obj) {
        super.onSetInitialValue(obj);
        if (obj instanceof Integer) {
            this.f83558c = ((Number) obj).intValue();
        }
    }

    @k
    public PowerSpinnerPreference(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public PowerSpinnerPreference(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.preferenceStyle : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public PowerSpinnerPreference(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.f83557b = new PowerSpinnerView(context);
        setLayoutResource(n.j.f17548H);
        if (attributeSet != null && i10 != R.attr.preferenceStyle) {
            c(attributeSet, i10);
        } else if (attributeSet != null) {
            b(attributeSet);
        }
    }
}
