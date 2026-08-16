package com.google.android.material.timepicker;

import a2.C3567j;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import w1.C15879a;

public final class b extends DialogFragment {

    public static final int f65248t = 0;

    public static final int f65249u = 1;

    public static final String f65250v = "TIME_PICKER_TIME_MODEL";

    public static final String f65251w = "TIME_PICKER_INPUT_MODE";

    public static final String f65252x = "TIME_PICKER_TITLE_RES";

    public static final String f65253y = "TIME_PICKER_TITLE_TEXT";

    public static final String f65254z = "TIME_PICKER_OVERRIDE_THEME_RES_ID";

    public TimePickerView f65259f;

    public ViewStub f65260g;

    @Nullable
    public g f65261h;

    @Nullable
    public k f65262i;

    @Nullable
    public i f65263j;

    @DrawableRes
    public int f65264k;

    @DrawableRes
    public int f65265l;

    public String f65267n;

    public MaterialButton f65268o;

    public Button f65269p;

    public f f65271r;

    public final Set<View.OnClickListener> f65255b = new LinkedHashSet();

    public final Set<View.OnClickListener> f65256c = new LinkedHashSet();

    public final Set<DialogInterface.OnCancelListener> f65257d = new LinkedHashSet();

    public final Set<DialogInterface.OnDismissListener> f65258e = new LinkedHashSet();

    public int f65266m = 0;

    public int f65270q = 0;

    public int f65272s = 0;

    public class a implements TimePickerView.e {
        public a() {
        }

        @Override
        public void a() {
            b.this.f65270q = 1;
            b bVar = b.this;
            bVar.I(bVar.f65268o);
            b.this.f65262i.h();
        }
    }

    public class ViewOnClickListenerC0974b implements View.OnClickListener {
        public ViewOnClickListenerC0974b() {
        }

        @Override
        public void onClick(View view) {
            Iterator it = b.this.f65255b.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            b.this.dismiss();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            Iterator it = b.this.f65256c.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            b.this.dismiss();
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            b bVar = b.this;
            bVar.f65270q = bVar.f65270q == 0 ? 1 : 0;
            b bVar2 = b.this;
            bVar2.I(bVar2.f65268o);
        }
    }

    public static final class e {

        public int f65278b;

        public CharSequence f65280d;

        public f f65277a = new f();

        public int f65279c = 0;

        public int f65281e = 0;

        @NonNull
        public b f() {
            return b.B(this);
        }

        @NonNull
        public e g(@IntRange(from = 0, to = 23) int i10) {
            this.f65277a.i(i10);
            return this;
        }

        @NonNull
        public e h(int i10) {
            this.f65278b = i10;
            return this;
        }

        @NonNull
        public e i(@IntRange(from = 0, to = 60) int i10) {
            this.f65277a.l(i10);
            return this;
        }

        @NonNull
        public e j(@StyleRes int i10) {
            this.f65281e = i10;
            return this;
        }

        @NonNull
        public e k(int i10) {
            f fVar = this.f65277a;
            int i11 = fVar.f65295e;
            int i12 = fVar.f65296f;
            f fVar2 = new f(i10);
            this.f65277a = fVar2;
            fVar2.l(i12);
            this.f65277a.i(i11);
            return this;
        }

        @NonNull
        public e l(@StringRes int i10) {
            this.f65279c = i10;
            return this;
        }

        @NonNull
        public e m(@Nullable CharSequence charSequence) {
            this.f65280d = charSequence;
            return this;
        }
    }

    @NonNull
    public static b B(@NonNull e eVar) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putParcelable(f65250v, eVar.f65277a);
        bundle.putInt(f65251w, eVar.f65278b);
        bundle.putInt(f65252x, eVar.f65279c);
        bundle.putInt(f65254z, eVar.f65281e);
        if (eVar.f65280d != null) {
            bundle.putString(f65253y, eVar.f65280d.toString());
        }
        bVar.setArguments(bundle);
        return bVar;
    }

    public final i A(int i10) {
        if (i10 != 0) {
            if (this.f65262i == null) {
                this.f65262i = new k((LinearLayout) this.f65260g.inflate(), this.f65271r);
            }
            this.f65262i.f();
            return this.f65262i;
        }
        g gVar = this.f65261h;
        if (gVar == null) {
            gVar = new g(this.f65259f, this.f65271r);
        }
        this.f65261h = gVar;
        return gVar;
    }

    public boolean C(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f65257d.remove(onCancelListener);
    }

    public boolean D(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f65258e.remove(onDismissListener);
    }

    public boolean E(@NonNull View.OnClickListener onClickListener) {
        return this.f65256c.remove(onClickListener);
    }

    public boolean F(@NonNull View.OnClickListener onClickListener) {
        return this.f65255b.remove(onClickListener);
    }

    public final void G(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        f fVar = (f) bundle.getParcelable(f65250v);
        this.f65271r = fVar;
        if (fVar == null) {
            this.f65271r = new f();
        }
        this.f65270q = bundle.getInt(f65251w, 0);
        this.f65266m = bundle.getInt(f65252x, 0);
        this.f65267n = bundle.getString(f65253y);
        this.f65272s = bundle.getInt(f65254z, 0);
    }

    public final void H() {
        Button button = this.f65269p;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    public final void I(MaterialButton materialButton) {
        i iVar = this.f65263j;
        if (iVar != null) {
            iVar.c();
        }
        i A10 = A(this.f65270q);
        this.f65263j = A10;
        A10.show();
        this.f65263j.a();
        Pair<Integer, Integer> u10 = u(this.f65270q);
        materialButton.setIconResource(u10.first.intValue());
        materialButton.setContentDescription(getResources().getString(u10.second.intValue()));
    }

    public boolean m(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f65257d.add(onCancelListener);
    }

    public boolean n(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f65258e.add(onDismissListener);
    }

    public boolean o(@NonNull View.OnClickListener onClickListener) {
        return this.f65256c.add(onClickListener);
    }

    @Override
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f65257d.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        G(bundle);
    }

    @Override
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), y());
        Context context = dialog.getContext();
        int g10 = X1.b.g(context, C15879a.c.f122164T2, b.class.getCanonicalName());
        int i10 = C15879a.c.f122452ja;
        int i11 = C15879a.n.f124274Jc;
        C3567j c3567j = new C3567j(context, null, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C15879a.o.f125760km, i10, i11);
        this.f65265l = obtainStyledAttributes.getResourceId(C15879a.o.f125785lm, 0);
        this.f65264k = obtainStyledAttributes.getResourceId(C15879a.o.f125810mm, 0);
        obtainStyledAttributes.recycle();
        c3567j.Y(context);
        c3567j.n0(ColorStateList.valueOf(g10));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(c3567j);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        c3567j.m0(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(C15879a.k.f123983e0, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(C15879a.h.f123556G2);
        this.f65259f = timePickerView;
        timePickerView.o(new a());
        this.f65260g = (ViewStub) viewGroup2.findViewById(C15879a.h.f123514A2);
        this.f65268o = (MaterialButton) viewGroup2.findViewById(C15879a.h.f123542E2);
        TextView textView = (TextView) viewGroup2.findViewById(C15879a.h.f123625Q1);
        if (!TextUtils.isEmpty(this.f65267n)) {
            textView.setText(this.f65267n);
        }
        int i10 = this.f65266m;
        if (i10 != 0) {
            textView.setText(i10);
        }
        I(this.f65268o);
        ((Button) viewGroup2.findViewById(C15879a.h.f123549F2)).setOnClickListener(new ViewOnClickListenerC0974b());
        Button button = (Button) viewGroup2.findViewById(C15879a.h.f123521B2);
        this.f65269p = button;
        button.setOnClickListener(new c());
        H();
        this.f65268o.setOnClickListener(new d());
        return viewGroup2;
    }

    @Override
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f65258e.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(f65250v, this.f65271r);
        bundle.putInt(f65251w, this.f65270q);
        bundle.putInt(f65252x, this.f65266m);
        bundle.putString(f65253y, this.f65267n);
        bundle.putInt(f65254z, this.f65272s);
    }

    @Override
    public void onStop() {
        super.onStop();
        this.f65263j = null;
        this.f65261h = null;
        this.f65262i = null;
        this.f65259f = null;
    }

    public boolean p(@NonNull View.OnClickListener onClickListener) {
        return this.f65255b.add(onClickListener);
    }

    public void q() {
        this.f65257d.clear();
    }

    public void r() {
        this.f65258e.clear();
    }

    public void s() {
        this.f65256c.clear();
    }

    @Override
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        H();
    }

    public void t() {
        this.f65255b.clear();
    }

    public final Pair<Integer, Integer> u(int i10) {
        if (i10 == 0) {
            return new Pair<>(Integer.valueOf(this.f65264k), Integer.valueOf(C15879a.m.f124102j0));
        }
        if (i10 == 1) {
            return new Pair<>(Integer.valueOf(this.f65265l), Integer.valueOf(C15879a.m.f124092e0));
        }
        throw new IllegalArgumentException("no icon for mode: " + i10);
    }

    @IntRange(from = 0, to = 23)
    public int v() {
        return this.f65271r.f65295e % 24;
    }

    public int w() {
        return this.f65270q;
    }

    @IntRange(from = 0, to = 60)
    public int x() {
        return this.f65271r.f65296f;
    }

    public final int y() {
        int i10 = this.f65272s;
        if (i10 != 0) {
            return i10;
        }
        TypedValue a10 = X1.b.a(requireContext(), C15879a.c.f122470ka);
        if (a10 == null) {
            return 0;
        }
        return a10.data;
    }

    @Nullable
    public g z() {
        return this.f65261h;
    }
}
