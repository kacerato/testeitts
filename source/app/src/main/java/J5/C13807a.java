package j5;

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
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import f5.C13189d;
import gb.C13317e;
import java.util.List;
import l5.C14052a;
import r4.C15147a;
import t5.h;
import t5.i;

@Deprecated
public class C13807a extends C13189d {

    public ObjectPool f92561g;

    public final Terrain f92562h;

    public boolean f92563i = false;

    public float f92564j = 0.0f;

    public Q4.c f92565k;

    public String f92566l;

    public class C1783a implements M7.d {

        public class C1784a implements Runnable {
            public C1784a() {
            }

            @Override
            public void run() {
                if (C13807a.this.f92561g != null) {
                    Panel3DView.y1(C13807a.this.f92561g.f74618v3, C13807a.this.f92561g.brushSize * 1.5f);
                } else {
                    System.out.println("NO HPOP");
                }
            }
        }

        public C1783a() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            K8.a.I(new C1784a());
        }
    }

    public static class b {

        public static final int[] f92569a;

        static {
            int[] iArr = new int[BasePool.J.values().length];
            f92569a = iArr;
            try {
                iArr[BasePool.J.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92569a[BasePool.J.Add.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92569a[BasePool.J.Remove.ordinal()] = 3;
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
            C13807a.this.f92565k = null;
        }
    }

    public class d implements M7.d {

        public G4.c f92571a;

        public class C1785a implements F5.a {
            public C1785a() {
            }

            @Override
            public void b(int idx) {
                C13807a.this.f92561g.selectedBrushID = idx;
            }

            @Override
            public int getSelected() {
                return C13807a.this.f92561g.selectedBrushID;
            }
        }

        public class b implements G4.d {
            public b() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
                d.this.f92571a = null;
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public d() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (C13807a.this.f92561g == null) {
                System.out.println("NO HPOP");
                return;
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(F5.c.b(context, null, new C1785a()));
            G4.c e10 = C15147a.e(v10, steppedArrayList, "Brush", C15147a.e.Below, new b(), N7.c.g(306), N7.c.f(200), true, true, true);
            this.f92571a = e10;
            F5.c.Y(e10.f7543Z);
        }
    }

    public class e implements M7.d {

        public class C1786a extends i.d {
            public C1786a() {
            }

            @Override
            public void a(float value) {
                if (C13807a.this.f92561g != null) {
                    C13807a.this.f92561g.brushSize = value;
                } else {
                    System.out.println("NO HPOP");
                }
            }

            @Override
            public float get() {
                if (C13807a.this.f92561g != null) {
                    return C13807a.this.f92561g.brushSize;
                }
                System.out.println("NO HPOP");
                return 0.0f;
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
            t5.i.a(v10, Lang.l(Lang.T.SIZE), context, C15147a.e.Below, new C1786a());
        }
    }

    public class f implements M7.d {

        public class C1787a extends i.d {
            public C1787a() {
            }

            @Override
            public void a(float value) {
                if (C13807a.this.f92561g != null) {
                    C13807a.this.f92561g.brushIntensity = value;
                } else {
                    System.out.println("NO HPOP");
                }
            }

            @Override
            public float get() {
                if (C13807a.this.f92561g != null) {
                    return C13807a.this.f92561g.brushIntensity;
                }
                System.out.println("NO HPOP");
                return 0.0f;
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
            t5.i.a(v10, Lang.l(Lang.T.INTENSITY), context, C15147a.e.Below, new C1787a());
        }
    }

    public class g implements M7.d {

        public class C1788a extends h.f {
            public C1788a() {
            }

            @Override
            public void a(float value) {
                C13807a.this.f92561g.brushPlaceObjectsPerMeter = value;
            }

            @Override
            public float get() {
                return C13807a.this.f92561g.brushPlaceObjectsPerMeter;
            }
        }

        public g() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.h.a(v10, "Objects/m2", context, C15147a.e.Below, new C1788a());
        }
    }

    public class h implements M7.d {

        public class C1789a extends h.f {
            public C1789a() {
            }

            @Override
            public void a(float value) {
                C13807a.this.f92561g.brushObjectSpacing = Nc.b.G(value);
            }

            @Override
            public float get() {
                return C13807a.this.f92561g.brushObjectSpacing;
            }
        }

        public h() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.h.a(v10, "Spacing", context, C15147a.e.Below, new C1789a());
        }
    }

    public class i implements r {
        public i() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                if (C13807a.this.f92561g == null) {
                    System.out.println("NO HPOP");
                    return;
                }
                C13807a.this.f92561g.f74614q3 = BasePool.J.None;
                C13807a.this.L();
            }
        }
    }

    public class j implements r {
        public j() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                if (C13807a.this.f92561g == null) {
                    System.out.println("NO HPOP");
                    return;
                }
                C13807a.this.f92561g.f74614q3 = BasePool.J.Add;
                C13807a.this.L();
            }
        }
    }

    public class k implements r {
        public k() {
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                if (C13807a.this.f92561g == null) {
                    System.out.println("NO HPOP");
                    return;
                }
                C13807a.this.f92561g.f74614q3 = BasePool.J.Remove;
                C13807a.this.L();
            }
        }
    }

    public C13807a(String tittle, Terrain terrain) {
        this.f92562h = terrain;
        this.f92566l = tittle;
    }

    public void L() {
        if (this.f92565k == null) {
            this.f92565k = new Q4.c(this.f92561g, this.f92562h, new c());
        }
        this.f92565k.f21913h = this.f92561g;
        if (v3.c.b() == null || v3.c.b() != this.f92565k) {
            v3.c.e(this.f92565k);
        }
    }

    public final void K() {
        if (this.f92561g == null) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f92562h.f79250n.D()) {
                    break;
                }
                Component d02 = this.f92562h.f79250n.C(i10).d0(ObjectPool.class);
                if (d02 != null) {
                    this.f92561g = (ObjectPool) d02;
                    break;
                }
                i10++;
            }
            if (this.f92561g == null) {
                try {
                    String L10 = com.itsmagic.engine.Core.Components.ProjectController.a.L();
                    com.itsmagic.engine.Core.Components.ProjectController.a.H();
                    ObjectPool objectPool = new ObjectPool();
                    this.f92561g = objectPool;
                    objectPool.maxRenderDistance = 128.0f;
                    this.f92561g.enableMaxRenderDistanceV2 = true;
                    GameObject gameObject = new GameObject("Grass - HPOP", new Transform(), this.f92561g);
                    this.f92561g.f79250n = gameObject;
                    gameObject.transform.N3(Transform.G.STATIC);
                    String I10 = com.itsmagic.engine.Core.Components.ProjectController.a.I();
                    Material material = new Material();
                    material.setString("blendingMode", "MASKED");
                    material.o0();
                    material.setFloat("alphaCutout", 0.1f);
                    material.i0("albedo", "@@ASSET@@Engine/Utils/Grass/texture.png");
                    X7.a.d(L10, I10, material.Z());
                    gameObject.p(new GameObject("Model", new ModelRenderer("@@ASSET@@Engine/Utils/Grass/model.mesh", L10 + "/" + I10)));
                    com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, this.f92562h.f79250n);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public void e() {
        if (this.f92563i) {
            float e10 = this.f92564j + K8.d.e();
            this.f92564j = e10;
            if (e10 > 3.0f) {
                this.f92564j = 0.0f;
                this.f92563i = false;
            }
        }
        if (this.f92563i) {
            return;
        }
        K();
        ObjectPool objectPool = this.f92561g;
        if (objectPool != null) {
            objectPool.f74609m3 = true;
            if (C13317e.J(this.f92561g.f79250n)) {
                if (this.f92562h.f79250n.Z0()) {
                    L();
                } else {
                    if (this.f92565k == null || v3.c.b() != this.f92565k) {
                        return;
                    }
                    v3.c.e(null);
                    this.f92565k = null;
                }
            }
        }
    }

    @Override
    public MousePicker.i g() {
        return MousePicker.f71420T;
    }

    @Override
    public String i() {
        return this.f92566l;
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
        pVar.C(null, false);
        ObjectPool objectPool = this.f92561g;
        if (objectPool != null) {
            int i10 = b.f92569a[objectPool.f74614q3.ordinal()];
            if (i10 == 1) {
                pVar.z(0, false);
            } else if (i10 == 2) {
                pVar.z(1, false);
            } else if (i10 == 3) {
                pVar.z(2, false);
            }
        }
        elements.add(pVar);
        elements.add(new M7.c(R.drawable.camera_zoom_v2, new C1783a(), activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
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
        elements.add(new M7.c(R.drawable.brush_size, new h(), c.b.Right, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
    }

    @Override
    public void s(Activity activity, Panel3DView panel3DView) {
        ObjectPool objectPool = this.f92561g;
        if (objectPool != null) {
            objectPool.f74609m3 = false;
        }
        if (this.f92565k != null) {
            if (v3.c.b() == this.f92565k) {
                v3.c.e(null);
            }
            this.f92565k = null;
        }
    }

    @Override
    public void u(Activity activity, Panel3DView panel3DView) {
        panel3DView.S1(Panel3DView.j.Disable, true, true);
    }
}
