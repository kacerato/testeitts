package J9;

import android.graphics.PointF;
import android.view.View;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.Curve.graphkit.EditGraphView;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class d {

    public static ColorINT f10313c = new ColorINT("#10b178");

    public static ColorINT f10314d = new ColorINT("#10b178");

    public static ColorINT f10315e = new ColorINT(20, 20, 20);

    public static ColorINT f10316f = new ColorINT(0, 0, 0);

    public static ColorINT f10317g = new ColorINT(30, 30, 30);

    public final Curve f10318a;

    public final EditGraphView f10319b;

    public class a implements K9.d {
        public a() {
        }

        @Override
        public void a() {
            d.this.f10318a.clear();
            for (int i10 = 0; i10 < d.this.f10319b.j(); i10++) {
                PointF i11 = d.this.f10319b.i(i10);
                d.this.f10318a.f(Nc.b.E(0.0f, i11.f32425x / d.this.f10319b.p(), 1.0f), Nc.b.E(0.0f, i11.f32426y / d.this.f10319b.q(), 1.0f));
            }
            d.this.f10318a.apply();
        }

        @Override
        public void b(View v10) {
        }

        @Override
        public void c(float w10, float h10) {
            d.this.f10319b.d();
            for (int i10 = 0; i10 < d.this.f10318a.B(); i10++) {
                Vector2 z10 = d.this.f10318a.z(i10);
                d.this.f10319b.a(z10.f79838x * d.this.f10319b.p(), z10.f79839y * d.this.f10319b.q());
            }
            d.this.f10319b.v();
        }
    }

    public d(Curve curve, EditGraphView curveView) {
        this.f10318a = curve;
        this.f10319b = curveView;
        f();
    }

    public EditGraphView c() {
        return this.f10319b;
    }

    public void d() {
        this.f10319b.d();
        for (int i10 = 0; i10 < this.f10318a.B(); i10++) {
            Vector2 z10 = this.f10318a.z(i10);
            EditGraphView editGraphView = this.f10319b;
            editGraphView.a(z10.f79838x * editGraphView.p(), z10.f79839y * this.f10319b.q());
        }
        this.f10319b.v();
        this.f10319b.k();
        this.f10319b.invalidate();
    }

    public void e() {
        this.f10319b.m();
    }

    public final void f() {
        this.f10319b.setLineThickness(5);
        this.f10319b.setTouchTolerance(50);
        this.f10319b.setDotThickness(12);
        this.f10319b.setInternalPadding(50);
        this.f10319b.setGridSpacing(100);
        this.f10319b.setLineColor(f10313c.intColor);
        this.f10319b.setDotColor(f10314d.intColor);
        this.f10319b.setGridColor(f10315e.intColor);
        this.f10319b.setBackColor(f10316f.intColor);
        this.f10319b.setBorderColor(f10317g.intColor);
        this.f10319b.setListener(new a());
    }
}
