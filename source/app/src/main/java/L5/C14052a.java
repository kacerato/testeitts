package l5;

import Ic.J;
import JAVARuntime.Runnable;
import M7.c;
import M7.d;
import M7.g;
import M7.o;
import M7.r;
import Z6.l;
import a8.C3589a;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import f5.C13189d;
import gb.C13317e;
import java.util.List;
import r4.C15147a;

public class C14052a {

    public static Material f96155a;

    public static String f96156b;

    public static boolean f96157c;

    public class C1862a implements d {

        public class C1863a implements dd.d {
            public C1863a() {
            }

            @Override
            public void onSelected(View view) {
                C3589a c3589a = W7.b.f27309i;
                if (C13317e.J(c3589a.f31909a.f31910a)) {
                    if (!C13317e.J(c3589a.f31909a.f31910a.f79294k)) {
                        c3589a.f31909a.f31910a.transform.p3(Cursor3D.f71511K.m1249clone());
                        return;
                    }
                    f fVar = new f();
                    c3589a.f31909a.f31910a.f79294k.transform.p0(fVar);
                    fVar.E();
                    Vector3 vector3 = new Vector3(Cursor3D.f71511K.m1249clone());
                    fVar.p0(vector3, vector3);
                    c3589a.f31909a.f31910a.transform.p3(vector3);
                }
            }
        }

        public class b implements dd.d {

            public class C1864a implements Runnable {
                public C1864a() {
                }

                @Override
                public void run() {
                    C3589a c3589a = W7.b.f27309i;
                    if (C13317e.J(c3589a.f31909a.f31910a)) {
                        c3589a.f31909a.f31910a.transform.u0(Cursor3D.f71511K);
                    }
                }
            }

            public b() {
            }

            @Override
            public void onSelected(View view) {
                K8.a.I(new C1864a());
            }
        }

        public class c implements dd.d {
            public c() {
            }

            @Override
            public void onSelected(View view) {
                Panel3DView.y1(Cursor3D.f71511K, 10.0f);
            }
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.MOVE_OBJECT_TO_CURSOR), new C1863a()));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.MOVE_CURSOR_TO_OBJECT), new b()));
            steppedArrayList.add(new C12908b(Lang.l(Lang.T.FOCUS_ON_CURSOR), new c()));
            Y6.a.F1(v10, C15147a.e.Below, steppedArrayList);
        }
    }

    public class b implements r {

        public final Panel3DView f96162a;

        public b(final Panel3DView val$panel3DView) {
            this.f96162a = val$panel3DView;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            this.f96162a.enableLight = value;
            boolean unused = C14052a.f96157c = false;
            com.itsmagic.engine.Engines.Engine.World.a.i(new J(null));
        }
    }

    public class c implements d {

        public class C1865a extends l.h {

            public final M7.c f96163a;

            public class C1866a implements Runnable {

                public final GameObject f96165b;

                public C1866a(final GameObject val$obj) {
                    this.f96165b = val$obj;
                }

                @Override
                public void run() {
                    C13317e.j(this.f96165b);
                }
            }

            public C1865a(final M7.c val$tbButton) {
                this.f96163a = val$tbButton;
            }

            @Override
            public void b(l.g dialog) {
                super.b(dialog);
                K8.a.I(new C1866a(W7.b.f27309i.f31909a.f31910a));
                W7.b.f27308h.h(null);
                this.f96163a.g();
            }
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            l.y1(v10, C15147a.e.Above, new C1865a(tbButton));
        }
    }

    public static Material b() {
        if (f96155a == null) {
            Material material = new Material();
            f96155a = material;
            material.f78886g = false;
            material.f0("Unlit/Matcap");
        }
        return f96155a;
    }

    public static void c(List<g> elements, Activity activity, Panel3DView panel3DView) {
    }

    public static void d(List<g> elements, Activity activity, Panel3DView panel3DView) {
        elements.add(new M7.c(R.drawable.cursor3d, new C1862a(), c.b.Disconnected, activity).U(C13189d.f86106b).M(C13189d.f86107c).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }

    public static void e(List<g> elements, Activity activity, float size) {
        elements.add(new M7.c(R.drawable.bin_nopadding_v2, new c(), c.b.Disconnected, activity).U(C13189d.f86106b).M(C13189d.f86107c).m0((int) (((int) activity.getResources().getDimension(R.dimen.view3d_button_width)) * size)).Y((int) (((int) activity.getResources().getDimension(R.dimen.view3d_button_height)) * size)));
    }

    public static void f(List<g> elements, Activity activity, Panel3DView panel3DView) {
        g(elements, activity, panel3DView, c.b.Disconnected);
    }

    public static void g(List<g> elements, Activity activity, Panel3DView panel3DView, c.b connector) {
        o oVar = new o(R.drawable.lighting_bulb, new b(panel3DView), connector, activity);
        oVar.N0(C13189d.f86106b).B0(C13189d.f86107c).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        elements.add(oVar);
        oVar.y0(panel3DView.enableLight, false);
    }

    public static void h(List<g> elements, Activity activity, Panel3DView panel3DView) {
    }
}
