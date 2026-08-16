package cn;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public class a extends Drawable {

    public int f35052a;

    public Paint f35053b = new Paint();

    public Paint f35054c = new Paint();

    public Paint f35055d = new Paint();

    public int f35056e;

    public int f35057f;

    public Bitmap f35058g;

    public a(int rectangleSize) {
        this.f35052a = 10;
        this.f35052a = rectangleSize;
        this.f35054c.setColor(-1);
        this.f35055d.setColor(-3421237);
    }

    public final void a() {
        if (getBounds().width() <= 0 || getBounds().height() <= 0) {
            return;
        }
        this.f35058g = Bitmap.createBitmap(getBounds().width(), getBounds().height(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.f35058g);
        Rect rect = new Rect();
        boolean z10 = true;
        for (int i10 = 0; i10 <= this.f35057f; i10++) {
            boolean z11 = z10;
            for (int i11 = 0; i11 <= this.f35056e; i11++) {
                int i12 = this.f35052a;
                int i13 = i10 * i12;
                rect.top = i13;
                int i14 = i11 * i12;
                rect.left = i14;
                rect.bottom = i13 + i12;
                rect.right = i14 + i12;
                canvas.drawRect(rect, z11 ? this.f35054c : this.f35055d);
                z11 = !z11;
            }
            z10 = !z10;
        }
    }

    @Override
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.f35058g;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.f35058g, (Rect) null, getBounds(), this.f35053b);
    }

    @Override
    public int getOpacity() {
        return 0;
    }

    @Override
    public void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        int height = bounds.height();
        this.f35056e = (int) Math.ceil(bounds.width() / this.f35052a);
        this.f35057f = (int) Math.ceil(height / this.f35052a);
        a();
    }

    @Override
    public void setAlpha(int alpha) {
        throw new UnsupportedOperationException("Alpha is not supported by this drawable.");
    }

    @Override
    public void setColorFilter(ColorFilter cf2) {
        throw new UnsupportedOperationException("ColorFilter is not supported by this drawable.");
    }
}
