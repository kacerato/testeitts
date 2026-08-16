package jp.wasabeef.glide.transformations;

import F.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

public class RoundedCornersTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1";
    private static final int VERSION = 1;
    private final CornerType cornerType;
    private final int diameter;
    private final int margin;
    private final int radius;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType;

        static {
            int[] iArr = new int[CornerType.values().length];
            $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType = iArr;
            try {
                iArr[CornerType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.BOTTOM_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.BOTTOM_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.BOTTOM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.LEFT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.OTHER_TOP_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.OTHER_TOP_RIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.OTHER_BOTTOM_LEFT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.OTHER_BOTTOM_RIGHT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.DIAGONAL_FROM_TOP_LEFT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[CornerType.DIAGONAL_FROM_TOP_RIGHT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public enum CornerType {
        ALL,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT,
        OTHER_TOP_LEFT,
        OTHER_TOP_RIGHT,
        OTHER_BOTTOM_LEFT,
        OTHER_BOTTOM_RIGHT,
        DIAGONAL_FROM_TOP_LEFT,
        DIAGONAL_FROM_TOP_RIGHT
    }

    public RoundedCornersTransformation(int radius, int margin) {
        this(radius, margin, CornerType.ALL);
    }

    private void drawBottomLeftRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        RectF rectF = new RectF(this.margin, bottom - this.diameter, r1 + r3, bottom);
        int i10 = this.radius;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        int i11 = this.margin;
        canvas.drawRect(new RectF(i11, i11, i11 + this.diameter, bottom - this.radius), paint);
        canvas.drawRect(new RectF(this.radius + r1, this.margin, right, bottom), paint);
    }

    private void drawBottomRightRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.diameter;
        RectF rectF = new RectF(right - i10, bottom - i10, right, bottom);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.margin;
        canvas.drawRect(new RectF(i12, i12, right - this.radius, bottom), paint);
        int i13 = this.radius;
        canvas.drawRect(new RectF(right - i13, this.margin, right, bottom - i13), paint);
    }

    private void drawBottomRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        RectF rectF = new RectF(this.margin, bottom - this.diameter, right, bottom);
        int i10 = this.radius;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        int i11 = this.margin;
        canvas.drawRect(new RectF(i11, i11, right, bottom - this.radius), paint);
    }

    private void drawDiagonalFromTopLeftRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.margin;
        int i11 = this.diameter;
        RectF rectF = new RectF(i10, i10, i10 + i11, i10 + i11);
        int i12 = this.radius;
        canvas.drawRoundRect(rectF, i12, i12, paint);
        int i13 = this.diameter;
        RectF rectF2 = new RectF(right - i13, bottom - i13, right, bottom);
        int i14 = this.radius;
        canvas.drawRoundRect(rectF2, i14, i14, paint);
        canvas.drawRect(new RectF(this.margin, r1 + r3, right - this.radius, bottom), paint);
        canvas.drawRect(new RectF(r1 + r2, this.margin, right, bottom - this.radius), paint);
    }

    private void drawDiagonalFromTopRightRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.diameter;
        RectF rectF = new RectF(right - i10, this.margin, right, r3 + i10);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        RectF rectF2 = new RectF(this.margin, bottom - this.diameter, r1 + r3, bottom);
        int i12 = this.radius;
        canvas.drawRoundRect(rectF2, i12, i12, paint);
        int i13 = this.margin;
        int i14 = this.radius;
        canvas.drawRect(new RectF(i13, i13, right - i14, bottom - i14), paint);
        int i15 = this.margin;
        int i16 = this.radius;
        canvas.drawRect(new RectF(i15 + i16, i15 + i16, right, bottom), paint);
    }

    private void drawLeftRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.margin;
        RectF rectF = new RectF(i10, i10, i10 + this.diameter, bottom);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        canvas.drawRect(new RectF(this.radius + r1, this.margin, right, bottom), paint);
    }

    private void drawOtherBottomLeftRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.margin;
        RectF rectF = new RectF(i10, i10, right, i10 + this.diameter);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        RectF rectF2 = new RectF(right - this.diameter, this.margin, right, bottom);
        int i12 = this.radius;
        canvas.drawRoundRect(rectF2, i12, i12, paint);
        canvas.drawRect(new RectF(this.margin, r1 + r3, right - this.radius, bottom), paint);
    }

    private void drawOtherBottomRightRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.margin;
        RectF rectF = new RectF(i10, i10, right, i10 + this.diameter);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.margin;
        RectF rectF2 = new RectF(i12, i12, i12 + this.diameter, bottom);
        int i13 = this.radius;
        canvas.drawRoundRect(rectF2, i13, i13, paint);
        int i14 = this.margin;
        int i15 = this.radius;
        canvas.drawRect(new RectF(i14 + i15, i14 + i15, right, bottom), paint);
    }

    private void drawOtherTopLeftRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        RectF rectF = new RectF(this.margin, bottom - this.diameter, right, bottom);
        int i10 = this.radius;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        RectF rectF2 = new RectF(right - this.diameter, this.margin, right, bottom);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF2, i11, i11, paint);
        int i12 = this.margin;
        int i13 = this.radius;
        canvas.drawRect(new RectF(i12, i12, right - i13, bottom - i13), paint);
    }

    private void drawOtherTopRightRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.margin;
        RectF rectF = new RectF(i10, i10, i10 + this.diameter, bottom);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        RectF rectF2 = new RectF(this.margin, bottom - this.diameter, right, bottom);
        int i12 = this.radius;
        canvas.drawRoundRect(rectF2, i12, i12, paint);
        canvas.drawRect(new RectF(r1 + r2, this.margin, right, bottom - this.radius), paint);
    }

    private void drawRightRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        RectF rectF = new RectF(right - this.diameter, this.margin, right, bottom);
        int i10 = this.radius;
        canvas.drawRoundRect(rectF, i10, i10, paint);
        int i11 = this.margin;
        canvas.drawRect(new RectF(i11, i11, right - this.radius, bottom), paint);
    }

    private void drawRoundRect(Canvas canvas, Paint paint, float width, float height) {
        int i10 = this.margin;
        float f10 = width - i10;
        float f11 = height - i10;
        switch (AnonymousClass1.$SwitchMap$jp$wasabeef$glide$transformations$RoundedCornersTransformation$CornerType[this.cornerType.ordinal()]) {
            case 1:
                int i11 = this.margin;
                RectF rectF = new RectF(i11, i11, f10, f11);
                int i12 = this.radius;
                canvas.drawRoundRect(rectF, i12, i12, paint);
                return;
            case 2:
                drawTopLeftRoundRect(canvas, paint, f10, f11);
                return;
            case 3:
                drawTopRightRoundRect(canvas, paint, f10, f11);
                return;
            case 4:
                drawBottomLeftRoundRect(canvas, paint, f10, f11);
                return;
            case 5:
                drawBottomRightRoundRect(canvas, paint, f10, f11);
                return;
            case 6:
                drawTopRoundRect(canvas, paint, f10, f11);
                return;
            case 7:
                drawBottomRoundRect(canvas, paint, f10, f11);
                return;
            case 8:
                drawLeftRoundRect(canvas, paint, f10, f11);
                return;
            case 9:
                drawRightRoundRect(canvas, paint, f10, f11);
                return;
            case 10:
                drawOtherTopLeftRoundRect(canvas, paint, f10, f11);
                return;
            case 11:
                drawOtherTopRightRoundRect(canvas, paint, f10, f11);
                return;
            case 12:
                drawOtherBottomLeftRoundRect(canvas, paint, f10, f11);
                return;
            case 13:
                drawOtherBottomRightRoundRect(canvas, paint, f10, f11);
                return;
            case 14:
                drawDiagonalFromTopLeftRoundRect(canvas, paint, f10, f11);
                return;
            case 15:
                drawDiagonalFromTopRightRoundRect(canvas, paint, f10, f11);
                return;
            default:
                int i13 = this.margin;
                RectF rectF2 = new RectF(i13, i13, f10, f11);
                int i14 = this.radius;
                canvas.drawRoundRect(rectF2, i14, i14, paint);
                return;
        }
    }

    private void drawTopLeftRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.margin;
        int i11 = this.diameter;
        RectF rectF = new RectF(i10, i10, i10 + i11, i10 + i11);
        int i12 = this.radius;
        canvas.drawRoundRect(rectF, i12, i12, paint);
        int i13 = this.margin;
        int i14 = this.radius;
        canvas.drawRect(new RectF(i13, i13 + i14, i13 + i14, bottom), paint);
        canvas.drawRect(new RectF(this.radius + r1, this.margin, right, bottom), paint);
    }

    private void drawTopRightRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.diameter;
        RectF rectF = new RectF(right - i10, this.margin, right, r3 + i10);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        int i12 = this.margin;
        canvas.drawRect(new RectF(i12, i12, right - this.radius, bottom), paint);
        canvas.drawRect(new RectF(right - this.radius, this.margin + r1, right, bottom), paint);
    }

    private void drawTopRoundRect(Canvas canvas, Paint paint, float right, float bottom) {
        int i10 = this.margin;
        RectF rectF = new RectF(i10, i10, right, i10 + this.diameter);
        int i11 = this.radius;
        canvas.drawRoundRect(rectF, i11, i11, paint);
        canvas.drawRect(new RectF(this.margin, r1 + this.radius, right, bottom), paint);
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 instanceof RoundedCornersTransformation) {
            RoundedCornersTransformation roundedCornersTransformation = (RoundedCornersTransformation) o10;
            if (roundedCornersTransformation.radius == this.radius && roundedCornersTransformation.diameter == this.diameter && roundedCornersTransformation.margin == this.margin && roundedCornersTransformation.cornerType == this.cornerType) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 425235636 + (this.radius * 10000) + (this.diameter * 1000) + (this.margin * 100) + (this.cornerType.ordinal() * 10);
    }

    public String toString() {
        return "RoundedTransformation(radius=" + this.radius + ", margin=" + this.margin + ", diameter=" + this.diameter + ", cornerType=" + this.cornerType.name() + ")";
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int width = toTransform.getWidth();
        int height = toTransform.getHeight();
        Bitmap f10 = pool.f(width, height, Bitmap.Config.ARGB_8888);
        f10.setHasAlpha(true);
        setCanvasBitmapDensity(toTransform, f10);
        Canvas canvas = new Canvas(f10);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(toTransform, tileMode, tileMode));
        drawRoundRect(canvas, paint, width, height);
        return f10;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.radius + this.diameter + this.margin + ((Object) this.cornerType)).getBytes(C.e.f1956b));
    }

    public RoundedCornersTransformation(int radius, int margin, CornerType cornerType) {
        this.radius = radius;
        this.diameter = radius * 2;
        this.margin = margin;
        this.cornerType = cornerType;
    }
}
