package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class o<S> extends t<S> {

    public static final String f64357f = "THEME_RES_ID_KEY";

    public static final String f64358g = "DATE_SELECTOR_KEY";

    public static final String f64359h = "CALENDAR_CONSTRAINTS_KEY";

    @StyleRes
    public int f64360c;

    @Nullable
    public f<S> f64361d;

    @Nullable
    public com.google.android.material.datepicker.a f64362e;

    public class a extends s<S> {
        public a() {
        }

        @Override
        public void a() {
            Iterator<s<S>> it = o.this.f64386b.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }

        @Override
        public void b(S s10) {
            Iterator<s<S>> it = o.this.f64386b.iterator();
            while (it.hasNext()) {
                it.next().b(s10);
            }
        }
    }

    @NonNull
    public static <T> o<T> i(f<T> fVar, @StyleRes int i10, @NonNull com.google.android.material.datepicker.a aVar) {
        o<T> oVar = new o<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable("DATE_SELECTOR_KEY", fVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        oVar.setArguments(bundle);
        return oVar;
    }

    @Override
    @NonNull
    public f<S> g() {
        f<S> fVar = this.f64361d;
        if (fVar != null) {
            return fVar;
        }
        throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f64360c = bundle.getInt("THEME_RES_ID_KEY");
        this.f64361d = (f) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f64362e = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f64361d.A(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f64360c)), viewGroup, bundle, this.f64362e, new a());
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f64360c);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f64361d);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f64362e);
    }
}
