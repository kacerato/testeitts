package t5;

import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.Curve.graphkit.EditGraphView;
import com.itsmagic.engine.Engines.Engine.Curve.graphkit.MinimalRequiredException;
import com.itsmagic.engine.Engines.Engine.Curve.graphkit.NoPointSelected;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine2.R;

public class g extends EditorPanel {

    public static final String f117021Y = "CurveEditor";

    public static ColorINT f117022Z = new ColorINT("#10b178");

    public static ColorINT f117023a0 = new ColorINT("#10b178");

    public static ColorINT f117024b0 = new ColorINT(20, 20, 20);

    public static ColorINT f117025c0 = new ColorINT(0, 0, 0);

    public static ColorINT f117026d0 = new ColorINT(30, 30, 30);

    public Curve f117027X;

    public class a extends AbstractViewOnClickListenerC12733a {

        public final J9.d f117028b;

        public a(final J9.d val$display) {
            this.f117028b = val$display;
        }

        @Override
        public void click(View v10) {
            try {
                this.f117028b.e();
            } catch (MinimalRequiredException unused) {
                Toast.makeText(g.this.M(), "Can't have less than 4 points.", 0).show();
            } catch (NoPointSelected unused2) {
                Toast.makeText(g.this.M(), "Please modify the point you would like to delete", 0).show();
            }
        }
    }

    public class b implements K9.d {

        public final Curve f117030a;

        public final J9.d f117031b;

        public final EditGraphView f117032c;

        public b(final Curve val$curve, final J9.d val$display, final EditGraphView val$curveView) {
            this.f117030a = val$curve;
            this.f117031b = val$display;
            this.f117032c = val$curveView;
        }

        @Override
        public void a() {
            this.f117030a.clear();
            for (int i10 = 0; i10 < this.f117032c.j(); i10++) {
                PointF i11 = this.f117032c.i(i10);
                this.f117030a.f(Nc.b.E(0.0f, i11.f32425x / this.f117032c.p(), 1.0f), Nc.b.E(0.0f, i11.f32426y / this.f117032c.q(), 1.0f));
            }
            this.f117030a.apply();
        }

        @Override
        public void b(View v10) {
            g.this.f117027X.E(this.f117030a);
            this.f117031b.d();
        }

        @Override
        public void c(float w10, float h10) {
            this.f117032c.d();
            for (int i10 = 0; i10 < this.f117030a.B(); i10++) {
                Vector2 z10 = this.f117030a.z(i10);
                EditGraphView editGraphView = this.f117032c;
                editGraphView.a(z10.f79838x * editGraphView.p(), z10.f79839y * this.f117032c.q());
            }
            this.f117032c.v();
        }
    }

    public g() {
        super(null, "Curve Editor");
        super.e1(false);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.curve_editor_panel, (ViewGroup) null);
        J9.d dVar = new J9.d(this.f117027X, (EditGraphView) inflate.findViewById(R.id.curveView));
        ((Button) inflate.findViewById(R.id.delete)).setOnClickListener(new a(dVar));
        EditGraphView editGraphView = (EditGraphView) inflate.findViewById(R.id.default0);
        Curve curve = new Curve(M());
        new J9.e(curve, editGraphView);
        q1(editGraphView, curve, dVar);
        EditGraphView editGraphView2 = (EditGraphView) inflate.findViewById(R.id.default1);
        Curve curve2 = new Curve(M());
        curve2.clear();
        curve2.f(0.0f, 1.0f);
        curve2.f(0.25f, 0.8f);
        curve2.f(0.75f, 0.2f);
        curve2.f(1.0f, 0.0f);
        curve2.apply();
        new J9.e(curve2, editGraphView2);
        q1(editGraphView2, curve2, dVar);
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new g(this.f117027X);
    }

    public final void q1(EditGraphView curveView, Curve curve, J9.d display) {
        curveView.setListener(new b(curve, display, curveView));
    }

    public g(Curve curve) {
        super(null, "Curve Editor");
        super.e1(false);
        this.f117027X = curve;
    }
}
