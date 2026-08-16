package ue;

import Ae.i;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;
import te.C15411m;
import ve.C15835a;

public class C15603e extends ReplacementSpan {

    public static final int f120497m = 0;

    public static final int f120498n = 1;

    public static final int f120499o = 2;

    public final C15606h f120500b;

    public final List<C2048e> f120501c;

    public final List<Layout> f120502d;

    public final boolean f120504f;

    public final boolean f120505g;

    public int f120508j;

    public int f120509k;

    public f f120510l;

    public final Rect f120506h = new Rect();

    public final Paint f120507i = new Paint(1);

    public final TextPaint f120503e = new TextPaint();

    public class a implements Runnable {

        public final int f120511b;

        public final int f120512c;

        public final C2048e f120513d;

        public a(int i10, int i11, C2048e c2048e) {
            this.f120511b = i10;
            this.f120512c = i11;
            this.f120513d = c2048e;
        }

        @Override
        public void run() {
            f fVar = C15603e.this.f120510l;
            if (fVar != null) {
                C15603e.this.f120502d.remove(this.f120511b);
                C15603e.this.i(this.f120511b, this.f120512c, this.f120513d);
                fVar.a();
            }
        }
    }

    public class b extends d {

        public final Runnable f120515b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Runnable runnable) {
            super(null);
            this.f120515b = runnable;
        }

        @Override
        public void invalidateDrawable(@NonNull Drawable drawable) {
            this.f120515b.run();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface c {
    }

    public static abstract class d implements Drawable.Callback {
        public d() {
        }

        @Override
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        }

        @Override
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        }

        public d(a aVar) {
            this();
        }
    }

    public static class C2048e {

        public final int f120517a;

        public final CharSequence f120518b;

        public C2048e(int i10, CharSequence charSequence) {
            this.f120517a = i10;
            this.f120518b = charSequence;
        }

        public int a() {
            return this.f120517a;
        }

        public CharSequence b() {
            return this.f120518b;
        }

        @NonNull
        public String toString() {
            return "Cell{alignment=" + this.f120517a + ", text=" + ((Object) this.f120518b) + JavaElement.JEM_ANNOTATION;
        }
    }

    public interface f {
        void a();
    }

    public C15603e(@NonNull C15606h c15606h, @NonNull List<C2048e> list, boolean z10, boolean z11) {
        this.f120500b = c15606h;
        this.f120501c = list;
        this.f120502d = new ArrayList(list.size());
        this.f120504f = z10;
        this.f120505g = z11;
    }

    @SuppressLint({"SwitchIntDef"})
    public static Layout.Alignment d(int i10) {
        return i10 != 1 ? i10 != 2 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0169 A[Catch: all -> 0x012a, TRY_LEAVE, TryCatch #0 {all -> 0x012a, blocks: (B:37:0x011c, B:40:0x0123, B:41:0x0135, B:43:0x0140, B:45:0x0159, B:47:0x0169, B:52:0x012e), top: B:36:0x011c }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016e A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(@NonNull Canvas canvas, CharSequence charSequence, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, float f10, int i12, int i13, int i14, @NonNull Paint paint) {
        int i15;
        int i16;
        boolean z10;
        f fVar;
        int save;
        int i17;
        boolean z11;
        float f11 = f10;
        int a10 = i.a(canvas, charSequence);
        if (k(a10)) {
            this.f120508j = a10;
            if (paint instanceof TextPaint) {
                this.f120503e.set((TextPaint) paint);
            } else {
                this.f120503e.set(paint);
            }
            j();
        }
        int j10 = this.f120500b.j();
        int size = this.f120502d.size();
        int f12 = f(size);
        int i18 = f12 - (this.f120508j / size);
        if (this.f120504f) {
            this.f120500b.c(this.f120507i);
        } else if (this.f120505g) {
            this.f120500b.d(this.f120507i);
        } else {
            this.f120500b.b(this.f120507i);
        }
        if (this.f120507i.getColor() != 0) {
            save = canvas.save();
            try {
                i15 = j10;
                this.f120506h.set(0, 0, this.f120508j, i14 - i12);
                canvas.translate(f11, i12);
                canvas.drawRect(this.f120506h, this.f120507i);
            } finally {
                canvas.restoreToCount(save);
            }
        } else {
            i15 = j10;
        }
        this.f120507i.set(paint);
        this.f120500b.a(this.f120507i);
        int i19 = this.f120500b.i(this.f120507i);
        boolean z12 = i19 > 0;
        int i20 = i14 - i12;
        int i21 = (i20 - this.f120509k) / 4;
        if (z12) {
            i16 = i21;
            C15605g[] c15605gArr = (C15605g[]) ((Spanned) charSequence).getSpans(i10, i11, C15605g.class);
            if (c15605gArr == null || c15605gArr.length <= 0 || !Ae.f.b(i10, charSequence, c15605gArr[0])) {
                z11 = false;
            } else {
                this.f120506h.set((int) f11, i12, this.f120508j, i12 + i19);
                canvas.drawRect(this.f120506h, this.f120507i);
                z11 = true;
            }
            this.f120506h.set((int) f11, i14 - i19, this.f120508j, i14);
            canvas.drawRect(this.f120506h, this.f120507i);
            z10 = z11;
        } else {
            i16 = i21;
            z10 = false;
        }
        int i22 = i19 / 2;
        int i23 = z10 ? i19 : 0;
        int i24 = i20 - i19;
        int i25 = 0;
        int i26 = 0;
        while (i25 < size) {
            Layout layout = this.f120502d.get(i25);
            save = canvas.save();
            try {
                canvas.translate((i25 * f12) + f11, i12);
                if (z12) {
                    if (i25 == 0) {
                        this.f120506h.set(0, i23, i19, i24);
                    } else {
                        this.f120506h.set(-i22, i23, i22, i24);
                    }
                    canvas.drawRect(this.f120506h, this.f120507i);
                    if (i25 == size - 1) {
                        i17 = i22;
                        this.f120506h.set((f12 - i19) - i18, i23, f12 - i18, i24);
                        canvas.drawRect(this.f120506h, this.f120507i);
                        int i27 = i15;
                        canvas.translate(i27, i27 + i16);
                        layout.draw(canvas);
                        if (layout.getHeight() <= i26) {
                            i26 = layout.getHeight();
                        }
                        canvas.restoreToCount(save);
                        i25++;
                        f11 = f10;
                        i15 = i27;
                        i22 = i17;
                    }
                }
                i17 = i22;
                int i272 = i15;
                canvas.translate(i272, i272 + i16);
                layout.draw(canvas);
                if (layout.getHeight() <= i26) {
                }
                canvas.restoreToCount(save);
                i25++;
                f11 = f10;
                i15 = i272;
                i22 = i17;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (this.f120509k == i26 || (fVar = this.f120510l) == null) {
            return;
        }
        fVar.a();
    }

    public int e() {
        return f(this.f120502d.size());
    }

    public int f(int i10) {
        return (int) (((this.f120508j * 1.0f) / i10) + 0.5f);
    }

    @Nullable
    public Layout g(int i10) {
        int size = this.f120502d.size();
        int f10 = i10 / f(size);
        if (f10 >= size) {
            return null;
        }
        return this.f120502d.get(f10);
    }

    @Override
    public int getSize(@NonNull Paint paint, CharSequence charSequence, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        if (this.f120502d.size() > 0 && fontMetricsInt != null) {
            Iterator<Layout> it = this.f120502d.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                int height = it.next().getHeight();
                if (height > i12) {
                    i12 = height;
                }
            }
            this.f120509k = i12;
            int i13 = -(i12 + (this.f120500b.j() * 2));
            fontMetricsInt.ascent = i13;
            fontMetricsInt.descent = 0;
            fontMetricsInt.top = i13;
            fontMetricsInt.bottom = 0;
        }
        return this.f120508j;
    }

    public void h(@Nullable f fVar) {
        this.f120510l = fVar;
    }

    public final void i(int i10, int i11, @NonNull C2048e c2048e) {
        a aVar = new a(i10, i11, c2048e);
        CharSequence charSequence = c2048e.f120518b;
        Spannable spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(c2048e.f120518b);
        StaticLayout staticLayout = new StaticLayout(spannableString, this.f120503e, i11, d(c2048e.f120517a), 1.0f, 0.0f, false);
        C15411m.a(spannableString, staticLayout);
        l(spannableString, aVar);
        this.f120502d.add(i10, staticLayout);
    }

    public final void j() {
        this.f120503e.setFakeBoldText(this.f120504f);
        int size = this.f120501c.size();
        int f10 = f(size) - (this.f120500b.j() * 2);
        this.f120502d.clear();
        int size2 = this.f120501c.size();
        for (int i10 = 0; i10 < size2; i10++) {
            i(i10, f10, this.f120501c.get(i10));
        }
    }

    public final boolean k(int i10) {
        return this.f120508j != i10;
    }

    public final void l(@NonNull Spannable spannable, @NonNull Runnable runnable) {
        ve.e[] eVarArr = (ve.e[]) spannable.getSpans(0, spannable.length(), ve.e.class);
        if (eVarArr == null || eVarArr.length <= 0) {
            return;
        }
        for (ve.e eVar : eVarArr) {
            C15835a a10 = eVar.a();
            if (!a10.l()) {
                a10.o(new b(runnable));
            }
        }
    }
}
