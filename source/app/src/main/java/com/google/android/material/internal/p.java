package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class p {

    public float f64763c;

    @Nullable
    public X1.d f64766f;

    public final TextPaint f64761a = new TextPaint(1);

    public final X1.f f64762b = new a();

    public boolean f64764d = true;

    @Nullable
    public WeakReference<b> f64765e = new WeakReference<>(null);

    public class a extends X1.f {
        public a() {
        }

        @Override
        public void a(int i10) {
            p.this.f64764d = true;
            b bVar = (b) p.this.f64765e.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void b(@NonNull Typeface typeface, boolean z10) {
            if (z10) {
                return;
            }
            p.this.f64764d = true;
            b bVar = (b) p.this.f64765e.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();

        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public p(@Nullable b bVar) {
        h(bVar);
    }

    public final float c(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f64761a.measureText(charSequence, 0, charSequence.length());
    }

    @Nullable
    public X1.d d() {
        return this.f64766f;
    }

    @NonNull
    public TextPaint e() {
        return this.f64761a;
    }

    public float f(String str) {
        if (!this.f64764d) {
            return this.f64763c;
        }
        float c10 = c(str);
        this.f64763c = c10;
        this.f64764d = false;
        return c10;
    }

    public boolean g() {
        return this.f64764d;
    }

    public void h(@Nullable b bVar) {
        this.f64765e = new WeakReference<>(bVar);
    }

    public void i(@Nullable X1.d dVar, Context context) {
        if (this.f64766f != dVar) {
            this.f64766f = dVar;
            if (dVar != null) {
                dVar.o(context, this.f64761a, this.f64762b);
                b bVar = this.f64765e.get();
                if (bVar != null) {
                    this.f64761a.drawableState = bVar.getState();
                }
                dVar.n(context, this.f64761a, this.f64762b);
                this.f64764d = true;
            }
            b bVar2 = this.f64765e.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void j(boolean z10) {
        this.f64764d = z10;
    }

    public void k(Context context) {
        this.f64766f.n(context, this.f64761a, this.f64762b);
    }
}
