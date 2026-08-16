package com.pnikosis.materialishprogress;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.pnikosis.materialishprogress.a;

public class ProgressWheel extends View {

    public static final String f83483A = "ProgressWheel";

    public final int f83484b;

    public final int f83485c;

    public final long f83486d;

    public int f83487e;

    public int f83488f;

    public int f83489g;

    public boolean f83490h;

    public double f83491i;

    public double f83492j;

    public float f83493k;

    public boolean f83494l;

    public long f83495m;

    public int f83496n;

    public int f83497o;

    public Paint f83498p;

    public Paint f83499q;

    public RectF f83500r;

    public float f83501s;

    public long f83502t;

    public boolean f83503u;

    public float f83504v;

    public float f83505w;

    public boolean f83506x;

    public b f83507y;

    public boolean f83508z;

    public interface b {
        void a(float f10);
    }

    public static class c extends View.BaseSavedState {
        public static final Parcelable.Creator<c> CREATOR = new a();

        public float f83509b;

        public float f83510c;

        public boolean f83511d;

        public float f83512e;

        public int f83513f;

        public int f83514g;

        public int f83515h;

        public int f83516i;

        public int f83517j;

        public boolean f83518k;

        public boolean f83519l;

        public static class a implements Parcelable.Creator<c> {
            @Override
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.f83509b);
            parcel.writeFloat(this.f83510c);
            parcel.writeByte(this.f83511d ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.f83512e);
            parcel.writeInt(this.f83513f);
            parcel.writeInt(this.f83514g);
            parcel.writeInt(this.f83515h);
            parcel.writeInt(this.f83516i);
            parcel.writeInt(this.f83517j);
            parcel.writeByte(this.f83518k ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f83519l ? (byte) 1 : (byte) 0);
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }

        public c(Parcel parcel) {
            super(parcel);
            this.f83509b = parcel.readFloat();
            this.f83510c = parcel.readFloat();
            this.f83511d = parcel.readByte() != 0;
            this.f83512e = parcel.readFloat();
            this.f83513f = parcel.readInt();
            this.f83514g = parcel.readInt();
            this.f83515h = parcel.readInt();
            this.f83516i = parcel.readInt();
            this.f83517j = parcel.readInt();
            this.f83518k = parcel.readByte() != 0;
            this.f83519l = parcel.readByte() != 0;
        }
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f83484b = 16;
        this.f83485c = 270;
        this.f83486d = 200L;
        this.f83487e = 28;
        this.f83488f = 4;
        this.f83489g = 4;
        this.f83490h = false;
        this.f83491i = 0.0d;
        this.f83492j = 460.0d;
        this.f83493k = 0.0f;
        this.f83494l = true;
        this.f83495m = 0L;
        this.f83496n = -1442840576;
        this.f83497o = 16777215;
        this.f83498p = new Paint();
        this.f83499q = new Paint();
        this.f83500r = new RectF();
        this.f83501s = 230.0f;
        this.f83502t = 0L;
        this.f83504v = 0.0f;
        this.f83505w = 0.0f;
        this.f83506x = false;
        b(context.obtainStyledAttributes(attributeSet, a.c.f83532a));
        f();
    }

    public boolean a() {
        return this.f83506x;
    }

    public final void b(TypedArray typedArray) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f83488f = (int) TypedValue.applyDimension(1, this.f83488f, displayMetrics);
        this.f83489g = (int) TypedValue.applyDimension(1, this.f83489g, displayMetrics);
        int applyDimension = (int) TypedValue.applyDimension(1, this.f83487e, displayMetrics);
        this.f83487e = applyDimension;
        this.f83487e = (int) typedArray.getDimension(a.c.f83536e, applyDimension);
        this.f83490h = typedArray.getBoolean(a.c.f83537f, false);
        this.f83488f = (int) typedArray.getDimension(a.c.f83535d, this.f83488f);
        this.f83489g = (int) typedArray.getDimension(a.c.f83541j, this.f83489g);
        this.f83501s = typedArray.getFloat(a.c.f83542k, this.f83501s / 360.0f) * 360.0f;
        this.f83492j = typedArray.getInt(a.c.f83534c, (int) this.f83492j);
        this.f83496n = typedArray.getColor(a.c.f83533b, this.f83496n);
        this.f83497o = typedArray.getColor(a.c.f83540i, this.f83497o);
        this.f83503u = typedArray.getBoolean(a.c.f83538g, false);
        if (typedArray.getBoolean(a.c.f83539h, false)) {
            i();
        }
        typedArray.recycle();
    }

    public void c() {
        this.f83504v = 0.0f;
        this.f83505w = 0.0f;
        invalidate();
    }

    public final void d() {
        if (this.f83507y != null) {
            this.f83507y.a(Math.round((this.f83504v * 100.0f) / 360.0f) / 100.0f);
        }
    }

    public final void e(float f10) {
        b bVar = this.f83507y;
        if (bVar != null) {
            bVar.a(f10);
        }
    }

    @TargetApi(17)
    public final void f() {
        this.f83508z = Settings.Global.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f;
    }

    public final void g(int i10, int i11) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (this.f83490h) {
            int i12 = this.f83488f;
            this.f83500r = new RectF(paddingLeft + i12, paddingTop + i12, (i10 - paddingRight) - i12, (i11 - paddingBottom) - i12);
            return;
        }
        int i13 = (i10 - paddingLeft) - paddingRight;
        int min = Math.min(Math.min(i13, (i11 - paddingBottom) - paddingTop), (this.f83487e * 2) - (this.f83488f * 2));
        int i14 = ((i13 - min) / 2) + paddingLeft;
        int i15 = ((((i11 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
        int i16 = this.f83488f;
        this.f83500r = new RectF(i14 + i16, i15 + i16, (i14 + min) - i16, (i15 + min) - i16);
    }

    public int getBarColor() {
        return this.f83496n;
    }

    public int getBarWidth() {
        return this.f83488f;
    }

    public int getCircleRadius() {
        return this.f83487e;
    }

    public float getProgress() {
        if (this.f83506x) {
            return -1.0f;
        }
        return this.f83504v / 360.0f;
    }

    public int getRimColor() {
        return this.f83497o;
    }

    public int getRimWidth() {
        return this.f83489g;
    }

    public float getSpinSpeed() {
        return this.f83501s / 360.0f;
    }

    public final void h() {
        this.f83498p.setColor(this.f83496n);
        this.f83498p.setAntiAlias(true);
        Paint paint = this.f83498p;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f83498p.setStrokeWidth(this.f83488f);
        this.f83499q.setColor(this.f83497o);
        this.f83499q.setAntiAlias(true);
        this.f83499q.setStyle(style);
        this.f83499q.setStrokeWidth(this.f83489g);
    }

    public void i() {
        this.f83502t = SystemClock.uptimeMillis();
        this.f83506x = true;
        invalidate();
    }

    public void j() {
        this.f83506x = false;
        this.f83504v = 0.0f;
        this.f83505w = 0.0f;
        invalidate();
    }

    public final void k(long j10) {
        long j11 = this.f83495m;
        if (j11 < 200) {
            this.f83495m = j11 + j10;
            return;
        }
        double d10 = this.f83491i + j10;
        this.f83491i = d10;
        double d11 = this.f83492j;
        if (d10 > d11) {
            this.f83491i = d10 - d11;
            this.f83495m = 0L;
            this.f83494l = !this.f83494l;
        }
        float cos = (((float) Math.cos(((this.f83491i / d11) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
        if (this.f83494l) {
            this.f83493k = cos * 254.0f;
            return;
        }
        float f10 = (1.0f - cos) * 254.0f;
        this.f83504v += this.f83493k - f10;
        this.f83493k = f10;
    }

    @Override
    public void onDraw(Canvas canvas) {
        float f10;
        super.onDraw(canvas);
        canvas.drawArc(this.f83500r, 360.0f, 360.0f, false, this.f83499q);
        if (this.f83508z) {
            float f11 = 0.0f;
            boolean z10 = true;
            if (this.f83506x) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.f83502t;
                float f12 = (((float) uptimeMillis) * this.f83501s) / 1000.0f;
                k(uptimeMillis);
                float f13 = this.f83504v + f12;
                this.f83504v = f13;
                if (f13 > 360.0f) {
                    this.f83504v = f13 - 360.0f;
                    e(-1.0f);
                }
                this.f83502t = SystemClock.uptimeMillis();
                float f14 = this.f83504v - 90.0f;
                float f15 = this.f83493k + 16.0f;
                if (isInEditMode()) {
                    f15 = 135.0f;
                    f10 = 0.0f;
                } else {
                    f10 = f14;
                }
                canvas.drawArc(this.f83500r, f10, f15, false, this.f83498p);
            } else {
                float f16 = this.f83504v;
                if (f16 != this.f83505w) {
                    this.f83504v = Math.min(this.f83504v + ((((float) (SystemClock.uptimeMillis() - this.f83502t)) / 1000.0f) * this.f83501s), this.f83505w);
                    this.f83502t = SystemClock.uptimeMillis();
                } else {
                    z10 = false;
                }
                if (f16 != this.f83504v) {
                    d();
                }
                float f17 = this.f83504v;
                if (!this.f83503u) {
                    f11 = ((float) (1.0d - Math.pow(1.0f - (f17 / 360.0f), 4.0f))) * 360.0f;
                    f17 = ((float) (1.0d - Math.pow(1.0f - (this.f83504v / 360.0f), 2.0f))) * 360.0f;
                }
                canvas.drawArc(this.f83500r, f11 - 90.0f, isInEditMode() ? 360.0f : f17, false, this.f83498p);
            }
            if (z10) {
                invalidate();
            }
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int paddingLeft = this.f83487e + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f83487e + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824) {
            paddingLeft = size;
        } else if (mode == Integer.MIN_VALUE) {
            paddingLeft = Math.min(paddingLeft, size);
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingTop = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingTop = Math.min(paddingTop, size2);
        }
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        this.f83504v = cVar.f83509b;
        this.f83505w = cVar.f83510c;
        this.f83506x = cVar.f83511d;
        this.f83501s = cVar.f83512e;
        this.f83488f = cVar.f83513f;
        this.f83496n = cVar.f83514g;
        this.f83489g = cVar.f83515h;
        this.f83497o = cVar.f83516i;
        this.f83487e = cVar.f83517j;
        this.f83503u = cVar.f83518k;
        this.f83490h = cVar.f83519l;
        this.f83502t = SystemClock.uptimeMillis();
    }

    @Override
    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f83509b = this.f83504v;
        cVar.f83510c = this.f83505w;
        cVar.f83511d = this.f83506x;
        cVar.f83512e = this.f83501s;
        cVar.f83513f = this.f83488f;
        cVar.f83514g = this.f83496n;
        cVar.f83515h = this.f83489g;
        cVar.f83516i = this.f83497o;
        cVar.f83517j = this.f83487e;
        cVar.f83518k = this.f83503u;
        cVar.f83519l = this.f83490h;
        return cVar;
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        g(i10, i11);
        h();
        invalidate();
    }

    @Override
    public void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            this.f83502t = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i10) {
        this.f83496n = i10;
        h();
        if (this.f83506x) {
            return;
        }
        invalidate();
    }

    public void setBarWidth(int i10) {
        this.f83488f = i10;
        if (this.f83506x) {
            return;
        }
        invalidate();
    }

    public void setCallback(b bVar) {
        this.f83507y = bVar;
        if (this.f83506x) {
            return;
        }
        d();
    }

    public void setCircleRadius(int i10) {
        this.f83487e = i10;
        if (this.f83506x) {
            return;
        }
        invalidate();
    }

    public void setInstantProgress(float f10) {
        if (this.f83506x) {
            this.f83504v = 0.0f;
            this.f83506x = false;
        }
        if (f10 > 1.0f) {
            f10 -= 1.0f;
        } else if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 == this.f83505w) {
            return;
        }
        float min = Math.min(f10 * 360.0f, 360.0f);
        this.f83505w = min;
        this.f83504v = min;
        this.f83502t = SystemClock.uptimeMillis();
        invalidate();
    }

    public void setLinearProgress(boolean z10) {
        this.f83503u = z10;
        if (this.f83506x) {
            return;
        }
        invalidate();
    }

    public void setProgress(float f10) {
        if (this.f83506x) {
            this.f83504v = 0.0f;
            this.f83506x = false;
            d();
        }
        if (f10 > 1.0f) {
            f10 -= 1.0f;
        } else if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        float f11 = this.f83505w;
        if (f10 == f11) {
            return;
        }
        if (this.f83504v == f11) {
            this.f83502t = SystemClock.uptimeMillis();
        }
        this.f83505w = Math.min(f10 * 360.0f, 360.0f);
        invalidate();
    }

    public void setRimColor(int i10) {
        this.f83497o = i10;
        h();
        if (this.f83506x) {
            return;
        }
        invalidate();
    }

    public void setRimWidth(int i10) {
        this.f83489g = i10;
        if (this.f83506x) {
            return;
        }
        invalidate();
    }

    public void setSpinSpeed(float f10) {
        this.f83501s = f10 * 360.0f;
    }

    public ProgressWheel(Context context) {
        super(context);
        this.f83484b = 16;
        this.f83485c = 270;
        this.f83486d = 200L;
        this.f83487e = 28;
        this.f83488f = 4;
        this.f83489g = 4;
        this.f83490h = false;
        this.f83491i = 0.0d;
        this.f83492j = 460.0d;
        this.f83493k = 0.0f;
        this.f83494l = true;
        this.f83495m = 0L;
        this.f83496n = -1442840576;
        this.f83497o = 16777215;
        this.f83498p = new Paint();
        this.f83499q = new Paint();
        this.f83500r = new RectF();
        this.f83501s = 230.0f;
        this.f83502t = 0L;
        this.f83504v = 0.0f;
        this.f83505w = 0.0f;
        this.f83506x = false;
        f();
    }
}
