package com.makeramen.roundedimageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import com.makeramen.roundedimageview.a;
import ud.C15597c;

public class RoundedImageView extends ImageView {

    public static final int f83384q = -2;

    public static final int f83385r = 0;

    public static final int f83386s = 1;

    public static final int f83387t = 2;

    public static final String f83388u = "RoundedImageView";

    public static final float f83389v = 0.0f;

    public static final float f83390w = 0.0f;

    public static final Shader.TileMode f83391x = Shader.TileMode.CLAMP;

    public static final ImageView.ScaleType[] f83392y = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    public static final boolean f83393z = false;

    public final float[] f83394b;

    public Drawable f83395c;

    public ColorStateList f83396d;

    public float f83397e;

    public ColorFilter f83398f;

    public boolean f83399g;

    public Drawable f83400h;

    public boolean f83401i;

    public boolean f83402j;

    public boolean f83403k;

    public int f83404l;

    public int f83405m;

    public ImageView.ScaleType f83406n;

    public Shader.TileMode f83407o;

    public Shader.TileMode f83408p;

    public static class a {

        public static final int[] f83409a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f83409a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f83409a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f83409a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f83409a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f83409a[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f83409a[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f83409a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public RoundedImageView(Context context) {
        super(context);
        this.f83394b = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.f83396d = ColorStateList.valueOf(-16777216);
        this.f83397e = 0.0f;
        this.f83398f = null;
        this.f83399g = false;
        this.f83401i = false;
        this.f83402j = false;
        this.f83403k = false;
        Shader.TileMode tileMode = f83391x;
        this.f83407o = tileMode;
        this.f83408p = tileMode;
    }

    public static Shader.TileMode f(int i10) {
        if (i10 == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i10 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i10 != 2) {
            return null;
        }
        return Shader.TileMode.MIRROR;
    }

    public final void a() {
        Drawable drawable = this.f83400h;
        if (drawable == null || !this.f83399g) {
            return;
        }
        Drawable mutate = drawable.mutate();
        this.f83400h = mutate;
        if (this.f83401i) {
            mutate.setColorFilter(this.f83398f);
        }
    }

    public float b(int i10) {
        return this.f83394b[i10];
    }

    public boolean c() {
        return this.f83402j;
    }

    public void d(boolean z10) {
        if (this.f83403k == z10) {
            return;
        }
        this.f83403k = z10;
        m(true);
        invalidate();
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public boolean e() {
        return this.f83403k;
    }

    public final Drawable g() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.f83405m;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                Log.w(f83388u, "Unable to find resource: " + this.f83405m, e10);
                this.f83405m = 0;
            }
        }
        return C15597c.e(drawable);
    }

    @ColorInt
    public int getBorderColor() {
        return this.f83396d.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.f83396d;
    }

    public float getBorderWidth() {
        return this.f83397e;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float f10 = 0.0f;
        for (float f11 : this.f83394b) {
            f10 = Math.max(f11, f10);
        }
        return f10;
    }

    @Override
    public ImageView.ScaleType getScaleType() {
        return this.f83406n;
    }

    public Shader.TileMode getTileModeX() {
        return this.f83407o;
    }

    public Shader.TileMode getTileModeY() {
        return this.f83408p;
    }

    public final Drawable h() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.f83404l;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                Log.w(f83388u, "Unable to find resource: " + this.f83404l, e10);
                this.f83404l = 0;
            }
        }
        return C15597c.e(drawable);
    }

    public void i(float f10, float f11, float f12, float f13) {
        float[] fArr = this.f83394b;
        if (fArr[0] == f10 && fArr[1] == f11 && fArr[2] == f13 && fArr[3] == f12) {
            return;
        }
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[3] = f12;
        fArr[2] = f13;
        n();
        m(false);
        invalidate();
    }

    public void j(int i10, float f10) {
        float[] fArr = this.f83394b;
        if (fArr[i10] == f10) {
            return;
        }
        fArr[i10] = f10;
        n();
        m(false);
        invalidate();
    }

    public void k(int i10, @DimenRes int i11) {
        j(i10, getResources().getDimensionPixelSize(i11));
    }

    public final void l(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof C15597c) {
            C15597c c15597c = (C15597c) drawable;
            c15597c.z(scaleType).u(this.f83397e).t(this.f83396d).y(this.f83402j).A(this.f83407o).B(this.f83408p);
            float[] fArr = this.f83394b;
            if (fArr != null) {
                c15597c.w(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            a();
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                l(layerDrawable.getDrawable(i10), scaleType);
            }
        }
    }

    public final void m(boolean z10) {
        if (this.f83403k) {
            if (z10) {
                this.f83395c = C15597c.e(this.f83395c);
            }
            l(this.f83395c, ImageView.ScaleType.FIT_XY);
        }
    }

    public final void n() {
        l(this.f83400h, this.f83406n);
    }

    @Override
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override
    public void setBackgroundColor(int i10) {
        ColorDrawable colorDrawable = new ColorDrawable(i10);
        this.f83395c = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f83395c = drawable;
        m(true);
        super.setBackgroundDrawable(this.f83395c);
    }

    @Override
    public void setBackgroundResource(@DrawableRes int i10) {
        if (this.f83405m != i10) {
            this.f83405m = i10;
            Drawable g10 = g();
            this.f83395c = g10;
            setBackgroundDrawable(g10);
        }
    }

    public void setBorderColor(@ColorInt int i10) {
        setBorderColor(ColorStateList.valueOf(i10));
    }

    public void setBorderWidth(@DimenRes int i10) {
        setBorderWidth(getResources().getDimension(i10));
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f83398f != colorFilter) {
            this.f83398f = colorFilter;
            this.f83401i = true;
            this.f83399g = true;
            a();
            invalidate();
        }
    }

    public void setCornerRadius(float f10) {
        i(f10, f10, f10, f10);
    }

    public void setCornerRadiusDimen(@DimenRes int i10) {
        float dimension = getResources().getDimension(i10);
        i(dimension, dimension, dimension, dimension);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        this.f83404l = 0;
        this.f83400h = C15597c.d(bitmap);
        n();
        super.setImageDrawable(this.f83400h);
    }

    @Override
    public void setImageDrawable(Drawable drawable) {
        this.f83404l = 0;
        this.f83400h = C15597c.e(drawable);
        n();
        super.setImageDrawable(this.f83400h);
    }

    @Override
    public void setImageResource(@DrawableRes int i10) {
        if (this.f83404l != i10) {
            this.f83404l = i10;
            this.f83400h = h();
            n();
            super.setImageDrawable(this.f83400h);
        }
    }

    @Override
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z10) {
        this.f83402j = z10;
        n();
        m(false);
        invalidate();
    }

    @Override
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.f83406n != scaleType) {
            this.f83406n = scaleType;
            switch (a.f83409a[scaleType.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            n();
            m(false);
            invalidate();
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.f83407o == tileMode) {
            return;
        }
        this.f83407o = tileMode;
        n();
        m(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.f83408p == tileMode) {
            return;
        }
        this.f83408p = tileMode;
        n();
        m(false);
        invalidate();
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.f83396d.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        this.f83396d = colorStateList;
        n();
        m(false);
        if (this.f83397e > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float f10) {
        if (this.f83397e == f10) {
            return;
        }
        this.f83397e = f10;
        n();
        m(false);
        invalidate();
    }

    public RoundedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundedImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f};
        this.f83394b = fArr;
        this.f83396d = ColorStateList.valueOf(-16777216);
        this.f83397e = 0.0f;
        this.f83398f = null;
        this.f83399g = false;
        this.f83401i = false;
        this.f83402j = false;
        this.f83403k = false;
        Shader.TileMode tileMode = f83391x;
        this.f83407o = tileMode;
        this.f83408p = tileMode;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.d.f83435a, i10, 0);
        int i11 = obtainStyledAttributes.getInt(a.d.f83436b, -1);
        if (i11 >= 0) {
            setScaleType(f83392y[i11]);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.d.f83439e, -1);
        fArr[0] = obtainStyledAttributes.getDimensionPixelSize(a.d.f83442h, -1);
        fArr[1] = obtainStyledAttributes.getDimensionPixelSize(a.d.f83443i, -1);
        fArr[2] = obtainStyledAttributes.getDimensionPixelSize(a.d.f83441g, -1);
        fArr[3] = obtainStyledAttributes.getDimensionPixelSize(a.d.f83440f, -1);
        int length = fArr.length;
        boolean z10 = false;
        for (int i12 = 0; i12 < length; i12++) {
            float[] fArr2 = this.f83394b;
            if (fArr2[i12] < 0.0f) {
                fArr2[i12] = 0.0f;
            } else {
                z10 = true;
            }
        }
        if (!z10) {
            dimensionPixelSize = dimensionPixelSize < 0.0f ? 0.0f : dimensionPixelSize;
            int length2 = this.f83394b.length;
            for (int i13 = 0; i13 < length2; i13++) {
                this.f83394b[i13] = dimensionPixelSize;
            }
        }
        float dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(a.d.f83438d, -1);
        this.f83397e = dimensionPixelSize2;
        if (dimensionPixelSize2 < 0.0f) {
            this.f83397e = 0.0f;
        }
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(a.d.f83437c);
        this.f83396d = colorStateList;
        if (colorStateList == null) {
            this.f83396d = ColorStateList.valueOf(-16777216);
        }
        this.f83403k = obtainStyledAttributes.getBoolean(a.d.f83444j, false);
        this.f83402j = obtainStyledAttributes.getBoolean(a.d.f83445k, false);
        int i14 = obtainStyledAttributes.getInt(a.d.f83446l, -2);
        if (i14 != -2) {
            setTileModeX(f(i14));
            setTileModeY(f(i14));
        }
        int i15 = obtainStyledAttributes.getInt(a.d.f83447m, -2);
        if (i15 != -2) {
            setTileModeX(f(i15));
        }
        int i16 = obtainStyledAttributes.getInt(a.d.f83448n, -2);
        if (i16 != -2) {
            setTileModeY(f(i16));
        }
        n();
        m(true);
        if (this.f83403k) {
            super.setBackgroundDrawable(this.f83395c);
        }
        obtainStyledAttributes.recycle();
    }
}
