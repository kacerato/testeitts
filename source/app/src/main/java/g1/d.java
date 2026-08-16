package G1;

import G1.g;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class d {

    public static final boolean f7507k = false;

    public static final int f7508l = 0;

    public static final int f7509m = 1;

    public static final int f7510n = 2;

    public static final int f7511o = 2;

    public final a f7512a;

    @NonNull
    public final View f7513b;

    @NonNull
    public final Path f7514c;

    @NonNull
    public final Paint f7515d;

    @NonNull
    public final Paint f7516e;

    @Nullable
    public g.e f7517f;

    @Nullable
    public Drawable f7518g;

    public Paint f7519h;

    public boolean f7520i;

    public boolean f7521j;

    public interface a {
        void b(Canvas canvas);

        boolean c();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(a aVar) {
        this.f7512a = aVar;
        View view = (View) aVar;
        this.f7513b = view;
        view.setWillNotDraw(false);
        this.f7514c = new Path();
        this.f7515d = new Paint(7);
        Paint paint = new Paint(1);
        this.f7516e = paint;
        paint.setColor(0);
    }

    public void a() {
        if (f7511o == 0) {
            this.f7520i = true;
            this.f7521j = false;
            this.f7513b.buildDrawingCache();
            Bitmap drawingCache = this.f7513b.getDrawingCache();
            if (drawingCache == null && this.f7513b.getWidth() != 0 && this.f7513b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f7513b.getWidth(), this.f7513b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f7513b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f7515d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f7520i = false;
            this.f7521j = true;
        }
    }

    public void b() {
        if (f7511o == 0) {
            this.f7521j = false;
            this.f7513b.destroyDrawingCache();
            this.f7515d.setShader(null);
            this.f7513b.invalidate();
        }
    }

    public void c(@NonNull Canvas canvas) {
        if (p()) {
            int i10 = f7511o;
            if (i10 == 0) {
                g.e eVar = this.f7517f;
                canvas.drawCircle(eVar.f7529a, eVar.f7530b, eVar.f7531c, this.f7515d);
                if (r()) {
                    g.e eVar2 = this.f7517f;
                    canvas.drawCircle(eVar2.f7529a, eVar2.f7530b, eVar2.f7531c, this.f7516e);
                }
            } else if (i10 == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f7514c);
                this.f7512a.b(canvas);
                if (r()) {
                    canvas.drawRect(0.0f, 0.0f, this.f7513b.getWidth(), this.f7513b.getHeight(), this.f7516e);
                }
                canvas.restoreToCount(save);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i10);
                }
                this.f7512a.b(canvas);
                if (r()) {
                    canvas.drawRect(0.0f, 0.0f, this.f7513b.getWidth(), this.f7513b.getHeight(), this.f7516e);
                }
            }
        } else {
            this.f7512a.b(canvas);
            if (r()) {
                canvas.drawRect(0.0f, 0.0f, this.f7513b.getWidth(), this.f7513b.getHeight(), this.f7516e);
            }
        }
        f(canvas);
    }

    public final void d(@NonNull Canvas canvas, int i10, float f10) {
        this.f7519h.setColor(i10);
        this.f7519h.setStrokeWidth(f10);
        g.e eVar = this.f7517f;
        canvas.drawCircle(eVar.f7529a, eVar.f7530b, eVar.f7531c - (f10 / 2.0f), this.f7519h);
    }

    public final void e(@NonNull Canvas canvas) {
        this.f7512a.b(canvas);
        if (r()) {
            g.e eVar = this.f7517f;
            canvas.drawCircle(eVar.f7529a, eVar.f7530b, eVar.f7531c, this.f7516e);
        }
        if (p()) {
            d(canvas, -16777216, 10.0f);
            d(canvas, -65536, 5.0f);
        }
        f(canvas);
    }

    public final void f(@NonNull Canvas canvas) {
        if (q()) {
            Rect bounds = this.f7518g.getBounds();
            float width = this.f7517f.f7529a - (bounds.width() / 2.0f);
            float height = this.f7517f.f7530b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f7518g.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    @Nullable
    public Drawable g() {
        return this.f7518g;
    }

    @ColorInt
    public int h() {
        return this.f7516e.getColor();
    }

    public final float i(@NonNull g.e eVar) {
        return R1.a.b(eVar.f7529a, eVar.f7530b, 0.0f, 0.0f, this.f7513b.getWidth(), this.f7513b.getHeight());
    }

    @Nullable
    public g.e j() {
        g.e eVar = this.f7517f;
        if (eVar == null) {
            return null;
        }
        g.e eVar2 = new g.e(eVar);
        if (eVar2.a()) {
            eVar2.f7531c = i(eVar2);
        }
        return eVar2;
    }

    public final void k() {
        if (f7511o == 1) {
            this.f7514c.rewind();
            g.e eVar = this.f7517f;
            if (eVar != null) {
                this.f7514c.addCircle(eVar.f7529a, eVar.f7530b, eVar.f7531c, Path.Direction.CW);
            }
        }
        this.f7513b.invalidate();
    }

    public boolean l() {
        return this.f7512a.c() && !p();
    }

    public void m(@Nullable Drawable drawable) {
        this.f7518g = drawable;
        this.f7513b.invalidate();
    }

    public void n(@ColorInt int i10) {
        this.f7516e.setColor(i10);
        this.f7513b.invalidate();
    }

    public void o(@Nullable g.e eVar) {
        if (eVar == null) {
            this.f7517f = null;
        } else {
            g.e eVar2 = this.f7517f;
            if (eVar2 == null) {
                this.f7517f = new g.e(eVar);
            } else {
                eVar2.c(eVar);
            }
            if (R1.a.e(eVar.f7531c, i(eVar), 1.0E-4f)) {
                this.f7517f.f7531c = Float.MAX_VALUE;
            }
        }
        k();
    }

    public final boolean p() {
        g.e eVar = this.f7517f;
        boolean z10 = eVar == null || eVar.a();
        return f7511o == 0 ? !z10 && this.f7521j : !z10;
    }

    public final boolean q() {
        return (this.f7520i || this.f7518g == null || this.f7517f == null) ? false : true;
    }

    public final boolean r() {
        return (this.f7520i || Color.alpha(this.f7516e.getColor()) == 0) ? false : true;
    }
}
