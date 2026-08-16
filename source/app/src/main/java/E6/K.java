package e6;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import ga.C13309e;

public class K extends View {

    public final Paint f85232b;

    public ga.H f85233c;

    public boolean f85234d;

    public int f85235e;

    public E f85236f;

    public boolean f85237g;

    public boolean f85238h;

    public float f85239i;

    public K(Context context) {
        super(context);
        this.f85232b = new Paint(1);
        this.f85233c = ga.H.NUMBER;
        this.f85239i = 1.0f;
        d();
    }

    public void a(E nodeView, boolean input, int slotIndex, ga.H type) {
        this.f85236f = nodeView;
        this.f85234d = input;
        this.f85235e = slotIndex;
        this.f85237g = false;
        this.f85238h = false;
        setType(type);
    }

    public void b(E nodeView) {
        this.f85236f = nodeView;
        this.f85234d = true;
        this.f85235e = -1;
        this.f85237g = true;
        this.f85238h = false;
        setType(ga.H.BRANCH);
    }

    public void c(E nodeView) {
        this.f85236f = nodeView;
        this.f85234d = false;
        this.f85235e = -1;
        this.f85237g = false;
        this.f85238h = true;
        setType(ga.H.BRANCH);
    }

    public final void d() {
        this.f85232b.setStyle(Paint.Style.FILL);
        setClickable(true);
    }

    public boolean e() {
        return this.f85237g;
    }

    public boolean f() {
        return this.f85238h;
    }

    public boolean g() {
        return this.f85234d;
    }

    public E getNodeView() {
        return this.f85236f;
    }

    public int getSlotIndex() {
        return this.f85235e;
    }

    public ga.H getType() {
        return this.f85233c;
    }

    public void h() {
        this.f85232b.setColor(C13309e.a(this.f85233c));
        invalidate();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float k02 = Nc.b.k0(10.0f) * this.f85239i * 0.5f;
        float min = Math.min(getWidth(), getHeight()) * 0.5f;
        if (k02 > min) {
            k02 = min;
        }
        canvas.drawCircle(getWidth() * 0.5f, getHeight() * 0.5f, k02, this.f85232b);
    }

    public void setType(ga.H type) {
        if (type == null) {
            type = ga.H.NUMBER;
        }
        this.f85233c = type;
        this.f85232b.setColor(C13309e.a(type));
        invalidate();
    }

    public void setVisualScale(float scale) {
        if (scale <= 0.0f) {
            scale = 1.0f;
        }
        if (this.f85239i != scale) {
            this.f85239i = scale;
            invalidate();
        }
    }

    public K(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f85232b = new Paint(1);
        this.f85233c = ga.H.NUMBER;
        this.f85239i = 1.0f;
        d();
    }
}
