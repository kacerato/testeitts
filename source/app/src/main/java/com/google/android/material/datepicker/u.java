package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.google.android.material.internal.A;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class u implements f<Pair<Long, Long>> {
    public static final Parcelable.Creator<u> CREATOR = new c();

    public String f64387b;

    public final String f64388c = " ";

    @Nullable
    public Long f64389d = null;

    @Nullable
    public Long f64390e = null;

    @Nullable
    public Long f64391f = null;

    @Nullable
    public Long f64392g = null;

    public class a extends e {

        public final TextInputLayout f64393i;

        public final TextInputLayout f64394j;

        public final s f64395k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, com.google.android.material.datepicker.a aVar, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, s sVar) {
            super(str, dateFormat, textInputLayout, aVar);
            this.f64393i = textInputLayout2;
            this.f64394j = textInputLayout3;
            this.f64395k = sVar;
        }

        @Override
        public void e() {
            u.this.f64391f = null;
            u.this.n(this.f64393i, this.f64394j, this.f64395k);
        }

        @Override
        public void f(@Nullable Long l10) {
            u.this.f64391f = l10;
            u.this.n(this.f64393i, this.f64394j, this.f64395k);
        }
    }

    public class b extends e {

        public final TextInputLayout f64397i;

        public final TextInputLayout f64398j;

        public final s f64399k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, com.google.android.material.datepicker.a aVar, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, s sVar) {
            super(str, dateFormat, textInputLayout, aVar);
            this.f64397i = textInputLayout2;
            this.f64398j = textInputLayout3;
            this.f64399k = sVar;
        }

        @Override
        public void e() {
            u.this.f64392g = null;
            u.this.n(this.f64397i, this.f64398j, this.f64399k);
        }

        @Override
        public void f(@Nullable Long l10) {
            u.this.f64392g = l10;
            u.this.n(this.f64397i, this.f64398j, this.f64399k);
        }
    }

    public static class c implements Parcelable.Creator<u> {
        @Override
        @NonNull
        public u createFromParcel(@NonNull Parcel parcel) {
            u uVar = new u();
            uVar.f64389d = (Long) parcel.readValue(Long.class.getClassLoader());
            uVar.f64390e = (Long) parcel.readValue(Long.class.getClassLoader());
            return uVar;
        }

        @Override
        @NonNull
        public u[] newArray(int i10) {
            return new u[i10];
        }
    }

    @Override
    public View A(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, com.google.android.material.datepicker.a aVar, @NonNull s<Pair<Long, Long>> sVar) {
        View inflate = layoutInflater.inflate(C15879a.k.f123935I0, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C15879a.h.f123782m3);
        TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(C15879a.h.f123775l3);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (com.google.android.material.internal.g.a()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f64387b = inflate.getResources().getString(C15879a.m.f124032A0);
        SimpleDateFormat p10 = y.p();
        Long l10 = this.f64389d;
        if (l10 != null) {
            editText.setText(p10.format(l10));
            this.f64391f = this.f64389d;
        }
        Long l11 = this.f64390e;
        if (l11 != null) {
            editText2.setText(p10.format(l11));
            this.f64392g = this.f64390e;
        }
        String q10 = y.q(inflate.getResources(), p10);
        textInputLayout.setPlaceholderText(q10);
        textInputLayout2.setPlaceholderText(q10);
        editText.addTextChangedListener(new a(q10, p10, textInputLayout, aVar, textInputLayout, textInputLayout2, sVar));
        editText2.addTextChangedListener(new b(q10, p10, textInputLayout2, aVar, textInputLayout, textInputLayout2, sVar));
        A.o(editText);
        return inflate;
    }

    @Override
    public boolean B() {
        Long l10 = this.f64389d;
        return (l10 == null || this.f64390e == null || !i(l10.longValue(), this.f64390e.longValue())) ? false : true;
    }

    @Override
    @NonNull
    public Collection<Long> L() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.f64389d;
        if (l10 != null) {
            arrayList.add(l10);
        }
        Long l11 = this.f64390e;
        if (l11 != null) {
            arrayList.add(l11);
        }
        return arrayList;
    }

    @Override
    public void Q(long j10) {
        Long l10 = this.f64389d;
        if (l10 == null) {
            this.f64389d = Long.valueOf(j10);
        } else if (this.f64390e == null && i(l10.longValue(), j10)) {
            this.f64390e = Long.valueOf(j10);
        } else {
            this.f64390e = null;
            this.f64389d = Long.valueOf(j10);
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    @NonNull
    public String f0(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f64389d;
        if (l10 == null && this.f64390e == null) {
            return resources.getString(C15879a.m.f124046H0);
        }
        Long l11 = this.f64390e;
        if (l11 == null) {
            return resources.getString(C15879a.m.f124040E0, g.c(l10.longValue()));
        }
        if (l10 == null) {
            return resources.getString(C15879a.m.f124038D0, g.c(l11.longValue()));
        }
        Pair<String, String> a10 = g.a(l10, l11);
        return resources.getString(C15879a.m.f124042F0, a10.first, a10.second);
    }

    public final void g(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f64387b.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    @Override
    @NonNull
    public Collection<Pair<Long, Long>> g0() {
        if (this.f64389d == null || this.f64390e == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.f64389d, this.f64390e));
        return arrayList;
    }

    @Override
    @NonNull
    public Pair<Long, Long> N() {
        return new Pair<>(this.f64389d, this.f64390e);
    }

    public final boolean i(long j10, long j11) {
        return j10 <= j11;
    }

    public final void l(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f64387b);
        textInputLayout2.setError(" ");
    }

    @Override
    public void y(@NonNull Pair<Long, Long> pair) {
        Long l10 = pair.first;
        if (l10 != null && pair.second != null) {
            Preconditions.checkArgument(i(l10.longValue(), pair.second.longValue()));
        }
        Long l11 = pair.first;
        this.f64389d = l11 == null ? null : Long.valueOf(y.a(l11.longValue()));
        Long l12 = pair.second;
        this.f64390e = l12 != null ? Long.valueOf(y.a(l12.longValue())) : null;
    }

    public final void n(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull s<Pair<Long, Long>> sVar) {
        Long l10 = this.f64391f;
        if (l10 == null || this.f64392g == null) {
            g(textInputLayout, textInputLayout2);
            sVar.a();
        } else if (!i(l10.longValue(), this.f64392g.longValue())) {
            l(textInputLayout, textInputLayout2);
            sVar.a();
        } else {
            this.f64389d = this.f64391f;
            this.f64390e = this.f64392g;
            sVar.b(N());
        }
    }

    @Override
    public int s() {
        return C15879a.m.f124044G0;
    }

    @Override
    public int v(@NonNull Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return X1.b.g(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(C15879a.f.f123146X3) ? C15879a.c.f122309ba : C15879a.c.f122120Q9, l.class.getCanonicalName());
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeValue(this.f64389d);
        parcel.writeValue(this.f64390e);
    }
}
