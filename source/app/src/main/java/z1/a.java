package Z1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import w1.C15879a;

@Deprecated
public class a extends DrawableWrapper {

    public static final double f30697q = Math.cos(Math.toRadians(45.0d));

    public static final float f30698r = 1.5f;

    public static final float f30699s = 0.25f;

    public static final float f30700t = 0.5f;

    public static final float f30701u = 1.0f;

    @NonNull
    public final Paint f30702a;

    @NonNull
    public final Paint f30703b;

    @NonNull
    public final RectF f30704c;

    public float f30705d;

    public Path f30706e;

    public float f30707f;

    public float f30708g;

    public float f30709h;

    public float f30710i;

    public boolean f30711j;

    public final int f30712k;

    public final int f30713l;

    public final int f30714m;

    public boolean f30715n;

    public float f30716o;

    public boolean f30717p;

    public a(Context context, Drawable drawable, float f10, float f11, float f12) {
        super(drawable);
        this.f30711j = true;
        this.f30715n = true;
        this.f30717p = false;
        this.f30712k = ContextCompat.getColor(context, C15879a.e.f122955z0);
        this.f30713l = ContextCompat.getColor(context, C15879a.e.f122951y0);
        this.f30714m = ContextCompat.getColor(context, C15879a.e.f122947x0);
        Paint paint = new Paint(5);
        this.f30702a = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f30705d = Math.round(f10);
        this.f30704c = new RectF();
        Paint paint2 = new Paint(paint);
        this.f30703b = paint2;
        paint2.setAntiAlias(false);
        u(f11, f12);
    }

    public static float c(float f10, float f11, boolean z10) {
        return z10 ? (float) (f10 + ((1.0d - f30697q) * f11)) : f10;
    }

    public static float d(float f10, float f11, boolean z10) {
        return z10 ? (float) ((f10 * 1.5f) + ((1.0d - f30697q) * f11)) : f10 * 1.5f;
    }

    public static int v(float f10) {
        int round = Math.round(f10);
        return round % 2 == 1 ? round - 1 : round;
    }

    public final void a(@NonNull Rect rect) {
        float f10 = this.f30708g;
        float f11 = 1.5f * f10;
        this.f30704c.set(rect.left + f10, rect.top + f11, rect.right - f10, rect.bottom - f11);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.f30704c;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        b();
    }

    public final void b() {
        float f10 = this.f30705d;
        RectF rectF = new RectF(-f10, -f10, f10, f10);
        RectF rectF2 = new RectF(rectF);
        float f11 = this.f30709h;
        rectF2.inset(-f11, -f11);
        Path path = this.f30706e;
        if (path == null) {
            this.f30706e = new Path();
        } else {
            path.reset();
        }
        this.f30706e.setFillType(Path.FillType.EVEN_ODD);
        this.f30706e.moveTo(-this.f30705d, 0.0f);
        this.f30706e.rLineTo(-this.f30709h, 0.0f);
        this.f30706e.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f30706e.arcTo(rectF, 270.0f, -90.0f, false);
        this.f30706e.close();
        float f12 = -rectF2.top;
        if (f12 > 0.0f) {
            float f13 = this.f30705d / f12;
            this.f30702a.setShader(new RadialGradient(0.0f, 0.0f, f12, new int[]{0, this.f30712k, this.f30713l, this.f30714m}, new float[]{0.0f, f13, ((1.0f - f13) / 2.0f) + f13, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f30703b.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f30712k, this.f30713l, this.f30714m}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f30703b.setAntiAlias(false);
    }

    public void e(@NonNull Canvas canvas) {
        if (this.f30711j) {
            a(getBounds());
            this.f30711j = false;
        }
        f(canvas);
        super.draw(canvas);
    }

    public final void f(@NonNull Canvas canvas) {
        int i10;
        float f10;
        int i11;
        float f11;
        float f12;
        float f13;
        int save = canvas.save();
        canvas.rotate(this.f30716o, this.f30704c.centerX(), this.f30704c.centerY());
        float f14 = this.f30705d;
        float f15 = (-f14) - this.f30709h;
        float f16 = f14 * 2.0f;
        boolean z10 = this.f30704c.width() - f16 > 0.0f;
        boolean z11 = this.f30704c.height() - f16 > 0.0f;
        float f17 = this.f30710i;
        float f18 = f14 / ((f17 - (0.5f * f17)) + f14);
        float f19 = f14 / ((f17 - (0.25f * f17)) + f14);
        float f20 = f14 / ((f17 - (f17 * 1.0f)) + f14);
        int save2 = canvas.save();
        RectF rectF = this.f30704c;
        canvas.translate(rectF.left + f14, rectF.top + f14);
        canvas.scale(f18, f19);
        canvas.drawPath(this.f30706e, this.f30702a);
        if (z10) {
            canvas.scale(1.0f / f18, 1.0f);
            i10 = save2;
            f10 = f20;
            i11 = save;
            f11 = f19;
            canvas.drawRect(0.0f, f15, this.f30704c.width() - f16, -this.f30705d, this.f30703b);
        } else {
            i10 = save2;
            f10 = f20;
            i11 = save;
            f11 = f19;
        }
        canvas.restoreToCount(i10);
        int save3 = canvas.save();
        RectF rectF2 = this.f30704c;
        canvas.translate(rectF2.right - f14, rectF2.bottom - f14);
        float f21 = f10;
        canvas.scale(f18, f21);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f30706e, this.f30702a);
        if (z10) {
            canvas.scale(1.0f / f18, 1.0f);
            f12 = f11;
            f13 = f21;
            canvas.drawRect(0.0f, f15, this.f30704c.width() - f16, (-this.f30705d) + this.f30709h, this.f30703b);
        } else {
            f12 = f11;
            f13 = f21;
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF3 = this.f30704c;
        canvas.translate(rectF3.left + f14, rectF3.bottom - f14);
        canvas.scale(f18, f13);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f30706e, this.f30702a);
        if (z11) {
            canvas.scale(1.0f / f13, 1.0f);
            canvas.drawRect(0.0f, f15, this.f30704c.height() - f16, -this.f30705d, this.f30703b);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        RectF rectF4 = this.f30704c;
        canvas.translate(rectF4.right - f14, rectF4.top + f14);
        float f22 = f12;
        canvas.scale(f18, f22);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f30706e, this.f30702a);
        if (z11) {
            canvas.scale(1.0f / f22, 1.0f);
            canvas.drawRect(0.0f, f15, this.f30704c.height() - f16, -this.f30705d, this.f30703b);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(i11);
    }

    public float g() {
        return this.f30705d;
    }

    public float h() {
        return this.f30708g;
    }

    public float i() {
        float f10 = this.f30708g;
        return (Math.max(f10, this.f30705d + ((f10 * 1.5f) / 2.0f)) * 2.0f) + (this.f30708g * 1.5f * 2.0f);
    }

    public float j() {
        float f10 = this.f30708g;
        return (Math.max(f10, this.f30705d + (f10 / 2.0f)) * 2.0f) + (this.f30708g * 2.0f);
    }

    public int k() {
        return -3;
    }

    public boolean l(@NonNull Rect rect) {
        int ceil = (int) Math.ceil(d(this.f30708g, this.f30705d, this.f30715n));
        int ceil2 = (int) Math.ceil(c(this.f30708g, this.f30705d, this.f30715n));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public float m() {
        return this.f30710i;
    }

    public void n(Rect rect) {
        this.f30711j = true;
    }

    public void o(boolean z10) {
        this.f30715n = z10;
        invalidateSelf();
    }

    public void p(int i10) {
        super.setAlpha(i10);
        this.f30702a.setAlpha(i10);
        this.f30703b.setAlpha(i10);
    }

    public void q(float f10) {
        float round = Math.round(f10);
        if (this.f30705d == round) {
            return;
        }
        this.f30705d = round;
        this.f30711j = true;
        invalidateSelf();
    }

    public void r(float f10) {
        u(this.f30710i, f10);
    }

    public final void s(float f10) {
        if (this.f30716o != f10) {
            this.f30716o = f10;
            invalidateSelf();
        }
    }

    public void t(float f10) {
        u(f10, this.f30708g);
    }

    public void u(float f10, float f11) {
        if (f10 < 0.0f || f11 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float v10 = v(f10);
        float v11 = v(f11);
        if (v10 > v11) {
            if (!this.f30717p) {
                this.f30717p = true;
            }
            v10 = v11;
        }
        if (this.f30710i == v10 && this.f30708g == v11) {
            return;
        }
        this.f30710i = v10;
        this.f30708g = v11;
        this.f30709h = Math.round(v10 * 1.5f);
        this.f30707f = v11;
        this.f30711j = true;
        invalidateSelf();
    }
}
