package P1;

import a2.C3572o;
import a2.C3573p;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class c extends Drawable {

    public static final float f20635q = 1.3333f;

    @NonNull
    public final Paint f20637b;

    @Dimension
    public float f20643h;

    @ColorInt
    public int f20644i;

    @ColorInt
    public int f20645j;

    @ColorInt
    public int f20646k;

    @ColorInt
    public int f20647l;

    @ColorInt
    public int f20648m;

    public C3572o f20650o;

    @Nullable
    public ColorStateList f20651p;

    public final C3573p f20636a = C3573p.k();

    public final Path f20638c = new Path();

    public final Rect f20639d = new Rect();

    public final RectF f20640e = new RectF();

    public final RectF f20641f = new RectF();

    public final b f20642g = new b();

    public boolean f20649n = true;

    public class b extends Drawable.ConstantState {
        public b() {
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        @NonNull
        public Drawable newDrawable() {
            return c.this;
        }
    }

    public c(C3572o c3572o) {
        this.f20650o = c3572o;
        Paint paint = new Paint(1);
        this.f20637b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @NonNull
    public final Shader a() {
        copyBounds(this.f20639d);
        float height = this.f20643h / r1.height();
        return new LinearGradient(0.0f, r1.top, 0.0f, r1.bottom, new int[]{ColorUtils.compositeColors(this.f20644i, this.f20648m), ColorUtils.compositeColors(this.f20645j, this.f20648m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f20645j, 0), this.f20648m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f20647l, 0), this.f20648m), ColorUtils.compositeColors(this.f20647l, this.f20648m), ColorUtils.compositeColors(this.f20646k, this.f20648m)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    @NonNull
    public RectF b() {
        this.f20641f.set(getBounds());
        return this.f20641f;
    }

    public C3572o c() {
        return this.f20650o;
    }

    public void d(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f20648m = colorStateList.getColorForState(getState(), this.f20648m);
        }
        this.f20651p = colorStateList;
        this.f20649n = true;
        invalidateSelf();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        if (this.f20649n) {
            this.f20637b.setShader(a());
            this.f20649n = false;
        }
        float strokeWidth = this.f20637b.getStrokeWidth() / 2.0f;
        copyBounds(this.f20639d);
        this.f20640e.set(this.f20639d);
        float min = Math.min(this.f20650o.r().a(b()), this.f20640e.width() / 2.0f);
        if (this.f20650o.u(b())) {
            this.f20640e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f20640e, min, min, this.f20637b);
        }
    }

    public void e(@Dimension float f10) {
        if (this.f20643h != f10) {
            this.f20643h = f10;
            this.f20637b.setStrokeWidth(f10 * 1.3333f);
            this.f20649n = true;
            invalidateSelf();
        }
    }

    public void f(@ColorInt int i10, @ColorInt int i11, @ColorInt int i12, @ColorInt int i13) {
        this.f20644i = i10;
        this.f20645j = i11;
        this.f20646k = i12;
        this.f20647l = i13;
    }

    public void g(C3572o c3572o) {
        this.f20650o = c3572o;
        invalidateSelf();
    }

    @Override
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f20642g;
    }

    @Override
    public int getOpacity() {
        return this.f20643h > 0.0f ? -3 : -2;
    }

    @Override
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f20650o.u(b())) {
            outline.setRoundRect(getBounds(), this.f20650o.r().a(b()));
            return;
        }
        copyBounds(this.f20639d);
        this.f20640e.set(this.f20639d);
        this.f20636a.e(this.f20650o, 1.0f, this.f20640e, this.f20638c);
        if (this.f20638c.isConvex()) {
            outline.setConvexPath(this.f20638c);
        }
    }

    @Override
    public boolean getPadding(@NonNull Rect rect) {
        if (!this.f20650o.u(b())) {
            return true;
        }
        int round = Math.round(this.f20643h);
        rect.set(round, round, round, round);
        return true;
    }

    @Override
    public boolean isStateful() {
        ColorStateList colorStateList = this.f20651p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        this.f20649n = true;
    }

    @Override
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f20651p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f20648m)) != this.f20648m) {
            this.f20649n = true;
            this.f20648m = colorForState;
        }
        if (this.f20649n) {
            invalidateSelf();
        }
        return this.f20649n;
    }

    @Override
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        this.f20637b.setAlpha(i10);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f20637b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
