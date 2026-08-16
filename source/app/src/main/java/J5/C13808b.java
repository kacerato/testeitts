package j5;

import C5.b;
import F5.c;
import JAVARuntime.Runnable;
import M7.c;
import M7.r;
import Z6.e;
import aa.C3593a;
import aa.C3595c;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import d4.C12873a;
import e4.AbstractC13004a;
import e4.C13005b;
import e4.EnumC13007d;
import f5.C13189d;
import gb.C13317e;
import java.util.List;
import l5.C14052a;
import r4.C15147a;
import t5.i;

public class C13808b extends C13189d {

    public final Terrain f92586g;

    public boolean f92587h = false;

    public float f92588i = 0.0f;

    public C12873a f92589j;

    public M7.c f92590k;

    public G4.c f92591l;

    public G4.c f92592m;

    public class a implements r {
        public a() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = true;
                C13808b.this.f92586g.f77024L = false;
                C13808b.this.f92586g.f77028M = Terrain.a0.Raise;
                C13808b.this.N();
                C13808b.this.f92590k.o(false);
            }
        }
    }

    public class C1790b implements r {
        public C1790b() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = true;
                C13808b.this.f92586g.f77024L = true;
                C13808b.this.f92586g.f77028M = Terrain.a0.Raise;
                C13808b.this.N();
                C13808b.this.f92590k.o(false);
            }
        }
    }

    public class c implements r {
        public c() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = true;
                C13808b.this.f92586g.f77028M = Terrain.a0.Smooth;
                C13808b.this.N();
                C13808b.this.f92590k.o(false);
            }
        }
    }

    public class d implements r {
        public d() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = true;
                C13808b.this.f92586g.f77028M = Terrain.a0.Level;
                C13808b.this.N();
                C13808b.this.A();
                C13808b.this.f92590k.o(false);
            }
        }
    }

    public class e implements r {
        public e() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = true;
                C13808b.this.f92586g.f77028M = Terrain.a0.ProceduralPaint;
                C13808b.this.N();
                C13808b.this.A();
                C13808b.this.f92590k.o(false);
            }
        }
    }

    public class f implements r {
        public f() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = true;
                C13808b.this.f92586g.f77028M = Terrain.a0.Paint;
                C13808b.this.N();
                C13808b.this.f92590k.o(true);
            }
        }
    }

    public static class g {

        public static final int[] f92599a;

        static {
            int[] iArr = new int[Terrain.a0.values().length];
            f92599a = iArr;
            try {
                iArr[Terrain.a0.ProceduralBrush.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92599a[Terrain.a0.Raise.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92599a[Terrain.a0.Smooth.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92599a[Terrain.a0.Level.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f92599a[Terrain.a0.Paint.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public class h implements P4.a {
        public h() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
            C13808b.this.f92589j = null;
        }
    }

    public class i implements M7.d {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                float worldY;
                try {
                    aa.e eVar = new aa.e();
                    eVar.o(false);
                    eVar.n(false);
                    C3593a y10 = eVar.y(new C3595c(new aa.d(new Vector3(C13808b.this.f92586g.f77013H.f79838x, C13808b.this.f92586g.maxHeight + C13808b.this.f92586g.f79250n.transform.x0(), C13808b.this.f92586g.f77013H.f79839y), new Vector3(0.0f, -1.0f, 0.0f))));
                    if (y10 != null) {
                        Panel3DView.y1(new Vector3(C13808b.this.f92586g.f77013H.f79838x, y10.i().getY(), C13808b.this.f92586g.f77013H.f79839y), C13808b.this.f92586g.brushSize * 1.5f);
                    } else {
                        if (C13808b.this.f92586g.isDataLoaded()) {
                            try {
                                worldY = C13808b.this.f92586g.getWorldY(C13808b.this.f92586g.f77013H.f79838x, C13808b.this.f92586g.f77013H.f79839y);
                            } catch (Exception unused) {
                            }
                            Panel3DView.y1(new Vector3(C13808b.this.f92586g.f77013H.f79838x, worldY, C13808b.this.f92586g.f77013H.f79839y), C13808b.this.f92586g.brushSize * 1.5f);
                        }
                        worldY = 0.0f;
                        Panel3DView.y1(new Vector3(C13808b.this.f92586g.f77013H.f79838x, worldY, C13808b.this.f92586g.f77013H.f79839y), C13808b.this.f92586g.brushSize * 1.5f);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    try {
                        Panel3DView.y1(new Vector3(C13808b.this.f92586g.f77013H.f79838x, 0.0f, C13808b.this.f92586g.f77013H.f79839y), C13808b.this.f92586g.brushSize * 1.5f);
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }
        }

        public i() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            K8.a.I(new a());
        }
    }

    public class j implements M7.d {

        public class a extends c.n0<EnumC13007d> {
            public a() {
            }

            @Override
            public void set(EnumC13007d value) {
                C13808b.this.f92586g.setProceduralHeightmapBrushType(value);
                C13808b.this.A();
            }

            @Override
            public String c(EnumC13007d enumObject) {
                return enumObject == null ? "" : enumObject.b();
            }
        }

        public class C1791b implements G4.d {
            public C1791b() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public class c extends c.n0<f4.c> {
            public c() {
            }

            @Override
            public void set(f4.c value) {
                C13808b.this.f92586g.setProceduralPaintType(value);
                C13808b.this.A();
            }

            @Override
            public String c(f4.c enumObject) {
                return enumObject == null ? "" : enumObject.b();
            }
        }

        public class d implements G4.d {
            public d() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public class e implements F5.a {
            public e() {
            }

            @Override
            public void b(int idx) {
                C13808b.this.f92586g.selectedBrushID = idx;
            }

            @Override
            public int getSelected() {
                return C13808b.this.f92586g.selectedBrushID;
            }
        }

        public class f implements G4.d {
            public f() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public j() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            Terrain.a0 a0Var = C13808b.this.f92586g.f77028M;
            Terrain.a0 a0Var2 = Terrain.a0.ProceduralBrush;
            if (a0Var == a0Var2) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(F5.c.i("Procedural", EnumC13007d.class, C13808b.this.f92586g.f77033N, new a()));
                G4.c e10 = C15147a.e(v10, steppedArrayList, "Procedural Brush", C15147a.e.Right, new C1791b(), N7.c.g(250), N7.c.f(40), true, true, true);
                e10.f7543Z.I1(250, 40, FloatingPanelArea.i.Fixed);
                e10.f7543Z.N1(false);
                return;
            }
            if (C13808b.this.f92586g.f77028M != Terrain.a0.ProceduralPaint) {
                SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                steppedArrayList2.add(F5.c.b(context, C13808b.this.f92586g.f77028M == a0Var2 ? "Mask" : null, new e()));
                F5.c.Y(C15147a.e(v10, steppedArrayList2, "Brush", C15147a.e.Right, new f(), N7.c.g(306), N7.c.f(200), true, true, true).f7543Z);
            } else {
                SteppedArrayList steppedArrayList3 = new SteppedArrayList();
                steppedArrayList3.add(F5.c.i("Procedural", f4.c.class, C13808b.this.f92586g.f77035O, new c()));
                G4.c e11 = C15147a.e(v10, steppedArrayList3, "Procedural Paint", C15147a.e.Right, new d(), N7.c.g(250), N7.c.f(40), true, true, true);
                e11.f7543Z.I1(250, 40, FloatingPanelArea.i.Fixed);
                e11.f7543Z.N1(false);
            }
        }
    }

    public class k implements M7.d {

        public class a extends i.d {
            public a() {
            }

            @Override
            public void a(float value) {
                C13808b.this.f92586g.brushSize = value;
            }

            @Override
            public float get() {
                return C13808b.this.f92586g.brushSize;
            }

            @Override
            public float getMax() {
                return C13808b.this.f92586g.getBrushSizeMaxSliderValue();
            }

            @Override
            public float getMin() {
                return C13808b.this.f92586g.getBrushSizeMinSliderValue();
            }
        }

        public k() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.i.a(v10, Lang.l(Lang.T.SIZE), context, C15147a.e.Right, new a());
        }
    }

    public class l implements M7.d {

        public class a implements e.i {
            public a() {
            }

            @Override
            public void a(float value, boolean canceled) {
                C13808b.this.f92586g.brushIntensity = value;
            }
        }

        public l() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            Z6.e.B1(Lang.l(Lang.T.INTENSITY), C13808b.this.f92586g.brushIntensity, C13808b.this.f92586g.getBrushIntensityMinSliderValue(), C13808b.this.f92586g.getBrushIntensityMaxSliderValue(), new a());
        }
    }

    public class m implements M7.d {

        public class a implements G4.d {
            public a() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
                C13808b.this.f92591l = null;
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public class C1792b implements Terrain.W {

            public final M7.c f92616a;

            public final List f92617b;

            public C1792b(final M7.c val$tbButton, final List val$entries) {
                this.f92616a = val$tbButton;
                this.f92617b = val$entries;
            }

            @Override
            public void a() {
                if (C13808b.this.f92591l != null) {
                    this.f92617b.clear();
                    m.this.c(this.f92617b, this.f92616a);
                    C13808b.this.f92591l.v1(this.f92617b);
                }
            }

            @Override
            public void b() {
                if (C13808b.this.f92591l != null) {
                    C13808b.this.f92591l.R0();
                    C13808b.this.f92591l = null;
                }
                try {
                    this.f92616a.g0(3);
                    this.f92616a.W(true);
                    C13808b.this.f92586g.drawLayerIconTo(this.f92616a.D(), C13808b.this.f92586g.getSelectedLayer());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public m() {
        }

        @Override
        public void a(M7.c tbButton) {
            try {
                tbButton.g0(3);
                tbButton.W(true);
                C13808b.this.f92586g.drawLayerIconTo(tbButton.D(), C13808b.this.f92586g.getSelectedLayer());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public final void c(List<C5.b> entries, M7.c tbButton) {
            C13808b.this.f92586g.getTerrainLayerSelector(entries, new C1792b(tbButton, entries));
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            c(steppedArrayList, tbButton);
            C13808b.this.f92591l = C15147a.e(v10, steppedArrayList, "Layer", C15147a.e.Right, new a(), N7.c.g(200), N7.c.f(86), true, true, true);
        }
    }

    public class n implements M7.d {

        public class a implements G4.d {
            public a() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
                C13808b.this.f92591l = null;
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public class C1793b implements D5.h {
            public C1793b() {
            }

            @Override
            public Variable get() {
                return new Variable("", C13808b.this.f92586g.f77089y1 + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    C13808b.this.f92586g.f77089y1 = variable.booolean_value.booleanValue();
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", C13808b.this.f92586g.f77085v1 + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    C13808b.this.f92586g.f77085v1 = variable.float_value;
                }
            }
        }

        public n() {
        }

        private void b(List<C5.b> entries, M7.c tbButton) {
            entries.add(new C5.b(new C1793b(), "Automatic", b.a.SLBoolean));
            entries.add(new C5.b(new c(), "Level height", b.a.SLFloat));
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            b(steppedArrayList, tbButton);
            C13808b.this.f92591l = C15147a.e(v10, steppedArrayList, "Layer", C15147a.e.Right, new a(), N7.c.g(160), N7.c.f(70), true, true, true);
        }
    }

    public class o implements r {
        public o() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = false;
                C13808b.this.f92586g.f77024L = false;
                C13808b.this.N();
                C13808b.this.f92590k.o(false);
            }
        }
    }

    public class p implements r {
        public p() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13808b.this.f92586g.f77022K = true;
                C13808b.this.f92586g.f77024L = false;
                C13808b.this.f92586g.f77028M = Terrain.a0.ProceduralBrush;
                C13808b.this.N();
                C13808b.this.A();
                C13808b.this.f92590k.o(false);
            }
        }
    }

    public C13808b(Terrain terrain) {
        this.f92586g = terrain;
    }

    public void N() {
        if (this.f92589j == null) {
            this.f92589j = new C12873a(this.f92586g, new h());
        }
        this.f92589j.f84071b = this.f92586g;
        if (v3.c.b() == null || v3.c.b() != this.f92589j) {
            v3.c.e(this.f92589j);
        }
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public void e() {
        if (this.f92587h) {
            float e10 = this.f92588i + K8.d.e();
            this.f92588i = e10;
            if (e10 > 3.0f) {
                this.f92588i = 0.0f;
                this.f92587h = false;
            }
        }
        if (this.f92587h || !C13317e.J(this.f92586g.f79250n)) {
            return;
        }
        if (this.f92586g.f79250n.Z0()) {
            N();
        } else {
            if (this.f92589j == null || v3.c.b() != this.f92589j) {
                return;
            }
            v3.c.e(null);
            this.f92589j = null;
        }
    }

    @Override
    public MousePicker.i g() {
        return MousePicker.f71420T;
    }

    @Override
    public String i() {
        return "Terrain Editor";
    }

    @Override
    public void n(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.n(elements, activity, panel3DView);
        M7.o oVar = new M7.o(R.drawable.touch, new o(), c.b.Disconnected, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.o N02 = oVar.N0(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        N02.B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        p pVar = new p();
        c.b bVar3 = c.b.Left;
        M7.o oVar2 = new M7.o(R.drawable.magic_brush, pVar, bVar3, activity);
        oVar2.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        a aVar = new a();
        c.b bVar4 = c.b.Middle;
        M7.o oVar3 = new M7.o(R.drawable.terrain_up_v2, aVar, bVar4, activity);
        oVar3.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar4 = new M7.o(R.drawable.terrain_down_v2, new C1790b(), bVar4, activity);
        oVar4.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar5 = new M7.o(R.drawable.terrain_smooth_v2, new c(), bVar4, activity);
        oVar5.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        d dVar = new d();
        c.b bVar5 = c.b.Right;
        M7.o oVar6 = new M7.o(R.drawable.terrain_flatter, dVar, bVar5, activity);
        oVar6.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar7 = new M7.o(R.drawable.roller_paint, new e(), bVar3, activity);
        oVar7.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar8 = new M7.o(R.drawable.terrain_paint_v1, new f(), bVar5, activity);
        oVar8.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.p pVar2 = new M7.p(activity);
        pVar2.s(oVar);
        pVar2.s(new M7.k(Nc.b.l0(2.0f, activity)));
        pVar2.s(oVar2);
        pVar2.s(oVar3);
        pVar2.s(oVar4);
        pVar2.s(oVar5);
        pVar2.s(oVar6);
        pVar2.s(new M7.k(Nc.b.l0(2.0f, activity)));
        pVar2.s(oVar7);
        pVar2.s(oVar8);
        pVar2.B(null);
        Terrain terrain = this.f92586g;
        if (terrain.f77022K) {
            int i10 = g.f92599a[terrain.f77028M.ordinal()];
            if (i10 == 1) {
                this.f92590k.o(false);
                pVar2.y(1);
            } else if (i10 == 2) {
                this.f92590k.o(false);
                if (this.f92586g.f77024L) {
                    pVar2.y(3);
                } else {
                    pVar2.y(2);
                }
            } else if (i10 == 3) {
                this.f92590k.o(false);
                pVar2.y(4);
            } else if (i10 == 4) {
                this.f92590k.o(false);
                pVar2.y(5);
            } else if (i10 == 5) {
                this.f92590k.o(true);
                pVar2.y(6);
            }
        } else {
            this.f92590k.o(false);
            pVar2.y(0);
        }
        elements.add(pVar2);
    }

    @Override
    public void o(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.o(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        M7.c cVar = new M7.c(R.drawable.brush, new j(), c.b.Top, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        elements.add(U10.M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.c(R.drawable.brush_size, new k(), c.b.Middle, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.c(R.drawable.brush_intensity, new l(), c.b.Bottom, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        Terrain terrain = this.f92586g;
        if (terrain.f77028M == Terrain.a0.ProceduralPaint) {
            com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a proceduralPaint = terrain.getProceduralPaint();
            if (proceduralPaint != null) {
                proceduralPaint.l(elements, activity, panel3DView, this.f92586g);
            }
        } else {
            AbstractC13004a a10 = C13005b.a(terrain.f77033N);
            if (a10 != null) {
                a10.d(elements, activity, panel3DView, this.f92586g);
            }
        }
        m mVar = new m();
        c.b bVar3 = c.b.Disconnected;
        M7.c Y10 = new M7.c(R.drawable.paving, mVar, bVar3, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        this.f92590k = Y10;
        elements.add(Y10);
        if (this.f92586g.f77028M == Terrain.a0.Level) {
            elements.add(new M7.c(R.drawable.terrain_flatter, new n(), bVar3, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        }
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
        elements.add(new M7.c(R.drawable.camera_zoom_v2, new i(), activity).U(C13189d.f86106b).M(C13189d.f86107c).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }

    @Override
    public void s(Activity activity, Panel3DView panel3DView) {
        if (this.f92589j != null) {
            if (v3.c.b() == this.f92589j) {
                v3.c.e(null);
            }
            this.f92589j = null;
        }
    }

    @Override
    public void u(Activity activity, Panel3DView panel3DView) {
        panel3DView.S1(Panel3DView.j.Disable, true, true);
    }
}
