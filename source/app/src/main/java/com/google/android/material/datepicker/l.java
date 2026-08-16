package com.google.android.material.datepicker;

import a2.C3567j;
import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.datepicker.a;
import com.google.android.material.internal.CheckableImageButton;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import w1.C15879a;

public final class l<S> extends DialogFragment {

    public static final int f64315B = 0;

    public static final int f64316C = 1;

    public static final String f64317s = "OVERRIDE_THEME_RES_ID";

    public static final String f64318t = "DATE_SELECTOR_KEY";

    public static final String f64319u = "CALENDAR_CONSTRAINTS_KEY";

    public static final String f64320v = "TITLE_TEXT_RES_ID_KEY";

    public static final String f64321w = "TITLE_TEXT_KEY";

    public static final String f64322x = "INPUT_MODE_KEY";

    public final LinkedHashSet<m<? super S>> f64325b = new LinkedHashSet<>();

    public final LinkedHashSet<View.OnClickListener> f64326c = new LinkedHashSet<>();

    public final LinkedHashSet<DialogInterface.OnCancelListener> f64327d = new LinkedHashSet<>();

    public final LinkedHashSet<DialogInterface.OnDismissListener> f64328e = new LinkedHashSet<>();

    @StyleRes
    public int f64329f;

    @Nullable
    public com.google.android.material.datepicker.f<S> f64330g;

    public t<S> f64331h;

    @Nullable
    public com.google.android.material.datepicker.a f64332i;

    public k<S> f64333j;

    @StringRes
    public int f64334k;

    public CharSequence f64335l;

    public boolean f64336m;

    public int f64337n;

    public TextView f64338o;

    public CheckableImageButton f64339p;

    @Nullable
    public C3567j f64340q;

    public Button f64341r;

    public static final Object f64323y = "CONFIRM_BUTTON_TAG";

    public static final Object f64324z = "CANCEL_BUTTON_TAG";

    public static final Object f64314A = "TOGGLE_BUTTON_TAG";

    public class a implements View.OnClickListener {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onClick(View view) {
            Iterator<E> it = l.this.f64325b.iterator();
            while (it.hasNext()) {
                ((m) it.next()).a(l.this.z());
            }
            l.this.dismiss();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            Iterator<E> it = l.this.f64326c.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            l.this.dismiss();
        }
    }

    public class c extends s<S> {
        public c() {
        }

        @Override
        public void a() {
            l.this.f64341r.setEnabled(false);
        }

        @Override
        public void b(S s10) {
            l.this.N();
            l.this.f64341r.setEnabled(l.this.v().B());
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            l.this.f64341r.setEnabled(l.this.v().B());
            l.this.f64339p.toggle();
            l lVar = l.this;
            lVar.O(lVar.f64339p);
            l.this.K();
        }
    }

    public static final class e<S> {

        public final com.google.android.material.datepicker.f<S> f64346a;

        public com.google.android.material.datepicker.a f64348c;

        public int f64347b = 0;

        public int f64349d = 0;

        public CharSequence f64350e = null;

        @Nullable
        public S f64351f = null;

        public int f64352g = 0;

        public e(com.google.android.material.datepicker.f<S> fVar) {
            this.f64346a = fVar;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <S> e<S> c(@NonNull com.google.android.material.datepicker.f<S> fVar) {
            return new e<>(fVar);
        }

        @NonNull
        public static e<Long> d() {
            return new e<>(new v());
        }

        @NonNull
        public static e<Pair<Long, Long>> e() {
            return new e<>(new u());
        }

        public static boolean f(p pVar, com.google.android.material.datepicker.a aVar) {
            return pVar.compareTo(aVar.m()) >= 0 && pVar.compareTo(aVar.h()) <= 0;
        }

        @NonNull
        public l<S> a() {
            if (this.f64348c == null) {
                this.f64348c = new a.b().a();
            }
            if (this.f64349d == 0) {
                this.f64349d = this.f64346a.s();
            }
            S s10 = this.f64351f;
            if (s10 != null) {
                this.f64346a.y(s10);
            }
            if (this.f64348c.l() == null) {
                this.f64348c.q(b());
            }
            return l.E(this);
        }

        public final p b() {
            if (!this.f64346a.L().isEmpty()) {
                p e10 = p.e(this.f64346a.L().iterator().next().longValue());
                if (f(e10, this.f64348c)) {
                    return e10;
                }
            }
            p g10 = p.g();
            return f(g10, this.f64348c) ? g10 : this.f64348c.m();
        }

        @NonNull
        public e<S> g(com.google.android.material.datepicker.a aVar) {
            this.f64348c = aVar;
            return this;
        }

        @NonNull
        public e<S> h(int i10) {
            this.f64352g = i10;
            return this;
        }

        @NonNull
        public e<S> i(S s10) {
            this.f64351f = s10;
            return this;
        }

        @NonNull
        public e<S> j(@StyleRes int i10) {
            this.f64347b = i10;
            return this;
        }

        @NonNull
        public e<S> k(@StringRes int i10) {
            this.f64349d = i10;
            this.f64350e = null;
            return this;
        }

        @NonNull
        public e<S> l(@Nullable CharSequence charSequence) {
            this.f64350e = charSequence;
            this.f64349d = 0;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface f {
    }

    public static boolean C(@NonNull Context context) {
        return F(context, R.attr.windowFullscreen);
    }

    public static boolean D(@NonNull Context context) {
        return F(context, C15879a.c.f122489lb);
    }

    @NonNull
    public static <S> l<S> E(@NonNull e<S> eVar) {
        l<S> lVar = new l<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f64317s, eVar.f64347b);
        bundle.putParcelable("DATE_SELECTOR_KEY", eVar.f64346a);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", eVar.f64348c);
        bundle.putInt(f64320v, eVar.f64349d);
        bundle.putCharSequence(f64321w, eVar.f64350e);
        bundle.putInt(f64322x, eVar.f64352g);
        lVar.setArguments(bundle);
        return lVar;
    }

    public static boolean F(@NonNull Context context, int i10) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(X1.b.g(context, C15879a.c.f122291aa, k.class.getCanonicalName()), new int[]{i10});
        boolean z10 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z10;
    }

    public static long L() {
        return p.g().f64369g;
    }

    public static long M() {
        return y.t().getTimeInMillis();
    }

    @NonNull
    public static Drawable u(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, AppCompatResources.getDrawable(context, C15879a.g.f123418S0));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, C15879a.g.f123422U0));
        return stateListDrawable;
    }

    public com.google.android.material.datepicker.f<S> v() {
        if (this.f64330g == null) {
            this.f64330g = (com.google.android.material.datepicker.f) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f64330g;
    }

    public static int w(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(C15879a.f.f123180b4) + resources.getDimensionPixelOffset(C15879a.f.f123189c4) + resources.getDimensionPixelOffset(C15879a.f.f123171a4);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(C15879a.f.f123050L3);
        int i10 = q.f64371g;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(C15879a.f.f123010G3) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(C15879a.f.f123162Z3)) + resources.getDimensionPixelOffset(C15879a.f.f122986D3);
    }

    public static int y(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C15879a.f.f122994E3);
        int i10 = p.g().f64367e;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(C15879a.f.f123042K3) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(C15879a.f.f123154Y3));
    }

    public final int A(Context context) {
        int i10 = this.f64329f;
        return i10 != 0 ? i10 : v().v(context);
    }

    public final void B(Context context) {
        this.f64339p.setTag(f64314A);
        this.f64339p.setImageDrawable(u(context));
        this.f64339p.setChecked(this.f64337n != 0);
        ViewCompat.setAccessibilityDelegate(this.f64339p, null);
        O(this.f64339p);
        this.f64339p.setOnClickListener(new d());
    }

    public boolean G(DialogInterface.OnCancelListener onCancelListener) {
        return this.f64327d.remove(onCancelListener);
    }

    public boolean H(DialogInterface.OnDismissListener onDismissListener) {
        return this.f64328e.remove(onDismissListener);
    }

    public boolean I(View.OnClickListener onClickListener) {
        return this.f64326c.remove(onClickListener);
    }

    public boolean J(m<? super S> mVar) {
        return this.f64325b.remove(mVar);
    }

    public final void K() {
        int A10 = A(requireContext());
        this.f64333j = k.w(v(), A10, this.f64332i);
        this.f64331h = this.f64339p.isChecked() ? o.i(v(), A10, this.f64332i) : this.f64333j;
        N();
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        beginTransaction.replace(C15879a.h.f123661V2, this.f64331h);
        beginTransaction.commitNow();
        this.f64331h.e(new c());
    }

    public final void N() {
        String x10 = x();
        this.f64338o.setContentDescription(String.format(getString(C15879a.m.f124116q0), x10));
        this.f64338o.setText(x10);
    }

    public final void O(@NonNull CheckableImageButton checkableImageButton) {
        this.f64339p.setContentDescription(this.f64339p.isChecked() ? checkableImageButton.getContext().getString(C15879a.m.f124062P0) : checkableImageButton.getContext().getString(C15879a.m.f124066R0));
    }

    public boolean m(DialogInterface.OnCancelListener onCancelListener) {
        return this.f64327d.add(onCancelListener);
    }

    public boolean n(DialogInterface.OnDismissListener onDismissListener) {
        return this.f64328e.add(onDismissListener);
    }

    public boolean o(View.OnClickListener onClickListener) {
        return this.f64326c.add(onClickListener);
    }

    @Override
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f64327d.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f64329f = bundle.getInt(f64317s);
        this.f64330g = (com.google.android.material.datepicker.f) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f64332i = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f64334k = bundle.getInt(f64320v);
        this.f64335l = bundle.getCharSequence(f64321w);
        this.f64337n = bundle.getInt(f64322x);
    }

    @Override
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), A(requireContext()));
        Context context = dialog.getContext();
        this.f64336m = C(context);
        int g10 = X1.b.g(context, C15879a.c.f122164T2, l.class.getCanonicalName());
        C3567j c3567j = new C3567j(context, null, C15879a.c.f122291aa, C15879a.n.f124217Fb);
        this.f64340q = c3567j;
        c3567j.Y(context);
        this.f64340q.n0(ColorStateList.valueOf(g10));
        this.f64340q.m0(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f64336m ? C15879a.k.f123921B0 : C15879a.k.f123919A0, viewGroup);
        Context context = inflate.getContext();
        if (this.f64336m) {
            inflate.findViewById(C15879a.h.f123661V2).setLayoutParams(new LinearLayout.LayoutParams(y(context), -2));
        } else {
            View findViewById = inflate.findViewById(C15879a.h.f123668W2);
            View findViewById2 = inflate.findViewById(C15879a.h.f123661V2);
            findViewById.setLayoutParams(new LinearLayout.LayoutParams(y(context), -1));
            findViewById2.setMinimumHeight(w(requireContext()));
        }
        TextView textView = (TextView) inflate.findViewById(C15879a.h.f123747h3);
        this.f64338o = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.f64339p = (CheckableImageButton) inflate.findViewById(C15879a.h.f123761j3);
        TextView textView2 = (TextView) inflate.findViewById(C15879a.h.f123789n3);
        CharSequence charSequence = this.f64335l;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f64334k);
        }
        B(context);
        this.f64341r = (Button) inflate.findViewById(C15879a.h.f123624Q0);
        if (v().B()) {
            this.f64341r.setEnabled(true);
        } else {
            this.f64341r.setEnabled(false);
        }
        this.f64341r.setTag(f64323y);
        this.f64341r.setOnClickListener(new a());
        Button button = (Button) inflate.findViewById(C15879a.h.f123519B0);
        button.setTag(f64324z);
        button.setOnClickListener(new b());
        return inflate;
    }

    @Override
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f64328e.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f64317s, this.f64329f);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f64330g);
        a.b bVar = new a.b(this.f64332i);
        if (this.f64333j.t() != null) {
            bVar.c(this.f64333j.t().f64369g);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.a());
        bundle.putInt(f64320v, this.f64334k);
        bundle.putCharSequence(f64321w, this.f64335l);
    }

    @Override
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f64336m) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f64340q);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(C15879a.f.f123058M3);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f64340q, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new K1.a(requireDialog(), rect));
        }
        K();
    }

    @Override
    public void onStop() {
        this.f64331h.f();
        super.onStop();
    }

    public boolean p(m<? super S> mVar) {
        return this.f64325b.add(mVar);
    }

    public void q() {
        this.f64327d.clear();
    }

    public void r() {
        this.f64328e.clear();
    }

    public void s() {
        this.f64326c.clear();
    }

    public void t() {
        this.f64325b.clear();
    }

    public String x() {
        return v().f0(getContext());
    }

    @Nullable
    public final S z() {
        return v().N();
    }
}
