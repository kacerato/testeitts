package re;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.Size;
import java.util.Arrays;
import java.util.Locale;

public class C15173c {

    public static final int f108903A = 75;

    public static final float[] f108904B = {2.0f, 1.5f, 1.17f, 1.0f, 0.83f, 0.67f};

    public static final int f108905C = 25;

    public static final int f108906x = 25;

    public static final int f108907y = 25;

    public static final float f108908z = 0.87f;

    public final int f108909a;

    public final boolean f108910b;

    public final int f108911c;

    public final int f108912d;

    public final int f108913e;

    public final int f108914f;

    public final int f108915g;

    public final int f108916h;

    public final int f108917i;

    public final int f108918j;

    public final int f108919k;

    public final int f108920l;

    public final int f108921m;

    public final Typeface f108922n;

    public final Typeface f108923o;

    public final int f108924p;

    public final int f108925q;

    public final int f108926r;

    public final int f108927s;

    public final Typeface f108928t;

    public final float[] f108929u;

    public final int f108930v;

    public final int f108931w;

    public C15173c(@NonNull a aVar) {
        this.f108909a = aVar.f108932a;
        this.f108910b = aVar.f108933b;
        this.f108911c = aVar.f108934c;
        this.f108912d = aVar.f108935d;
        this.f108913e = aVar.f108936e;
        this.f108914f = aVar.f108937f;
        this.f108915g = aVar.f108938g;
        this.f108916h = aVar.f108939h;
        this.f108917i = aVar.f108940i;
        this.f108918j = aVar.f108941j;
        this.f108919k = aVar.f108942k;
        this.f108920l = aVar.f108943l;
        this.f108921m = aVar.f108944m;
        this.f108922n = aVar.f108945n;
        this.f108923o = aVar.f108946o;
        this.f108924p = aVar.f108947p;
        this.f108925q = aVar.f108948q;
        this.f108926r = aVar.f108949r;
        this.f108927s = aVar.f108950s;
        this.f108928t = aVar.f108951t;
        this.f108929u = aVar.f108952u;
        this.f108930v = aVar.f108953v;
        this.f108931w = aVar.f108954w;
    }

    @NonNull
    public static a j(@NonNull C15173c c15173c) {
        return new a(c15173c);
    }

    @NonNull
    public static a k(@NonNull Context context) {
        Ae.b b10 = Ae.b.b(context);
        return new a().F(b10.c(8)).x(b10.c(24)).z(b10.c(4)).B(b10.c(1)).N(b10.c(1)).U(b10.c(4));
    }

    @NonNull
    public static C15173c l(@NonNull Context context) {
        return k(context).A();
    }

    @NonNull
    public static a m() {
        return new a();
    }

    public void a(@NonNull Paint paint) {
        int i10 = this.f108913e;
        if (i10 == 0) {
            i10 = Ae.a.a(paint.getColor(), 25);
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i10);
    }

    public void b(@NonNull Paint paint) {
        int i10 = this.f108918j;
        if (i10 == 0) {
            i10 = this.f108917i;
        }
        if (i10 != 0) {
            paint.setColor(i10);
        }
        Typeface typeface = this.f108923o;
        if (typeface == null) {
            typeface = this.f108922n;
        }
        if (typeface != null) {
            paint.setTypeface(typeface);
            int i11 = this.f108925q;
            if (i11 <= 0) {
                i11 = this.f108924p;
            }
            if (i11 > 0) {
                paint.setTextSize(i11);
                return;
            }
            return;
        }
        paint.setTypeface(Typeface.MONOSPACE);
        int i12 = this.f108925q;
        if (i12 <= 0) {
            i12 = this.f108924p;
        }
        if (i12 > 0) {
            paint.setTextSize(i12);
        } else {
            paint.setTextSize(paint.getTextSize() * 0.87f);
        }
    }

    public void c(@NonNull Paint paint) {
        int i10 = this.f108917i;
        if (i10 != 0) {
            paint.setColor(i10);
        }
        Typeface typeface = this.f108922n;
        if (typeface != null) {
            paint.setTypeface(typeface);
            int i11 = this.f108924p;
            if (i11 > 0) {
                paint.setTextSize(i11);
                return;
            }
            return;
        }
        paint.setTypeface(Typeface.MONOSPACE);
        int i12 = this.f108924p;
        if (i12 > 0) {
            paint.setTextSize(i12);
        } else {
            paint.setTextSize(paint.getTextSize() * 0.87f);
        }
    }

    public void d(@NonNull Paint paint) {
        int i10 = this.f108927s;
        if (i10 == 0) {
            i10 = Ae.a.a(paint.getColor(), 75);
        }
        paint.setColor(i10);
        paint.setStyle(Paint.Style.FILL);
        int i11 = this.f108926r;
        if (i11 >= 0) {
            paint.setStrokeWidth(i11);
        }
    }

    public void e(@NonNull Paint paint, @IntRange(from = 1, to = 6) int i10) {
        Typeface typeface = this.f108928t;
        if (typeface == null) {
            paint.setFakeBoldText(true);
        } else {
            paint.setTypeface(typeface);
        }
        float[] fArr = this.f108929u;
        if (fArr == null) {
            fArr = f108904B;
        }
        if (fArr == null || fArr.length < i10) {
            throw new IllegalStateException(String.format(Locale.US, "Supplied heading level: %d is invalid, where configured heading sizes are: `%s`", Integer.valueOf(i10), Arrays.toString(fArr)));
        }
        paint.setTextSize(paint.getTextSize() * fArr[i10 - 1]);
    }

    public void f(@NonNull Paint paint) {
        paint.setUnderlineText(this.f108910b);
        int i10 = this.f108909a;
        if (i10 != 0) {
            paint.setColor(i10);
        } else if (paint instanceof TextPaint) {
            paint.setColor(((TextPaint) paint).linkColor);
        }
    }

    public void g(@NonNull TextPaint textPaint) {
        textPaint.setUnderlineText(this.f108910b);
        int i10 = this.f108909a;
        if (i10 != 0) {
            textPaint.setColor(i10);
        } else {
            textPaint.setColor(textPaint.linkColor);
        }
    }

    public void h(@NonNull Paint paint) {
        int i10 = this.f108914f;
        if (i10 == 0) {
            i10 = paint.getColor();
        }
        paint.setColor(i10);
        int i11 = this.f108915g;
        if (i11 != 0) {
            paint.setStrokeWidth(i11);
        }
    }

    public void i(@NonNull Paint paint) {
        int i10 = this.f108930v;
        if (i10 == 0) {
            i10 = Ae.a.a(paint.getColor(), 25);
        }
        paint.setColor(i10);
        paint.setStyle(Paint.Style.FILL);
        int i11 = this.f108931w;
        if (i11 >= 0) {
            paint.setStrokeWidth(i11);
        }
    }

    public int n() {
        return this.f108911c;
    }

    public int o() {
        int i10 = this.f108912d;
        return i10 == 0 ? (int) ((this.f108911c * 0.25f) + 0.5f) : i10;
    }

    public int p(int i10) {
        int min = Math.min(this.f108911c, i10) / 2;
        int i11 = this.f108916h;
        return (i11 == 0 || i11 > min) ? min : i11;
    }

    public int q(@NonNull Paint paint) {
        int i10 = this.f108919k;
        return i10 != 0 ? i10 : Ae.a.a(paint.getColor(), 25);
    }

    public int r(@NonNull Paint paint) {
        int i10 = this.f108920l;
        if (i10 == 0) {
            i10 = this.f108919k;
        }
        return i10 != 0 ? i10 : Ae.a.a(paint.getColor(), 25);
    }

    public int s() {
        return this.f108921m;
    }

    public static class a {

        public int f108932a;

        public boolean f108933b;

        public int f108934c;

        public int f108935d;

        public int f108936e;

        public int f108937f;

        public int f108938g;

        public int f108939h;

        public int f108940i;

        public int f108941j;

        public int f108942k;

        public int f108943l;

        public int f108944m;

        public Typeface f108945n;

        public Typeface f108946o;

        public int f108947p;

        public int f108948q;

        public int f108949r;

        public int f108950s;

        public Typeface f108951t;

        public float[] f108952u;

        public int f108953v;

        public int f108954w;

        public a() {
            this.f108933b = true;
            this.f108949r = -1;
            this.f108954w = -1;
        }

        @NonNull
        public C15173c A() {
            return new C15173c(this);
        }

        @NonNull
        public a B(@Px int i10) {
            this.f108938g = i10;
            return this;
        }

        @NonNull
        public a C(@Px int i10) {
            this.f108939h = i10;
            return this;
        }

        @NonNull
        public a D(@ColorInt int i10) {
            this.f108942k = i10;
            return this;
        }

        @NonNull
        public a E(@ColorInt int i10) {
            this.f108943l = i10;
            return this;
        }

        @NonNull
        public a F(@Px int i10) {
            this.f108944m = i10;
            return this;
        }

        @NonNull
        public a G(@ColorInt int i10) {
            this.f108941j = i10;
            return this;
        }

        @NonNull
        public a H(@Px int i10) {
            this.f108948q = i10;
            return this;
        }

        @NonNull
        public a I(@NonNull Typeface typeface) {
            this.f108946o = typeface;
            return this;
        }

        @NonNull
        public a J(@ColorInt int i10) {
            this.f108940i = i10;
            return this;
        }

        @NonNull
        public a K(@Px int i10) {
            this.f108947p = i10;
            return this;
        }

        @NonNull
        public a L(@NonNull Typeface typeface) {
            this.f108945n = typeface;
            return this;
        }

        @NonNull
        public a M(@ColorInt int i10) {
            this.f108950s = i10;
            return this;
        }

        @NonNull
        public a N(@Px int i10) {
            this.f108949r = i10;
            return this;
        }

        @NonNull
        public a O(@NonNull @Size(6) float[] fArr) {
            this.f108952u = fArr;
            return this;
        }

        @NonNull
        public a P(@NonNull Typeface typeface) {
            this.f108951t = typeface;
            return this;
        }

        @NonNull
        public a Q(boolean z10) {
            this.f108933b = z10;
            return this;
        }

        @NonNull
        public a R(@ColorInt int i10) {
            this.f108932a = i10;
            return this;
        }

        @NonNull
        public a S(@ColorInt int i10) {
            this.f108937f = i10;
            return this;
        }

        @NonNull
        public a T(@ColorInt int i10) {
            this.f108953v = i10;
            return this;
        }

        @NonNull
        public a U(@Px int i10) {
            this.f108954w = i10;
            return this;
        }

        @NonNull
        public a x(@Px int i10) {
            this.f108934c = i10;
            return this;
        }

        @NonNull
        public a y(@ColorInt int i10) {
            this.f108936e = i10;
            return this;
        }

        @NonNull
        public a z(@Px int i10) {
            this.f108935d = i10;
            return this;
        }

        public a(@NonNull C15173c c15173c) {
            this.f108933b = true;
            this.f108949r = -1;
            this.f108954w = -1;
            this.f108932a = c15173c.f108909a;
            this.f108933b = c15173c.f108910b;
            this.f108934c = c15173c.f108911c;
            this.f108935d = c15173c.f108912d;
            this.f108936e = c15173c.f108913e;
            this.f108937f = c15173c.f108914f;
            this.f108938g = c15173c.f108915g;
            this.f108939h = c15173c.f108916h;
            this.f108940i = c15173c.f108917i;
            this.f108941j = c15173c.f108918j;
            this.f108942k = c15173c.f108919k;
            this.f108943l = c15173c.f108920l;
            this.f108944m = c15173c.f108921m;
            this.f108945n = c15173c.f108922n;
            this.f108947p = c15173c.f108924p;
            this.f108949r = c15173c.f108926r;
            this.f108950s = c15173c.f108927s;
            this.f108951t = c15173c.f108928t;
            this.f108952u = c15173c.f108929u;
            this.f108953v = c15173c.f108930v;
            this.f108954w = c15173c.f108931w;
        }
    }
}
