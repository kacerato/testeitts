package ud;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import java.util.HashSet;

public class C15597c extends Drawable {

    public static final String f118798u = "RoundedDrawable";

    public static final int f118799v = -16777216;

    public final RectF f118800a = new RectF();

    public final RectF f118801b = new RectF();

    public final RectF f118802c;

    public final Bitmap f118803d;

    public final Paint f118804e;

    public final int f118805f;

    public final int f118806g;

    public final RectF f118807h;

    public final Paint f118808i;

    public final Matrix f118809j;

    public final RectF f118810k;

    public Shader.TileMode f118811l;

    public Shader.TileMode f118812m;

    public boolean f118813n;

    public float f118814o;

    public final boolean[] f118815p;

    public boolean f118816q;

    public float f118817r;

    public ColorStateList f118818s;

    public ImageView.ScaleType f118819t;

    public static class a {

        public static final int[] f118820a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f118820a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f118820a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f118820a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f118820a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f118820a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f118820a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f118820a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public C15597c(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.f118802c = rectF;
        this.f118807h = new RectF();
        this.f118809j = new Matrix();
        this.f118810k = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f118811l = tileMode;
        this.f118812m = tileMode;
        this.f118813n = true;
        this.f118814o = 0.0f;
        this.f118815p = new boolean[]{true, true, true, true};
        this.f118816q = false;
        this.f118817r = 0.0f;
        this.f118818s = ColorStateList.valueOf(-16777216);
        this.f118819t = ImageView.ScaleType.FIT_CENTER;
        this.f118803d = bitmap;
        int width = bitmap.getWidth();
        this.f118805f = width;
        int height = bitmap.getHeight();
        this.f118806g = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.f118804e = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f118808i = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.f118818s.getColorForState(getState(), -16777216));
        paint2.setStrokeWidth(this.f118817r);
    }

    public static boolean a(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return true;
            }
        }
        return false;
    }

    public static Bitmap c(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Exception e10) {
            e10.printStackTrace();
            Log.w(f118798u, "Failed to create bitmap from drawable!");
            return null;
        }
    }

    public static C15597c d(Bitmap bitmap) {
        if (bitmap != null) {
            return new C15597c(bitmap);
        }
        return null;
    }

    public static Drawable e(Drawable drawable) {
        if (drawable == null || (drawable instanceof C15597c)) {
            return drawable;
        }
        if (!(drawable instanceof LayerDrawable)) {
            Bitmap c10 = c(drawable);
            return c10 != null ? new C15597c(c10) : drawable;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        for (int i10 = 0; i10 < numberOfLayers; i10++) {
            layerDrawable.setDrawableByLayerId(layerDrawable.getId(i10), e(layerDrawable.getDrawable(i10)));
        }
        return layerDrawable;
    }

    public static boolean p(int i10, boolean[] zArr) {
        int length = zArr.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                return true;
            }
            if (zArr[i11] != (i11 == i10)) {
                return false;
            }
            i11++;
        }
    }

    public C15597c A(Shader.TileMode tileMode) {
        if (this.f118811l != tileMode) {
            this.f118811l = tileMode;
            this.f118813n = true;
            invalidateSelf();
        }
        return this;
    }

    public C15597c B(Shader.TileMode tileMode) {
        if (this.f118812m != tileMode) {
            this.f118812m = tileMode;
            this.f118813n = true;
            invalidateSelf();
        }
        return this;
    }

    public Bitmap C() {
        return c(this);
    }

    public final void D() {
        float width;
        float height;
        int i10 = a.f118820a[this.f118819t.ordinal()];
        if (i10 == 1) {
            this.f118807h.set(this.f118800a);
            RectF rectF = this.f118807h;
            float f10 = this.f118817r;
            rectF.inset(f10 / 2.0f, f10 / 2.0f);
            this.f118809j.reset();
            this.f118809j.setTranslate((int) (((this.f118807h.width() - this.f118805f) * 0.5f) + 0.5f), (int) (((this.f118807h.height() - this.f118806g) * 0.5f) + 0.5f));
        } else if (i10 == 2) {
            this.f118807h.set(this.f118800a);
            RectF rectF2 = this.f118807h;
            float f11 = this.f118817r;
            rectF2.inset(f11 / 2.0f, f11 / 2.0f);
            this.f118809j.reset();
            float f12 = 0.0f;
            if (this.f118805f * this.f118807h.height() > this.f118807h.width() * this.f118806g) {
                width = this.f118807h.height() / this.f118806g;
                height = 0.0f;
                f12 = (this.f118807h.width() - (this.f118805f * width)) * 0.5f;
            } else {
                width = this.f118807h.width() / this.f118805f;
                height = (this.f118807h.height() - (this.f118806g * width)) * 0.5f;
            }
            this.f118809j.setScale(width, width);
            Matrix matrix = this.f118809j;
            float f13 = this.f118817r;
            matrix.postTranslate(((int) (f12 + 0.5f)) + (f13 / 2.0f), ((int) (height + 0.5f)) + (f13 / 2.0f));
        } else if (i10 == 3) {
            this.f118809j.reset();
            float min = (((float) this.f118805f) > this.f118800a.width() || ((float) this.f118806g) > this.f118800a.height()) ? Math.min(this.f118800a.width() / this.f118805f, this.f118800a.height() / this.f118806g) : 1.0f;
            float width2 = (int) (((this.f118800a.width() - (this.f118805f * min)) * 0.5f) + 0.5f);
            float height2 = (int) (((this.f118800a.height() - (this.f118806g * min)) * 0.5f) + 0.5f);
            this.f118809j.setScale(min, min);
            this.f118809j.postTranslate(width2, height2);
            this.f118807h.set(this.f118802c);
            this.f118809j.mapRect(this.f118807h);
            RectF rectF3 = this.f118807h;
            float f14 = this.f118817r;
            rectF3.inset(f14 / 2.0f, f14 / 2.0f);
            this.f118809j.setRectToRect(this.f118802c, this.f118807h, Matrix.ScaleToFit.FILL);
        } else if (i10 == 5) {
            this.f118807h.set(this.f118802c);
            this.f118809j.setRectToRect(this.f118802c, this.f118800a, Matrix.ScaleToFit.END);
            this.f118809j.mapRect(this.f118807h);
            RectF rectF4 = this.f118807h;
            float f15 = this.f118817r;
            rectF4.inset(f15 / 2.0f, f15 / 2.0f);
            this.f118809j.setRectToRect(this.f118802c, this.f118807h, Matrix.ScaleToFit.FILL);
        } else if (i10 == 6) {
            this.f118807h.set(this.f118802c);
            this.f118809j.setRectToRect(this.f118802c, this.f118800a, Matrix.ScaleToFit.START);
            this.f118809j.mapRect(this.f118807h);
            RectF rectF5 = this.f118807h;
            float f16 = this.f118817r;
            rectF5.inset(f16 / 2.0f, f16 / 2.0f);
            this.f118809j.setRectToRect(this.f118802c, this.f118807h, Matrix.ScaleToFit.FILL);
        } else if (i10 != 7) {
            this.f118807h.set(this.f118802c);
            this.f118809j.setRectToRect(this.f118802c, this.f118800a, Matrix.ScaleToFit.CENTER);
            this.f118809j.mapRect(this.f118807h);
            RectF rectF6 = this.f118807h;
            float f17 = this.f118817r;
            rectF6.inset(f17 / 2.0f, f17 / 2.0f);
            this.f118809j.setRectToRect(this.f118802c, this.f118807h, Matrix.ScaleToFit.FILL);
        } else {
            this.f118807h.set(this.f118800a);
            RectF rectF7 = this.f118807h;
            float f18 = this.f118817r;
            rectF7.inset(f18 / 2.0f, f18 / 2.0f);
            this.f118809j.reset();
            this.f118809j.setRectToRect(this.f118802c, this.f118807h, Matrix.ScaleToFit.FILL);
        }
        this.f118801b.set(this.f118807h);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        if (this.f118813n) {
            BitmapShader bitmapShader = new BitmapShader(this.f118803d, this.f118811l, this.f118812m);
            Shader.TileMode tileMode = this.f118811l;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.f118812m == tileMode2) {
                bitmapShader.setLocalMatrix(this.f118809j);
            }
            this.f118804e.setShader(bitmapShader);
            this.f118813n = false;
        }
        if (this.f118816q) {
            if (this.f118817r <= 0.0f) {
                canvas.drawOval(this.f118801b, this.f118804e);
                return;
            } else {
                canvas.drawOval(this.f118801b, this.f118804e);
                canvas.drawOval(this.f118807h, this.f118808i);
                return;
            }
        }
        if (!b(this.f118815p)) {
            canvas.drawRect(this.f118801b, this.f118804e);
            if (this.f118817r > 0.0f) {
                canvas.drawRect(this.f118807h, this.f118808i);
                return;
            }
            return;
        }
        float f10 = this.f118814o;
        if (this.f118817r <= 0.0f) {
            canvas.drawRoundRect(this.f118801b, f10, f10, this.f118804e);
            q(canvas);
        } else {
            canvas.drawRoundRect(this.f118801b, f10, f10, this.f118804e);
            canvas.drawRoundRect(this.f118807h, f10, f10, this.f118808i);
            q(canvas);
            r(canvas);
        }
    }

    public int f() {
        return this.f118818s.getDefaultColor();
    }

    public ColorStateList g() {
        return this.f118818s;
    }

    @Override
    public int getAlpha() {
        return this.f118804e.getAlpha();
    }

    @Override
    public ColorFilter getColorFilter() {
        return this.f118804e.getColorFilter();
    }

    @Override
    public int getIntrinsicHeight() {
        return this.f118806g;
    }

    @Override
    public int getIntrinsicWidth() {
        return this.f118805f;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    public float h() {
        return this.f118817r;
    }

    public float i() {
        return this.f118814o;
    }

    @Override
    public boolean isStateful() {
        return this.f118818s.isStateful();
    }

    public float j(int i10) {
        if (this.f118815p[i10]) {
            return this.f118814o;
        }
        return 0.0f;
    }

    public ImageView.ScaleType k() {
        return this.f118819t;
    }

    public Bitmap l() {
        return this.f118803d;
    }

    public Shader.TileMode m() {
        return this.f118811l;
    }

    public Shader.TileMode n() {
        return this.f118812m;
    }

    public boolean o() {
        return this.f118816q;
    }

    @Override
    public void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.f118800a.set(rect);
        D();
    }

    @Override
    public boolean onStateChange(int[] iArr) {
        int colorForState = this.f118818s.getColorForState(iArr, 0);
        if (this.f118808i.getColor() == colorForState) {
            return super.onStateChange(iArr);
        }
        this.f118808i.setColor(colorForState);
        return true;
    }

    public final void q(Canvas canvas) {
        if (a(this.f118815p) || this.f118814o == 0.0f) {
            return;
        }
        RectF rectF = this.f118801b;
        float f10 = rectF.left;
        float f11 = rectF.top;
        float width = rectF.width() + f10;
        float height = this.f118801b.height() + f11;
        float f12 = this.f118814o;
        if (!this.f118815p[0]) {
            this.f118810k.set(f10, f11, f10 + f12, f11 + f12);
            canvas.drawRect(this.f118810k, this.f118804e);
        }
        if (!this.f118815p[1]) {
            this.f118810k.set(width - f12, f11, width, f12);
            canvas.drawRect(this.f118810k, this.f118804e);
        }
        if (!this.f118815p[2]) {
            this.f118810k.set(width - f12, height - f12, width, height);
            canvas.drawRect(this.f118810k, this.f118804e);
        }
        if (this.f118815p[3]) {
            return;
        }
        this.f118810k.set(f10, height - f12, f12 + f10, height);
        canvas.drawRect(this.f118810k, this.f118804e);
    }

    public final void r(Canvas canvas) {
        float f10;
        if (a(this.f118815p) || this.f118814o == 0.0f) {
            return;
        }
        RectF rectF = this.f118801b;
        float f11 = rectF.left;
        float f12 = rectF.top;
        float width = rectF.width() + f11;
        float height = f12 + this.f118801b.height();
        float f13 = this.f118814o;
        float f14 = this.f118817r / 2.0f;
        if (!this.f118815p[0]) {
            canvas.drawLine(f11 - f14, f12, f11 + f13, f12, this.f118808i);
            canvas.drawLine(f11, f12 - f14, f11, f12 + f13, this.f118808i);
        }
        if (!this.f118815p[1]) {
            canvas.drawLine((width - f13) - f14, f12, width, f12, this.f118808i);
            canvas.drawLine(width, f12 - f14, width, f12 + f13, this.f118808i);
        }
        if (this.f118815p[2]) {
            f10 = f13;
        } else {
            f10 = f13;
            canvas.drawLine((width - f13) - f14, height, width + f14, height, this.f118808i);
            canvas.drawLine(width, height - f10, width, height, this.f118808i);
        }
        if (this.f118815p[3]) {
            return;
        }
        canvas.drawLine(f11 - f14, height, f11 + f10, height, this.f118808i);
        canvas.drawLine(f11, height - f10, f11, height, this.f118808i);
    }

    public C15597c s(@ColorInt int i10) {
        return t(ColorStateList.valueOf(i10));
    }

    @Override
    public void setAlpha(int i10) {
        this.f118804e.setAlpha(i10);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f118804e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override
    public void setDither(boolean z10) {
        this.f118804e.setDither(z10);
        invalidateSelf();
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        this.f118804e.setFilterBitmap(z10);
        invalidateSelf();
    }

    public C15597c t(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f118818s = colorStateList;
        this.f118808i.setColor(colorStateList.getColorForState(getState(), -16777216));
        return this;
    }

    public C15597c u(float f10) {
        this.f118817r = f10;
        this.f118808i.setStrokeWidth(f10);
        return this;
    }

    public C15597c v(float f10) {
        w(f10, f10, f10, f10);
        return this;
    }

    public C15597c w(float f10, float f11, float f12, float f13) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f10));
        hashSet.add(Float.valueOf(f11));
        hashSet.add(Float.valueOf(f12));
        hashSet.add(Float.valueOf(f13));
        hashSet.remove(Float.valueOf(0.0f));
        if (hashSet.size() > 1) {
            throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
        }
        if (hashSet.isEmpty()) {
            this.f118814o = 0.0f;
        } else {
            float floatValue = ((Float) hashSet.iterator().next()).floatValue();
            if (Float.isInfinite(floatValue) || Float.isNaN(floatValue) || floatValue < 0.0f) {
                throw new IllegalArgumentException("Invalid radius value: " + floatValue);
            }
            this.f118814o = floatValue;
        }
        boolean[] zArr = this.f118815p;
        zArr[0] = f10 > 0.0f;
        zArr[1] = f11 > 0.0f;
        zArr[2] = f12 > 0.0f;
        zArr[3] = f13 > 0.0f;
        return this;
    }

    public C15597c x(int i10, float f10) {
        if (f10 != 0.0f) {
            float f11 = this.f118814o;
            if (f11 != 0.0f && f11 != f10) {
                throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
            }
        }
        if (f10 == 0.0f) {
            if (p(i10, this.f118815p)) {
                this.f118814o = 0.0f;
            }
            this.f118815p[i10] = false;
        } else {
            if (this.f118814o == 0.0f) {
                this.f118814o = f10;
            }
            this.f118815p[i10] = true;
        }
        return this;
    }

    public C15597c y(boolean z10) {
        this.f118816q = z10;
        return this;
    }

    public C15597c z(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.f118819t != scaleType) {
            this.f118819t = scaleType;
            D();
        }
        return this;
    }
}
