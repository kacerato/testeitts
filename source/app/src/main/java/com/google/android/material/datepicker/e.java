package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import w1.C15879a;

public abstract class e extends com.google.android.material.internal.r {

    public static final int f64259h = 1000;

    @NonNull
    public final TextInputLayout f64260b;

    public final DateFormat f64261c;

    public final com.google.android.material.datepicker.a f64262d;

    public final String f64263e;

    public final Runnable f64264f;

    public Runnable f64265g;

    public class a implements Runnable {

        public final String f64266b;

        public a(String str) {
            this.f64266b = str;
        }

        @Override
        public void run() {
            TextInputLayout textInputLayout = e.this.f64260b;
            DateFormat dateFormat = e.this.f64261c;
            Context context = textInputLayout.getContext();
            textInputLayout.setError(context.getString(C15879a.m.f124130x0) + "\n" + String.format(context.getString(C15879a.m.f124134z0), this.f64266b) + "\n" + String.format(context.getString(C15879a.m.f124132y0), dateFormat.format(new Date(y.t().getTimeInMillis()))));
            e.this.e();
        }
    }

    public class b implements Runnable {

        public final long f64268b;

        public b(long j10) {
            this.f64268b = j10;
        }

        @Override
        public void run() {
            e.this.f64260b.setError(String.format(e.this.f64263e, g.c(this.f64268b)));
            e.this.e();
        }
    }

    public e(String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, com.google.android.material.datepicker.a aVar) {
        this.f64261c = dateFormat;
        this.f64260b = textInputLayout;
        this.f64262d = aVar;
        this.f64263e = textInputLayout.getContext().getString(C15879a.m.f124036C0);
        this.f64264f = new a(str);
    }

    public final Runnable d(long j10) {
        return new b(j10);
    }

    public void e() {
    }

    public abstract void f(@Nullable Long l10);

    public void g(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    @Override
    public void onTextChanged(@NonNull CharSequence charSequence, int i10, int i11, int i12) {
        this.f64260b.removeCallbacks(this.f64264f);
        this.f64260b.removeCallbacks(this.f64265g);
        this.f64260b.setError(null);
        f(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date parse = this.f64261c.parse(charSequence.toString());
            this.f64260b.setError(null);
            long time = parse.getTime();
            if (this.f64262d.g().a(time) && this.f64262d.p(time)) {
                f(Long.valueOf(parse.getTime()));
                return;
            }
            Runnable d10 = d(time);
            this.f64265g = d10;
            g(this.f64260b, d10);
        } catch (ParseException unused) {
            g(this.f64260b, this.f64264f);
        }
    }
}
