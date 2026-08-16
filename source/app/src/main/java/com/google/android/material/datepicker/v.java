package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.internal.A;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class v implements f<Long> {
    public static final Parcelable.Creator<v> CREATOR = new b();

    @Nullable
    public Long f64401b;

    public class a extends e {

        public final s f64402i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, com.google.android.material.datepicker.a aVar, s sVar) {
            super(str, dateFormat, textInputLayout, aVar);
            this.f64402i = sVar;
        }

        @Override
        public void e() {
            this.f64402i.a();
        }

        @Override
        public void f(@Nullable Long l10) {
            if (l10 == null) {
                v.this.d();
            } else {
                v.this.Q(l10.longValue());
            }
            this.f64402i.b(v.this.N());
        }
    }

    public static class b implements Parcelable.Creator<v> {
        @Override
        @NonNull
        public v createFromParcel(@NonNull Parcel parcel) {
            v vVar = new v();
            vVar.f64401b = (Long) parcel.readValue(Long.class.getClassLoader());
            return vVar;
        }

        @Override
        @NonNull
        public v[] newArray(int i10) {
            return new v[i10];
        }
    }

    @Override
    public View A(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, com.google.android.material.datepicker.a aVar, @NonNull s<Long> sVar) {
        View inflate = layoutInflater.inflate(C15879a.k.f123933H0, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C15879a.h.f123768k3);
        EditText editText = textInputLayout.getEditText();
        if (com.google.android.material.internal.g.a()) {
            editText.setInputType(17);
        }
        SimpleDateFormat p10 = y.p();
        String q10 = y.q(inflate.getResources(), p10);
        textInputLayout.setPlaceholderText(q10);
        Long l10 = this.f64401b;
        if (l10 != null) {
            editText.setText(p10.format(l10));
        }
        editText.addTextChangedListener(new a(q10, p10, textInputLayout, aVar, sVar));
        A.o(editText);
        return inflate;
    }

    @Override
    public boolean B() {
        return this.f64401b != null;
    }

    @Override
    @NonNull
    public Collection<Long> L() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.f64401b;
        if (l10 != null) {
            arrayList.add(l10);
        }
        return arrayList;
    }

    @Override
    public void Q(long j10) {
        this.f64401b = Long.valueOf(j10);
    }

    public final void d() {
        this.f64401b = null;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    @Nullable
    public Long N() {
        return this.f64401b;
    }

    @Override
    public void y(@Nullable Long l10) {
        this.f64401b = l10 == null ? null : Long.valueOf(y.a(l10.longValue()));
    }

    @Override
    @NonNull
    public String f0(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f64401b;
        if (l10 == null) {
            return resources.getString(C15879a.m.f124126v0);
        }
        return resources.getString(C15879a.m.f124122t0, g.j(l10.longValue()));
    }

    @Override
    @NonNull
    public Collection<Pair<Long, Long>> g0() {
        return new ArrayList();
    }

    @Override
    public int s() {
        return C15879a.m.f124124u0;
    }

    @Override
    public int v(Context context) {
        return X1.b.g(context, C15879a.c.f122309ba, l.class.getCanonicalName());
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeValue(this.f64401b);
    }
}
