package x7;

import JAVARuntime.Time;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.G;
import com.itsmagic.engine.Activities.Editor.Utils.H;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import x7.b;
import x7.j;

public class f extends FrameLayout {

    public final Paint f127979b;

    public final Paint f127980c;

    public float f127981d;

    public float f127982e;

    public float f127983f;

    public final List<j> f127984g;

    public final List<C16059a> f127985h;

    public final b f127986i;

    public j f127987j;

    public float f127988k;

    public float f127989l;

    public H f127990m;

    public G f127991n;

    public float f127992o;

    public boolean f127993p;

    public class a implements j.a {
        public a() {
        }

        @Override
        public void a(j from, float x10, float y10) {
            f.this.f127987j = from;
            f.this.f127988k = x10;
            f.this.f127989l = y10;
            f.this.f127986i.i(from, x10, y10);
            f.this.f127993p = true;
        }

        @Override
        public void b() {
            f.this.f127987j = null;
            f.this.f127986i.a();
        }

        @Override
        public void c(j v10) {
            f.this.f127986i.invalidate();
        }

        @Override
        public void d(j to) {
            if (f.this.f127987j != null && to != null && f.this.f127987j != to) {
                f.this.f127985h.add(new C16059a(f.this.f127987j.getNode(), to.getNode()));
                f.this.f127986i.h(f.this.f127985h, f.this.f127984g);
            }
            f.this.f127987j = null;
            f.this.f127986i.a();
            f.this.f127993p = false;
        }

        @Override
        public void e(float x10, float y10) {
            f.this.f127988k = x10;
            f.this.f127989l = y10;
            f.this.f127986i.i(f.this.f127987j, x10, y10);
        }
    }

    public f(Context ctx) {
        this(ctx, null);
    }

    public static float n(float a10, float b10) {
        float f10 = a10 % b10;
        return f10 < 0.0f ? f10 + b10 : f10;
    }

    public static float o(float a10, float b10) {
        float f10 = a10 % b10;
        return f10 < 0.0f ? f10 + b10 : f10;
    }

    public static boolean q(j jVar, C16059a c16059a) {
        return c16059a.a() == jVar.getNode() || c16059a.b() == jVar.getNode();
    }

    public final float A(float wx) {
        return (wx * this.f127983f) + this.f127981d;
    }

    public final float B(float wy) {
        return (wy * this.f127983f) + this.f127982e;
    }

    public PointF getCameraCenterWorld() {
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            width = getMeasuredWidth();
            height = getMeasuredHeight();
        }
        float panX = getPanX();
        float panY = getPanY();
        float max = Math.max(1.0E-4f, getScale());
        float pivotX = getPivotX();
        float pivotY = getPivotY();
        return new PointF(((((width * 0.5f) - panX) - pivotX) / max) + pivotX, ((((height * 0.5f) - panY) - pivotY) / max) + pivotY);
    }

    public List<C16059a> getConnections() {
        return this.f127985h;
    }

    public List<j> getNodeViews() {
        return this.f127984g;
    }

    public float getPanX() {
        return this.f127981d;
    }

    public float getPanY() {
        return this.f127982e;
    }

    public float getScale() {
        return this.f127983f;
    }

    public void k(c node) {
        View inflate = LayoutInflater.from(getContext()).inflate(node.a(), (ViewGroup) null);
        node.d(inflate);
        j jVar = new j(getContext(), node, inflate, new a());
        addView(jVar);
        this.f127984g.add(jVar);
        jVar.j();
        requestLayout();
    }

    public void l(float factor) {
        float f10 = this.f127983f;
        float f11 = f10 + (factor * f10);
        this.f127983f = f11;
        this.f127983f = Nc.b.E(0.5f, f11, 1.0f);
        Iterator<j> it = this.f127984g.iterator();
        while (it.hasNext()) {
            it.next().j();
        }
        invalidate();
        this.f127986i.invalidate();
    }

    public final void m(Canvas c10) {
        float f10;
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0 || this.f127983f <= 0.0f) {
            return;
        }
        float x10 = x(0.0f);
        float f11 = width;
        float x11 = x(f11);
        float y10 = y(0.0f);
        float f12 = height;
        float y11 = y(f12);
        float floor = ((float) Math.floor(x10 / 24.0f)) * 24.0f;
        float floor2 = ((float) Math.floor(y10 / 24.0f)) * 24.0f;
        this.f127980c.setStrokeWidth(1.0f / this.f127983f);
        this.f127979b.setStrokeWidth(1.5f / this.f127983f);
        while (true) {
            boolean z10 = true;
            f10 = 120.0f;
            if (floor > x11) {
                break;
            }
            float A10 = A(floor);
            if (Math.abs(o(floor, 120.0f)) >= 1.0E-4f && Math.abs(o(floor, 120.0f) - 120.0f) >= 1.0E-4f) {
                z10 = false;
            }
            c10.drawLine(A10, 0.0f, A10, f12, z10 ? this.f127979b : this.f127980c);
            floor += 24.0f;
        }
        while (floor2 <= y11) {
            float B10 = B(floor2);
            c10.drawLine(0.0f, B10, f11, B10, (Math.abs(o(floor2, f10)) > 1.0E-4f ? 1 : (Math.abs(o(floor2, f10)) == 1.0E-4f ? 0 : -1)) < 0 || (Math.abs(o(floor2, f10) - f10) > 1.0E-4f ? 1 : (Math.abs(o(floor2, f10) - f10) == 1.0E-4f ? 0 : -1)) < 0 ? this.f127979b : this.f127980c);
            floor2 += 24.0f;
            f10 = f10;
        }
    }

    @Override
    public void onDraw(Canvas c10) {
        super.onDraw(c10);
        m(c10);
    }

    public final void p(C16059a c16059a) {
        this.f127985h.remove(c16059a);
        this.f127986i.h(this.f127985h, this.f127984g);
    }

    public void r(float dx, float dy) {
        this.f127981d += dx;
        this.f127982e += dy;
        Iterator<j> it = this.f127984g.iterator();
        while (it.hasNext()) {
            it.next().j();
        }
        invalidate();
        this.f127986i.invalidate();
    }

    public void s() {
        this.f127986i.h(this.f127985h, this.f127984g);
    }

    public void setPanX(float panX) {
        this.f127981d = panX;
    }

    public void setPanY(float panY) {
        this.f127982e = panY;
    }

    public void setScale(float scale) {
        this.f127983f = Nc.b.E(0.5f, scale, 1.0f);
        Iterator<j> it = this.f127984g.iterator();
        while (it.hasNext()) {
            it.next().j();
        }
        invalidate();
        this.f127986i.invalidate();
    }

    public void t(c node) {
        for (j jVar : this.f127984g) {
            if (jVar.getNode() == node) {
                jVar.j();
                return;
            }
        }
    }

    public void u() {
        Iterator<j> it = this.f127984g.iterator();
        while (it.hasNext()) {
            it.next().j();
        }
    }

    public void v(c node) {
        for (j jVar : this.f127984g) {
            if (jVar.getNode() == node) {
                w(jVar);
                return;
            }
        }
    }

    public final void w(final j v10) {
        this.f127984g.remove(v10);
        removeView(v10);
        this.f127985h.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean q10;
                q10 = f.q(j.this, (C16059a) obj);
                return q10;
            }
        });
        this.f127986i.h(this.f127985h, this.f127984g);
    }

    public final float x(float sx) {
        return (sx - this.f127981d) / this.f127983f;
    }

    public final float y(float sy) {
        return (sy - this.f127982e) / this.f127983f;
    }

    public void z(EditorPanel editorPanel) {
        if (this.f127990m == null) {
            this.f127990m = new H(editorPanel);
        }
        if (this.f127991n == null) {
            this.f127991n = new G(editorPanel);
        }
        this.f127991n.c();
        this.f127990m.c();
        H h10 = this.f127990m;
        if (h10.f72025a) {
            r(h10.f72026b.getX(), this.f127990m.f72026b.getY());
            this.f127993p = false;
        }
        if (this.f127993p) {
            float N02 = Nc.b.N0(this.f127983f, 1.0f, Time.getDeltaTime());
            if (N02 != this.f127983f) {
                setScale(N02);
                u();
                s();
            }
        }
    }

    public f(Context ctx, AttributeSet attrs) {
        super(ctx, attrs);
        Paint paint = new Paint(1);
        this.f127979b = paint;
        Paint paint2 = new Paint(1);
        this.f127980c = paint2;
        this.f127981d = 0.0f;
        this.f127982e = 0.0f;
        this.f127983f = 1.0f;
        this.f127984g = new SteppedArrayList();
        this.f127985h = new SteppedArrayList();
        this.f127992o = 0.0f;
        this.f127993p = false;
        setWillNotDraw(false);
        setMotionEventSplittingEnabled(false);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        paint2.setStrokeWidth(1.0f);
        paint2.setColor(579373192);
        paint.setStyle(style);
        paint.setStrokeWidth(1.5f);
        paint.setColor(864585864);
        b bVar = new b(ctx);
        this.f127986i = bVar;
        addView(bVar, 0, new FrameLayout.LayoutParams(-1, -1));
        bVar.setClickable(false);
        bVar.setFocusable(false);
        bVar.setOnConnectionTapListener(new b.a() {
            @Override
            public final void a(C16059a c16059a) {
                f.this.p(c16059a);
            }
        });
    }
}
