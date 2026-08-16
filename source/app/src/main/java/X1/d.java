package X1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class d {

    public static final String f27890r = "TextAppearance";

    public static final int f27891s = 1;

    public static final int f27892t = 2;

    public static final int f27893u = 3;

    @Nullable
    public final ColorStateList f27894a;

    @Nullable
    public final ColorStateList f27895b;

    @Nullable
    public final ColorStateList f27896c;

    @Nullable
    public final String f27897d;

    public final int f27898e;

    public final int f27899f;

    public final boolean f27900g;

    public final float f27901h;

    public final float f27902i;

    public final float f27903j;

    public final boolean f27904k;

    public final float f27905l;

    @Nullable
    public ColorStateList f27906m;

    public float f27907n;

    @FontRes
    public final int f27908o;

    public boolean f27909p = false;

    public Typeface f27910q;

    public class a extends ResourcesCompat.FontCallback {

        public final f f27911a;

        public a(f fVar) {
            this.f27911a = fVar;
        }

        @Override
        public void lambda$callbackFailAsync$1(int i10) {
            d.this.f27909p = true;
            this.f27911a.a(i10);
        }

        @Override
        public void lambda$callbackSuccessAsync$0(@NonNull Typeface typeface) {
            d dVar = d.this;
            dVar.f27910q = Typeface.create(typeface, dVar.f27898e);
            d.this.f27909p = true;
            this.f27911a.b(d.this.f27910q, false);
        }
    }

    public class b extends f {

        public final TextPaint f27913a;

        public final f f27914b;

        public b(TextPaint textPaint, f fVar) {
            this.f27913a = textPaint;
            this.f27914b = fVar;
        }

        @Override
        public void a(int i10) {
            this.f27914b.a(i10);
        }

        @Override
        public void b(@NonNull Typeface typeface, boolean z10) {
            d.this.p(this.f27913a, typeface);
            this.f27914b.b(typeface, z10);
        }
    }

    public d(@NonNull Context context, @StyleRes int i10) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i10, C15879a.o.Ls);
        l(obtainStyledAttributes.getDimension(C15879a.o.Ms, 0.0f));
        k(c.a(context, obtainStyledAttributes, C15879a.o.Ps));
        this.f27894a = c.a(context, obtainStyledAttributes, C15879a.o.Qs);
        this.f27895b = c.a(context, obtainStyledAttributes, C15879a.o.Rs);
        this.f27898e = obtainStyledAttributes.getInt(C15879a.o.Os, 0);
        this.f27899f = obtainStyledAttributes.getInt(C15879a.o.Ns, 1);
        int e10 = c.e(obtainStyledAttributes, C15879a.o.Ys, C15879a.o.Ws);
        this.f27908o = obtainStyledAttributes.getResourceId(e10, 0);
        this.f27897d = obtainStyledAttributes.getString(e10);
        this.f27900g = obtainStyledAttributes.getBoolean(C15879a.o.at, false);
        this.f27896c = c.a(context, obtainStyledAttributes, C15879a.o.Ss);
        this.f27901h = obtainStyledAttributes.getFloat(C15879a.o.Ts, 0.0f);
        this.f27902i = obtainStyledAttributes.getFloat(C15879a.o.Us, 0.0f);
        this.f27903j = obtainStyledAttributes.getFloat(C15879a.o.Vs, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i10, C15879a.o.f125559cm);
        int i11 = C15879a.o.f125584dm;
        this.f27904k = obtainStyledAttributes2.hasValue(i11);
        this.f27905l = obtainStyledAttributes2.getFloat(i11, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    public final void d() {
        String str;
        if (this.f27910q == null && (str = this.f27897d) != null) {
            this.f27910q = Typeface.create(str, this.f27898e);
        }
        if (this.f27910q == null) {
            int i10 = this.f27899f;
            if (i10 == 1) {
                this.f27910q = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f27910q = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f27910q = Typeface.DEFAULT;
            } else {
                this.f27910q = Typeface.MONOSPACE;
            }
            this.f27910q = Typeface.create(this.f27910q, this.f27898e);
        }
    }

    public Typeface e() {
        d();
        return this.f27910q;
    }

    @NonNull
    @VisibleForTesting
    public Typeface f(@NonNull Context context) {
        if (this.f27909p) {
            return this.f27910q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.f27908o);
                this.f27910q = font;
                if (font != null) {
                    this.f27910q = Typeface.create(font, this.f27898e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e10) {
                Log.d(f27890r, "Error loading font " + this.f27897d, e10);
            }
        }
        d();
        this.f27909p = true;
        return this.f27910q;
    }

    public void g(@NonNull Context context, @NonNull f fVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i10 = this.f27908o;
        if (i10 == 0) {
            this.f27909p = true;
        }
        if (this.f27909p) {
            fVar.b(this.f27910q, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i10, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f27909p = true;
            fVar.a(1);
        } catch (Exception e10) {
            Log.d(f27890r, "Error loading font " + this.f27897d, e10);
            this.f27909p = true;
            fVar.a(-3);
        }
    }

    public void h(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        p(textPaint, e());
        g(context, new b(textPaint, fVar));
    }

    @Nullable
    public ColorStateList i() {
        return this.f27906m;
    }

    public float j() {
        return this.f27907n;
    }

    public void k(@Nullable ColorStateList colorStateList) {
        this.f27906m = colorStateList;
    }

    public void l(float f10) {
        this.f27907n = f10;
    }

    public final boolean m(Context context) {
        if (e.b()) {
            return true;
        }
        int i10 = this.f27908o;
        return (i10 != 0 ? ResourcesCompat.getCachedFont(context, i10) : null) != null;
    }

    public void n(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        o(context, textPaint, fVar);
        ColorStateList colorStateList = this.f27906m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f10 = this.f27903j;
        float f11 = this.f27901h;
        float f12 = this.f27902i;
        ColorStateList colorStateList2 = this.f27896c;
        textPaint.setShadowLayer(f10, f11, f12, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        if (m(context)) {
            p(textPaint, f(context));
        } else {
            h(context, textPaint, fVar);
        }
    }

    public void p(@NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        textPaint.setTypeface(typeface);
        int i10 = (~typeface.getStyle()) & this.f27898e;
        textPaint.setFakeBoldText((i10 & 1) != 0);
        textPaint.setTextSkewX((i10 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f27907n);
        if (this.f27904k) {
            textPaint.setLetterSpacing(this.f27905l);
        }
    }
}
