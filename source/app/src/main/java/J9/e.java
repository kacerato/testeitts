package J9;

import android.graphics.PointF;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.Curve.graphkit.EditGraphView;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import r4.C15147a;
import t5.g;

public class e {

    public static ColorINT f10321c = new ColorINT("#10b178");

    public static ColorINT f10322d = new ColorINT("#10b178");

    public static ColorINT f10323e = new ColorINT(20, 20, 20);

    public static ColorINT f10324f = new ColorINT(0, 0, 0);

    public static ColorINT f10325g = new ColorINT(30, 30, 30);

    public final Curve f10326a;

    public final EditGraphView f10327b;

    public class a implements K9.d {

        public class C0257a implements o4.c {
            public C0257a() {
            }

            @Override
            public void a() {
                if (e.this.f10327b == null || e.this.f10326a == null) {
                    return;
                }
                e.this.f10327b.d();
                for (int i10 = 0; i10 < e.this.f10326a.B(); i10++) {
                    Vector2 z10 = e.this.f10326a.z(i10);
                    e.this.f10327b.a(z10.f79838x * e.this.f10327b.p(), z10.f79839y * e.this.f10327b.q());
                }
                e.this.f10327b.v();
                e.this.f10327b.n();
            }
        }

        public class b implements C15147a.f {

            public final int f10330a;

            public final int f10331b;

            public b(final int val$totalW, final int val$totalH) {
                this.f10330a = val$totalW;
                this.f10331b = val$totalH;
            }

            @Override
            public void a(FloatingPanelArea floatingPanelArea) {
                floatingPanelArea.I1(this.f10330a, this.f10331b, FloatingPanelArea.i.Fixed);
            }
        }

        public a() {
        }

        @Override
        public void a() {
            e.this.f10326a.clear();
            for (int i10 = 0; i10 < e.this.f10327b.j(); i10++) {
                PointF i11 = e.this.f10327b.i(i10);
                e.this.f10326a.f(Nc.b.E(0.0f, i11.f32425x / e.this.f10327b.p(), 1.0f), Nc.b.E(0.0f, i11.f32426y / e.this.f10327b.q(), 1.0f));
            }
            e.this.f10326a.apply();
        }

        @Override
        public void b(View v10) {
            g gVar = new g(e.this.f10326a);
            gVar.d1(new C0257a());
            C15147a.i(v10, gVar, C15147a.e.Left, N7.c.g(T6.a.f24083g0), N7.c.f(200), new b(T6.a.f24083g0, 200));
        }

        @Override
        public void c(float w10, float h10) {
            e.this.f10327b.d();
            for (int i10 = 0; i10 < e.this.f10326a.B(); i10++) {
                Vector2 z10 = e.this.f10326a.z(i10);
                e.this.f10327b.a(z10.f79838x * e.this.f10327b.p(), z10.f79839y * e.this.f10327b.q());
            }
            e.this.f10327b.v();
        }
    }

    public e(Curve curve, EditGraphView curveView) {
        this.f10326a = curve;
        this.f10327b = curveView;
        d();
    }

    public EditGraphView c() {
        return this.f10327b;
    }

    public final void d() {
        this.f10327b.setLineThickness(4);
        this.f10327b.setTouchTolerance(0);
        this.f10327b.setDotThickness(0);
        this.f10327b.setInternalPadding(10);
        this.f10327b.setEditable(false);
        this.f10327b.setGridSpacing(25);
        this.f10327b.setLineColor(f10321c.intColor);
        this.f10327b.setDotColor(f10322d.intColor);
        this.f10327b.setGridColor(f10323e.intColor);
        this.f10327b.setBackColor(f10324f.intColor);
        this.f10327b.setBorderColor(f10325g.intColor);
        this.f10327b.setListener(new a());
    }
}
