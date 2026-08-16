package H5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bozapro.circularsliderrange.CircularSliderRange;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine2.R;
import v3.c;
import x.EnumC16038b;

public class d extends EditorPanel {

    public static final String f8196l0 = "RotationSliders";

    public View f8197X;

    public boolean f8198Y;

    public CircularSliderRange f8199Z;

    public CircularSliderRange f8200a0;

    public CircularSliderRange f8201b0;

    public TextView f8202c0;

    public TextView f8203d0;

    public TextView f8204e0;

    public float f8205f0;

    public float f8206g0;

    public float f8207h0;

    public float f8208i0;

    public float f8209j0;

    public float f8210k0;

    public class a implements CircularSliderRange.a {
        public a() {
        }

        @Override
        public void a(EnumC16038b event) {
        }

        @Override
        public void b(double pos) {
            Transform transform;
            d dVar = d.this;
            float f10 = (float) pos;
            dVar.f8205f0 = dVar.r1(dVar.f8205f0, f10);
            GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
            if (gameObject == null || (transform = gameObject.transform) == null) {
                return;
            }
            try {
                d dVar2 = d.this;
                transform.T2((-(f10 - dVar2.f8205f0)) * dVar2.f8208i0, 0.0f, 0.0f);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            d.this.f8205f0 = f10;
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.T2(W7.b.f27309i.f31909a.f31910a);
        }

        @Override
        public void c(double pos) {
            d dVar = d.this;
            float f10 = ((float) pos) / 360.0f;
            dVar.f8208i0 = f10;
            dVar.f8202c0.setText(Nc.b.v0(f10, 2));
        }

        @Override
        public void d(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                d.this.f8202c0.setText("x");
            }
        }
    }

    public class b implements CircularSliderRange.a {
        public b() {
        }

        @Override
        public void a(EnumC16038b event) {
        }

        @Override
        public void b(double pos) {
            Transform transform;
            d dVar = d.this;
            float f10 = (float) pos;
            dVar.f8206g0 = dVar.r1(dVar.f8206g0, f10);
            GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
            if (gameObject == null || (transform = gameObject.transform) == null) {
                return;
            }
            try {
                d dVar2 = d.this;
                transform.T2(0.0f, (-(f10 - dVar2.f8206g0)) * dVar2.f8209j0, 0.0f);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            d.this.f8206g0 = f10;
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.T2(W7.b.f27309i.f31909a.f31910a);
        }

        @Override
        public void c(double pos) {
            d dVar = d.this;
            float f10 = ((float) pos) / 360.0f;
            dVar.f8209j0 = f10;
            dVar.f8203d0.setText(Nc.b.v0(f10, 2));
        }

        @Override
        public void d(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                d.this.f8203d0.setText("y");
            }
        }
    }

    public class c implements CircularSliderRange.a {
        public c() {
        }

        @Override
        public void a(EnumC16038b event) {
        }

        @Override
        public void b(double pos) {
            Transform transform;
            d dVar = d.this;
            float f10 = (float) pos;
            dVar.f8207h0 = dVar.r1(dVar.f8207h0, f10);
            GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
            if (gameObject == null || (transform = gameObject.transform) == null) {
                return;
            }
            try {
                d dVar2 = d.this;
                transform.T2(0.0f, 0.0f, (-(f10 - dVar2.f8207h0)) * dVar2.f8210k0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            d.this.f8207h0 = f10;
            com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine.a.T2(W7.b.f27309i.f31909a.f31910a);
        }

        @Override
        public void c(double pos) {
            d dVar = d.this;
            float f10 = ((float) pos) / 360.0f;
            dVar.f8210k0 = f10;
            dVar.f8204e0.setText(Nc.b.v0(f10, 2));
        }

        @Override
        public void d(EnumC16038b event) {
            if (event == EnumC16038b.THUMB_RELEASED) {
                d.this.f8204e0.setText("z");
            }
        }
    }

    public d() {
        super(null, Lang.l(Lang.T.ROTATE));
        super.e1(false);
    }

    public float r1(float last, float pos) {
        if (last >= 180.0f) {
            if (pos > 180.0f) {
                return last;
            }
        } else if (last > 180.0f || pos < 180.0f) {
            return last;
        }
        return pos;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.rotation_sliders_panel, (ViewGroup) null);
        this.f8197X = inflate;
        s1();
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new d();
    }

    @Override
    public void m1() {
        boolean l02 = super.l0();
        this.f8198Y = l02;
        if (!l02 || v3.c.a() == c.b.Rotation) {
            return;
        }
        R0();
    }

    @Override
    public void n1() {
        boolean l02 = super.l0();
        this.f8198Y = l02;
        if (!l02 || v3.c.a() == c.b.Rotation) {
            return;
        }
        R0();
    }

    public final void q1() {
        GameObject gameObject;
        Transform transform;
        if (this.f8199Z == null || this.f8200a0 == null || this.f8201b0 == null || (gameObject = W7.b.f27309i.f31909a.f31910a) == null || (transform = gameObject.transform) == null) {
            return;
        }
        Vector3 B10 = transform.i0().B();
        this.f8199Z.setEndAngle(B10.getX());
        this.f8200a0.setEndAngle(B10.getY());
        this.f8201b0.setEndAngle(B10.getZ());
    }

    public final void s1() {
        this.f8199Z = (CircularSliderRange) this.f8197X.findViewById(R.id.circular);
        this.f8200a0 = (CircularSliderRange) this.f8197X.findViewById(R.id.circular3);
        this.f8201b0 = (CircularSliderRange) this.f8197X.findViewById(R.id.circular4);
        this.f8202c0 = (TextView) this.f8197X.findViewById(R.id.xt);
        this.f8203d0 = (TextView) this.f8197X.findViewById(R.id.yt);
        TextView textView = (TextView) this.f8197X.findViewById(R.id.zt);
        this.f8204e0 = textView;
        if (this.f8199Z == null || this.f8200a0 == null || this.f8201b0 == null || this.f8202c0 == null || this.f8203d0 == null || textView == null) {
            return;
        }
        q1();
        this.f8208i0 = 0.9f;
        this.f8209j0 = 0.9f;
        this.f8210k0 = 0.9f;
        this.f8199Z.setStartAngle(0.9f * 360.0f);
        this.f8200a0.setStartAngle(this.f8209j0 * 360.0f);
        this.f8201b0.setStartAngle(this.f8210k0 * 360.0f);
        this.f8199Z.setOnSliderRangeMovedListener(new a());
        this.f8200a0.setOnSliderRangeMovedListener(new b());
        this.f8201b0.setOnSliderRangeMovedListener(new c());
    }
}
