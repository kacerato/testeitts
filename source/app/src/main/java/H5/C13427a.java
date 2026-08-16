package h5;

import JAVARuntime.Runnable;
import M7.c;
import M7.o;
import M7.p;
import M7.r;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import f5.C13189d;
import gb.C13317e;
import java.util.List;
import l5.C14052a;
import r4.C15147a;
import t5.h;
import t5.i;

public class C13427a extends C13189d {

    public final BasePool f90276g;

    public boolean f90277h = false;

    public float f90278i = 0.0f;

    public Q4.b f90279j;

    public class C1724a implements M7.d {

        public class C1725a implements Runnable {
            public C1725a() {
            }

            @Override
            public void run() {
                Panel3DView.y1(C13427a.this.f90276g.f74618v3, C13427a.this.f90276g.brushSize * 1.5f);
            }
        }

        public C1724a() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            K8.a.I(new C1725a());
        }
    }

    public static class b {

        public static final int[] f90282a;

        static {
            int[] iArr = new int[BasePool.J.values().length];
            f90282a = iArr;
            try {
                iArr[BasePool.J.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f90282a[BasePool.J.Add.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f90282a[BasePool.J.Remove.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class c implements P4.a {
        public c() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
            C13427a.this.f90279j = null;
        }
    }

    public class d implements M7.d {

        public G4.c f90284a;

        public class C1726a implements F5.a {
            public C1726a() {
            }

            @Override
            public void b(int idx) {
                C13427a.this.f90276g.selectedBrushID = idx;
            }

            @Override
            public int getSelected() {
                return C13427a.this.f90276g.selectedBrushID;
            }
        }

        public class b implements G4.d {
            public b() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
                d.this.f90284a = null;
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public d() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(F5.c.b(context, null, new C1726a()));
            G4.c e10 = C15147a.e(v10, steppedArrayList, "Brush", C15147a.e.Below, new b(), N7.c.g(306), N7.c.f(200), true, true, true);
            this.f90284a = e10;
            F5.c.Y(e10.f7543Z);
        }
    }

    public class e implements M7.d {

        public class C1727a extends i.d {
            public C1727a() {
            }

            @Override
            public void a(float value) {
                C13427a.this.f90276g.brushSize = value;
            }

            @Override
            public float get() {
                return C13427a.this.f90276g.brushSize;
            }

            @Override
            public float getMax() {
                return 500.0f;
            }

            @Override
            public float getMin() {
                return 0.1f;
            }
        }

        public e() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.i.a(v10, Lang.l(Lang.T.SIZE), context, C15147a.e.Below, new C1727a());
        }
    }

    public class f implements M7.d {

        public class C1728a extends i.d {
            public C1728a() {
            }

            @Override
            public void a(float value) {
                C13427a.this.f90276g.brushIntensity = value;
            }

            @Override
            public float get() {
                return C13427a.this.f90276g.brushIntensity;
            }

            @Override
            public float getMax() {
                return 1.0f;
            }

            @Override
            public float getMin() {
                return 0.001f;
            }
        }

        public f() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.i.a(v10, Lang.l(Lang.T.INTENSITY), context, C15147a.e.Below, new C1728a());
        }
    }

    public class g implements M7.d {

        public class C1729a extends h.f {
            public C1729a() {
            }

            @Override
            public void a(float value) {
                C13427a.this.f90276g.brushPlaceObjectsPerMeter = value;
            }

            @Override
            public float get() {
                return C13427a.this.f90276g.brushPlaceObjectsPerMeter;
            }
        }

        public g() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.h.a(v10, "Objects/m2", context, C15147a.e.Below, new C1729a());
        }
    }

    public class h implements M7.d {

        public class C1730a extends h.f {
            public C1730a() {
            }

            @Override
            public void a(float value) {
                C13427a.this.f90276g.brushObjectSpacing = Nc.b.G(value);
            }

            @Override
            public float get() {
                return C13427a.this.f90276g.brushObjectSpacing;
            }
        }

        public h() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.h.a(v10, "Spacing", context, C15147a.e.Below, new C1730a());
        }
    }

    public class i implements r {
        public i() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13427a.this.f90276g.f74614q3 = BasePool.J.None;
                C13427a.this.K();
            }
        }
    }

    public class j implements r {
        public j() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13427a.this.f90276g.f74614q3 = BasePool.J.Add;
                C13427a.this.K();
            }
        }
    }

    public class k implements r {
        public k() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13427a.this.f90276g.f74614q3 = BasePool.J.Remove;
                C13427a.this.K();
            }
        }
    }

    public C13427a(BasePool objectPool) {
        this.f90276g = objectPool;
    }

    public final void K() {
        if (this.f90279j == null) {
            this.f90279j = new Q4.b(this.f90276g, new c());
        }
        this.f90279j.f21908h = this.f90276g;
        if (v3.c.b() == null || v3.c.b() != this.f90279j) {
            v3.c.e(this.f90279j);
        }
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public void e() {
        if (this.f90277h) {
            float e10 = this.f90278i + K8.d.e();
            this.f90278i = e10;
            if (e10 > 3.0f) {
                this.f90278i = 0.0f;
                this.f90277h = false;
            }
        }
        if (this.f90277h) {
            return;
        }
        this.f90276g.f74609m3 = true;
        if (C13317e.J(this.f90276g.f79250n)) {
            if (this.f90276g.f79250n.Z0()) {
                K();
            } else {
                if (this.f90279j == null || v3.c.b() != this.f90279j) {
                    return;
                }
                v3.c.e(null);
                this.f90279j = null;
            }
        }
    }

    @Override
    public MousePicker.i g() {
        return MousePicker.f71420T;
    }

    @Override
    public String i() {
        return "Edit Object pool";
    }

    @Override
    public void o(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.o(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        o oVar = new o(R.drawable.touch, new i(), c.b.Top, activity);
        Ac.b bVar = C13189d.f86106b;
        o N02 = oVar.N0(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        N02.B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        o oVar2 = new o(R.drawable.hpop_add, new j(), c.b.Middle, activity);
        oVar2.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        o oVar3 = new o(R.drawable.hpop_remove, new k(), c.b.Bottom, activity);
        oVar3.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        p pVar = new p(activity);
        pVar.s(oVar);
        pVar.s(oVar2);
        pVar.s(oVar3);
        pVar.B(null);
        int i10 = b.f90282a[this.f90276g.f74614q3.ordinal()];
        if (i10 == 1) {
            pVar.y(0);
        } else if (i10 == 2) {
            pVar.y(1);
        } else if (i10 == 3) {
            pVar.y(2);
        }
        elements.add(pVar);
        elements.add(new M7.c(R.drawable.camera_zoom_v2, new C1724a(), activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }

    @Override
    public void p(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        C14052a.f(elements, activity, panel3DView);
    }

    @Override
    public void r(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        M7.c cVar = new M7.c(R.drawable.brush, new d(), c.b.Disconnected, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        elements.add(U10.M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        elements.add(new M7.c(R.drawable.brush_size, new e(), c.b.Left, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        f fVar = new f();
        c.b bVar3 = c.b.Middle;
        elements.add(new M7.c(R.drawable.brush_intensity, fVar, bVar3, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.c(R.drawable.brush_obj_count, new g(), bVar3, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.c(R.drawable.axis_v4_scale, new h(), c.b.Right, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
    }

    @Override
    public void s(Activity activity, Panel3DView panel3DView) {
        BasePool basePool = this.f90276g;
        if (basePool != null) {
            basePool.f74609m3 = false;
        }
        if (this.f90279j != null) {
            if (v3.c.b() == this.f90279j) {
                v3.c.e(null);
            }
            this.f90279j = null;
        }
    }

    @Override
    public void u(Activity activity, Panel3DView panel3DView) {
        panel3DView.S1(Panel3DView.j.Disable, true, true);
    }
}
