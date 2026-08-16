package x7;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.MotionEvent;
import android.view.View;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class b extends View {

    public final Paint f127961b;

    public final Paint f127962c;

    public final Path f127963d;

    public final Path f127964e;

    public final List<C16059a> f127965f;

    public List<j> f127966g;

    public float f127967h;

    public float f127968i;

    public float f127969j;

    public j f127970k;

    public float f127971l;

    public float f127972m;

    public boolean f127973n;

    public a f127974o;

    public interface a {
        void a(C16059a c10);
    }

    public b(Context c10) {
        super(c10);
        Paint paint = new Paint(1);
        this.f127961b = paint;
        Paint paint2 = new Paint(1);
        this.f127962c = paint2;
        this.f127963d = new Path();
        this.f127964e = new Path();
        this.f127965f = new SteppedArrayList();
        this.f127966g = new SteppedArrayList();
        this.f127967h = 48.0f;
        this.f127968i = 36.0f;
        this.f127969j = 16.0f;
        int i10 = new ColorINT("#FFE0A64D").intColor;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(4.0f);
        paint.setColor(i10);
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        paint2.setStrokeWidth(1.0f);
        paint2.setColor(i10);
        setClickable(true);
    }

    public static float b(float px, float py, float x12, float y12, float x22, float y22) {
        double hypot;
        float f10 = x22 - x12;
        float f11 = y22 - y12;
        float f12 = px - x12;
        float f13 = py - y12;
        float f14 = (f10 * f10) + (f11 * f11);
        if (f14 < 1.0E-6f) {
            hypot = Math.hypot(f12, f13);
        } else {
            float max = Math.max(0.0f, Math.min(1.0f, ((f12 * f10) + (f13 * f11)) / f14));
            hypot = Math.hypot(px - (x12 + (f10 * max)), py - (y12 + (max * f11)));
        }
        return (float) hypot;
    }

    public void a() {
        this.f127973n = false;
        invalidate();
    }

    public final void c(Canvas c10, float sx, float sy, float tx, float ty) {
        float f10 = tx - sx;
        float f11 = ty - sy;
        float hypot = (float) Math.hypot(f10, f11);
        if (hypot < 0.001f) {
            return;
        }
        float f12 = f10 / hypot;
        float f13 = f11 / hypot;
        float f14 = (sx + tx) * 0.5f;
        float f15 = (sy + ty) * 0.5f;
        float f16 = this.f127967h * 0.5f;
        float f17 = this.f127968i * 0.5f;
        float f18 = f12 * f16;
        float f19 = f14 + f18;
        float f20 = f16 * f13;
        float f21 = f15 + f20;
        float f22 = f14 - f18;
        float f23 = f15 - f20;
        float f24 = (-f13) * f17;
        float f25 = f12 * f17;
        this.f127964e.reset();
        this.f127964e.moveTo(f19, f21);
        this.f127964e.lineTo(f22 + f24, f23 + f25);
        this.f127964e.lineTo(f22 - f24, f23 - f25);
        this.f127964e.close();
        c10.drawPath(this.f127964e, this.f127962c);
    }

    public final void d(Canvas c10, float sx, float sy, float tx, float ty) {
        Math.max(80.0f, Math.abs(tx - sx) * 0.5f);
        this.f127963d.reset();
        this.f127963d.moveTo(sx, sy);
        this.f127963d.lineTo(tx, ty);
        c10.drawPath(this.f127963d, this.f127961b);
    }

    public final j e(c node) {
        for (j jVar : this.f127966g) {
            if (jVar.getNode() == node) {
                return jVar;
            }
        }
        return null;
    }

    public final C16059a f(float px, float py) {
        float max = Math.max(this.f127969j, this.f127961b.getStrokeWidth() * 1.25f);
        for (C16059a c16059a : this.f127965f) {
            j e10 = e(c16059a.a());
            j e11 = e(c16059a.b());
            if (e10 != null && e11 != null && b(px, py, e10.getCenterXInParent(), e10.getCenterYInParent(), e11.getCenterXInParent(), e11.getCenterYInParent()) <= max) {
                return c16059a;
            }
        }
        return null;
    }

    public void g(float lengthPx, float widthPx) {
        this.f127967h = Math.max(4.0f, lengthPx);
        this.f127968i = Math.max(3.0f, widthPx);
        invalidate();
    }

    public void h(List<C16059a> list, List<j> nodes) {
        this.f127965f.clear();
        this.f127965f.addAll(list);
        this.f127966g = nodes;
        invalidate();
    }

    public void i(j from, float x10, float y10) {
        this.f127973n = true;
        this.f127970k = from;
        this.f127971l = x10;
        this.f127972m = y10;
        invalidate();
    }

    @Override
    public void onDraw(Canvas c10) {
        j jVar;
        super.onDraw(c10);
        for (C16059a c16059a : this.f127965f) {
            j e10 = e(c16059a.a());
            j e11 = e(c16059a.b());
            if (e10 != null && e11 != null) {
                float centerXInParent = e10.getCenterXInParent();
                float centerYInParent = e10.getCenterYInParent();
                float centerXInParent2 = e11.getCenterXInParent();
                float centerYInParent2 = e11.getCenterYInParent();
                d(c10, centerXInParent, centerYInParent, centerXInParent2, centerYInParent2);
                c(c10, centerXInParent, centerYInParent, centerXInParent2, centerYInParent2);
            }
        }
        if (!this.f127973n || (jVar = this.f127970k) == null) {
            return;
        }
        float centerXInParent3 = jVar.getCenterXInParent();
        float centerYInParent3 = this.f127970k.getCenterYInParent();
        d(c10, centerXInParent3, centerYInParent3, this.f127971l, this.f127972m);
        c(c10, centerXInParent3, centerYInParent3, this.f127971l, this.f127972m);
    }

    @Override
    public boolean onTouchEvent(MotionEvent e10) {
        C16059a f10;
        if (e10.getActionMasked() != 0 || (f10 = f(e10.getX(), e10.getY())) == null) {
            return super.onTouchEvent(e10);
        }
        a aVar = this.f127974o;
        if (aVar == null) {
            return true;
        }
        aVar.a(f10);
        return true;
    }

    public void setOnConnectionTapListener(a l10) {
        this.f127974o = l10;
    }
}
