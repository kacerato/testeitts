package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer;

import a8.C3589a;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import c8.b;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Editor3DPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.AnimatedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import f5.C13186a;
import f5.C13187b;
import f5.C13188c;
import f5.C13189d;
import i6.C13587a;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import k5.C13940d;
import r4.C15147a;
import v9.C15814d;

public class Editor3DPanel extends N4.d {

    public static final String f71582T0 = "Editor3DPanel";

    public static final Class f71583U0 = Editor3DPanel.class;

    public final List<C13189d> f71584A0;

    public final List<C13189d> f71585B0;

    public GameObject f71586C0;

    public View f71587D0;

    public M7.e f71588E0;

    public M7.h f71589F0;

    public M7.h f71590G0;

    public M7.h f71591H0;

    public M7.h f71592I0;

    public C13189d f71593J0;

    public final C13189d f71594K0;

    public View f71595L0;

    public TextView f71596M0;

    public int f71597N0;

    public int f71598O0;

    public int f71599P0;

    public int f71600Q0;

    public final Set<Material> f71601R0;

    public final b.f f71602S0;

    @Expose
    public boolean drawStatistic;

    public View f71603y0;

    public Cursor3D f71604z0;

    public class a implements dd.d {
        public a() {
        }

        @Override
        public void onSelected(View v10) {
            Editor3DPanel.this.drawStatistic = !r2.drawStatistic;
        }
    }

    public class b extends EditorPanel.j {
        @Override
        public Class b() {
            return Editor3DPanel.f71583U0;
        }

        @Override
        public String c() {
            return Editor3DPanel.f71582T0;
        }
    }

    public class c extends SteppedArrayList<C13189d> {

        public class a implements C13188c.o {
            public a() {
            }

            @Override
            public GameObject get() {
                return W7.b.f27309i.f31909a.f31910a;
            }
        }

        public c() {
            add(new C13188c(new a()));
            add(new C13940d());
        }
    }

    public class d implements b.f {
        public d() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
            final Editor3DPanel editor3DPanel = Editor3DPanel.this;
            N7.c.j0(new Runnable() {
                @Override
                public final void run() {
                    Editor3DPanel.this.S0();
                }
            });
        }
    }

    public class e implements EditorPanel.m {

        public final ThreadLocal<Rect> f71609a = new a();

        public final Rect f71610b = new Rect();

        public final Rect f71611c = new Rect();

        public class a extends ThreadLocal<Rect> {
            public a() {
            }

            @Override
            public Rect initialValue() {
                return new Rect();
            }
        }

        public e() {
        }

        @Override
        public boolean a(tc.h touch) {
            if ((touch.q() || touch.k() || touch.t()) && Editor3DPanel.this.f71593J0 != null) {
                Rect rect = this.f71609a.get();
                View e10 = Editor3DPanel.this.f71588E0 != null ? Editor3DPanel.this.f71588E0.e() : null;
                if (e10 != null && e10.getGlobalVisibleRect(this.f71611c)) {
                    Rect rect2 = this.f71610b;
                    Rect rect3 = this.f71611c;
                    rect2.left = rect3.left;
                    rect2.top = rect3.top;
                    rect2.right = rect3.right;
                    rect2.bottom = rect3.bottom;
                }
                Vector2 g10 = touch.g();
                float f10 = g10.f79838x;
                Rect rect4 = this.f71610b;
                if (f10 >= rect4.left && f10 <= rect4.right) {
                    float f11 = g10.f79839y;
                    if (f11 >= rect4.top && f11 <= rect4.bottom) {
                        return true;
                    }
                }
                if (Editor3DPanel.this.f71595L0.getGlobalVisibleRect(this.f71611c)) {
                    Rect rect5 = this.f71610b;
                    Rect rect6 = this.f71611c;
                    rect5.left = rect6.left;
                    rect5.top = rect6.top;
                    rect5.right = rect6.right;
                    rect5.bottom = rect6.bottom;
                }
                Vector2 g11 = touch.g();
                float f12 = g11.f79838x;
                Rect rect7 = this.f71610b;
                if (f12 >= rect7.left && f12 <= rect7.right) {
                    float f13 = g11.f79839y;
                    if (f13 >= rect7.top && f13 <= rect7.bottom) {
                        return true;
                    }
                }
                if (Editor3DPanel.this.f71589F0.m(touch, rect) || Editor3DPanel.this.f71590G0.m(touch, rect) || Editor3DPanel.this.f71591H0.m(touch, rect) || Editor3DPanel.this.f71592I0.m(touch, rect)) {
                    return true;
                }
            }
            return false;
        }
    }

    public class f implements C13189d.a {

        public final int f71614a;

        public final C13189d f71615b;

        public f(final int val$idx, final C13189d val$viewMode) {
            this.f71614a = val$idx;
            this.f71615b = val$viewMode;
        }

        @Override
        public Panel3DView a() {
            return Editor3DPanel.this;
        }

        @Override
        public void b() {
            if (Editor3DPanel.this.f71584A0.isEmpty()) {
                return;
            }
            if (this.f71614a <= 0) {
                Editor3DPanel editor3DPanel = Editor3DPanel.this;
                editor3DPanel.v2((C13189d) editor3DPanel.f71584A0.get(0));
            } else if (Editor3DPanel.this.f71584A0.size() >= this.f71614a - 1) {
                Editor3DPanel editor3DPanel2 = Editor3DPanel.this;
                editor3DPanel2.v2((C13189d) editor3DPanel2.f71584A0.get(this.f71614a - 1));
            } else {
                Editor3DPanel editor3DPanel3 = Editor3DPanel.this;
                editor3DPanel3.v2((C13189d) editor3DPanel3.f71584A0.get(0));
            }
        }

        @Override
        public void c() {
            Editor3DPanel.this.x2(this.f71615b);
        }

        @Override
        public void d() {
            Editor3DPanel.this.w2(this.f71615b);
        }
    }

    public class g implements M7.f {
        public g() {
        }

        @Override
        public void a(View v10, Context context, M7.e tbButton) {
            Editor3DPanel.this.A2(v10);
        }
    }

    public class h extends AbstractViewOnClickListenerC12733a {
        public h() {
        }

        @Override
        public void click(View view) {
            C13587a.M1(view, C15147a.e.Above);
        }
    }

    public class i implements dd.d {

        public final C13186a.b f71619a;

        public class a implements C13186a.InterfaceC1598a {
            public a() {
            }

            @Override
            public void a(C13189d viewMode) {
                if (viewMode != null) {
                    Editor3DPanel.this.v2(viewMode);
                }
            }
        }

        public i(final C13186a.b val$menuIten) {
            this.f71619a = val$menuIten;
        }

        @Override
        public void onSelected(View v10) {
            this.f71619a.b(v10, new a());
        }
    }

    public class j implements dd.d {

        public final C13189d f71622a;

        public j(final C13189d val$mode) {
            this.f71622a = val$mode;
        }

        @Override
        public void onSelected(View view) {
            Editor3DPanel.this.v2(this.f71622a);
        }
    }

    static {
        EditorPanel.a(new b());
    }

    public Editor3DPanel(K8.a engine) {
        super(engine);
        this.f71603y0 = null;
        this.drawStatistic = true;
        this.f71584A0 = new SteppedArrayList();
        this.f71585B0 = new c();
        this.f71586C0 = null;
        this.f71594K0 = new C13187b();
        this.f71597N0 = 0;
        this.f71598O0 = 0;
        this.f71599P0 = 0;
        this.f71601R0 = new HashSet(100);
        this.f71602S0 = new d();
    }

    public final void A2(View anchor) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f71584A0.size(); i10++) {
            C13189d c13189d = this.f71584A0.get(i10);
            if (c13189d instanceof C13186a) {
                C13186a c13186a = (C13186a) c13189d;
                List<C13186a.b> H10 = c13186a.H();
                H10.getClass();
                SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                steppedArrayList.add(new C12908b(c13186a.i(), steppedArrayList2));
                for (C13186a.b bVar : H10) {
                    steppedArrayList2.add(new C12908b(bVar.a(), new i(bVar)));
                }
            } else {
                steppedArrayList.add(new C12908b(c13189d.i(), new j(c13189d)));
            }
        }
        Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList);
    }

    @Override
    public View C0() {
        super.C0();
        View inflate = this.f70908j.inflate(R.layout.panel_3d_panel, (ViewGroup) null);
        this.f71603y0 = inflate;
        c8.b.g(this.f71602S0);
        this.f71596M0 = (TextView) inflate.findViewById(R.id.statistic);
        this.f71587D0 = inflate.findViewById(R.id.modeSelectorButton);
        this.f71589F0 = new M7.h((LinearLayout) inflate.findViewById(R.id.topBar), M());
        this.f71590G0 = new M7.h((LinearLayout) inflate.findViewById(R.id.leftBar), M());
        this.f71591H0 = new M7.h((LinearLayout) inflate.findViewById(R.id.bottomBar), M());
        this.f71592I0 = new M7.h((LinearLayout) inflate.findViewById(R.id.rightBar), M());
        View view = this.f71587D0;
        if (view instanceof LinearLayout) {
            M7.h hVar = new M7.h((LinearLayout) view, M());
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            M7.e eVar = new M7.e(R.drawable.pressure_v2, "", new g(), M());
            this.f71588E0 = eVar;
            eVar.W(false);
            steppedArrayList.add(this.f71588E0);
            hVar.g(steppedArrayList);
        }
        View findViewById = inflate.findViewById(R.id.prefabStore);
        this.f71595L0 = findViewById;
        findViewById.setOnClickListener(new h());
        y2();
        this.f71596M0.setVisibility(8);
        return inflate;
    }

    @Override
    public void C1(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
        s2(list, sceneHierarchy, editor3DViewer);
    }

    @Override
    public boolean E1(N4.a axis3DType) {
        return this.f71593J0.f(axis3DType);
    }

    @Override
    public void G0() {
        super.G0();
        c8.b.r(this.f71602S0);
        this.f71603y0 = null;
    }

    @Override
    public void J0() {
        EditorCamera editorCamera;
        if (this.f71460a0 != null && w0() && (editorCamera = this.f71460a0.f97746a) != null && editorCamera.f73132Z) {
            this.f71460a0.f97746a.takeScreenShot(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/thumb.png"));
        }
        C13189d c13189d = this.f71593J0;
        if (c13189d != null) {
            c13189d.t();
        }
    }

    @Override
    public MousePicker.i J1() {
        C13189d c13189d = this.f71593J0;
        if (c13189d != null) {
            return c13189d.g();
        }
        return null;
    }

    @Override
    public void M0() {
        super.M0();
        C13189d c13189d = this.f71593J0;
        if (c13189d != null) {
            c13189d.v();
        }
        M7.e eVar = this.f71588E0;
        if (eVar != null) {
            eVar.k();
            C13189d c13189d2 = this.f71593J0;
            if (c13189d2 != null) {
                q2(c13189d2);
            }
        }
        M7.h hVar = this.f71589F0;
        if (hVar != null) {
            hVar.n();
        }
        M7.h hVar2 = this.f71590G0;
        if (hVar2 != null) {
            hVar2.n();
        }
        M7.h hVar3 = this.f71591H0;
        if (hVar3 != null) {
            hVar3.n();
        }
        M7.h hVar4 = this.f71592I0;
        if (hVar4 != null) {
            hVar4.n();
        }
    }

    @Override
    public boolean M1(tc.h touch) {
        return this.f71589F0.l(touch) || this.f71590G0.l(touch) || this.f71591H0.l(touch) || this.f71592I0.l(touch);
    }

    @Override
    public List<C12908b> N() {
        List<C12908b> N10 = super.N();
        if (N10 == null) {
            N10 = new SteppedArrayList<>();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        sb2.append(this.drawStatistic ? "X" : " ");
        sb2.append("] Show statistics");
        N10.add(new C12908b(sb2.toString(), new a()));
        return N10;
    }

    @Override
    public boolean R1() {
        C13189d c13189d = this.f71593J0;
        if (c13189d != null) {
            return c13189d.B();
        }
        return true;
    }

    @Override
    public C13189d d2() {
        return this.f71593J0;
    }

    @Override
    public EditorPanel k() {
        return new Editor3DPanel();
    }

    @Override
    public void n1() {
        super.n1();
        C13189d c13189d = this.f71593J0;
        if (c13189d != null) {
            c13189d.G();
        }
        if (this.f71590G0 != null) {
            C3589a c3589a = W7.b.f27309i;
            if (c3589a.f31909a.f31910a != this.f71586C0) {
                z2();
                this.f71586C0 = c3589a.f31909a.f31910a;
            }
        }
    }

    @Override
    public void o1() {
        super.o1();
        if (this.drawStatistic) {
            C3589a c3589a = W7.b.f27309i;
            if (c3589a.f31909a.f31910a != null) {
                this.f71596M0.setVisibility(0);
                this.f71601R0.clear();
                this.f71597N0 = 0;
                this.f71598O0 = 0;
                this.f71599P0 = 0;
                this.f71600Q0 = 0;
                r2(c3589a.f31909a.f31910a);
                String str = "";
                if (this.f71597N0 > 0) {
                    str = "Vers:" + Tc.b.W(this.f71597N0) + " ";
                }
                if (this.f71598O0 > 0) {
                    str = str + "Tris:" + Tc.b.W(this.f71598O0) + " ";
                }
                if (!this.f71601R0.isEmpty()) {
                    str = str + "Mats:" + Tc.b.W(this.f71601R0.size()) + " ";
                }
                if (this.f71599P0 > 0) {
                    str = str + "Particles:" + Tc.b.W(this.f71599P0) + " ";
                }
                if (this.f71600Q0 > 5) {
                    str = str + "Objs:" + this.f71600Q0 + " ";
                }
                this.f71596M0.setText(str);
                return;
            }
        }
        this.f71596M0.setVisibility(8);
    }

    public final void q2(C13189d viewMode) {
        if (this.f71588E0 == null || viewMode == null) {
            return;
        }
        int m10 = viewMode.m();
        int l10 = viewMode.l();
        int j10 = viewMode.j();
        int k10 = viewMode.k();
        this.f71588E0.U(new ColorINT(m10));
        this.f71588E0.b0(new ColorINT(l10));
        this.f71588E0.g0(new ColorINT(j10));
        this.f71588E0.Q(new ColorINT(k10));
    }

    public final void r2(GameObject gameObject) {
        Vertex vertex;
        this.f71600Q0++;
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof ModelRenderer) {
                ModelRenderer modelRenderer = (ModelRenderer) L10;
                vertex = modelRenderer.getVertex();
                Material material = modelRenderer.f73747F;
                if (material != null) {
                    this.f71601R0.add(material);
                }
            } else if (L10 instanceof SkinnedModelRenderer) {
                SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                vertex = skinnedModelRenderer.getVertex();
                if (skinnedModelRenderer.getMaterial() != null) {
                    this.f71601R0.add(skinnedModelRenderer.getMaterial());
                }
            } else if (L10 instanceof AnimatedModelRenderer) {
                AnimatedModelRenderer animatedModelRenderer = (AnimatedModelRenderer) L10;
                vertex = animatedModelRenderer.getVertex();
                if (animatedModelRenderer.getMaterial() != null) {
                    this.f71601R0.add(animatedModelRenderer.getMaterial());
                }
            } else {
                if (L10 instanceof Terrain) {
                    Terrain terrain = (Terrain) L10;
                    this.f71597N0 += u2(terrain);
                    this.f71598O0 += t2(terrain);
                } else if (L10 instanceof ParticleEmitter) {
                    this.f71599P0 += ((ParticleEmitter) L10).getMaxParticles();
                }
                vertex = null;
            }
            if (vertex != null) {
                this.f71597N0 += vertex.j1();
                this.f71598O0 += vertex.W0();
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            r2(gameObject.C(i11));
        }
    }

    public final void s2(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
        GameObject gameObject = new GameObject("3DCursor", new Transform());
        Cursor3D cursor3D = new Cursor3D(sceneHierarchy.f97746a, this);
        this.f71604z0 = cursor3D;
        gameObject.r(cursor3D);
        list.add(gameObject);
    }

    public final int t2(Terrain terrain) {
        C15814d chunkAt;
        int chunksCount = terrain.chunksCount();
        if (chunksCount > 0 && (chunkAt = terrain.chunkAt(0)) != null) {
            return chunkAt.L(terrain) * chunksCount * terrain.layersCount();
        }
        return 0;
    }

    public final int u2(Terrain terrain) {
        C15814d chunkAt;
        int chunksCount = terrain.chunksCount();
        if (chunksCount > 0 && (chunkAt = terrain.chunkAt(0)) != null) {
            return chunkAt.M(terrain) * chunksCount * terrain.layersCount();
        }
        return 0;
    }

    public final void v2(C13189d viewMode) {
        if (viewMode.a(W7.b.f27309i.f31909a.f31910a)) {
            N7.c.h0();
            C13189d c13189d = this.f71593J0;
            if (c13189d == null || c13189d != viewMode) {
                if (c13189d != null) {
                    c13189d.s(A(), this);
                    this.f71593J0 = null;
                }
                this.f71593J0 = viewMode;
                int indexOf = this.f71584A0.indexOf(viewMode);
                if (this.f71588E0 != null) {
                    if (com.itsmagic.engine.Engines.Engine.World.a.y()) {
                        this.f71588E0.o(false);
                    } else {
                        this.f71588E0.o(true);
                        this.f71588E0.h0(viewMode.i());
                    }
                }
                viewMode.f86111a = new f(indexOf, viewMode);
                viewMode.u(A(), this);
                viewMode.v();
                this.f71595L0.setVisibility(8);
                if (this.f71588E0 != null) {
                    q2(viewMode);
                }
                w2(viewMode);
            }
        }
    }

    public final void w2(C13189d viewMode) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        viewMode.r(steppedArrayList, A(), this);
        this.f71589F0.g(steppedArrayList);
        x2(viewMode);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        viewMode.n(steppedArrayList2, A(), this);
        this.f71591H0.g(steppedArrayList2);
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        viewMode.p(steppedArrayList3, A(), this);
        this.f71592I0.g(steppedArrayList3);
    }

    public final void x2(C13189d viewMode) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        viewMode.o(steppedArrayList, A(), this);
        this.f71590G0.g(steppedArrayList);
    }

    public final void y2() {
        v2(this.f71594K0);
        M7.e eVar = this.f71588E0;
        if (eVar != null) {
            eVar.o(false);
        }
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        if (this.f71603y0 != null) {
            Cursor3D cursor3D = this.f71604z0;
            if (cursor3D != null) {
                cursor3D.f71514G = this.f71460a0.f97746a;
                C13189d c13189d = this.f71593J0;
                if (c13189d != null) {
                    cursor3D.f71516I = this.enable3DCursor && c13189d.C();
                } else {
                    cursor3D.f71516I = this.enable3DCursor;
                }
            }
            C13189d c13189d2 = this.f71593J0;
            if (c13189d2 != null) {
                c13189d2.e();
            }
            EditorCamera editorCamera = this.f71460a0.f97746a;
            if (editorCamera != null) {
                editorCamera.f71527R8 = this.f71593J0;
            }
        }
    }

    public final void z2() {
        this.f71584A0.clear();
        C3589a c3589a = W7.b.f27309i;
        GameObject gameObject = c3589a.f31909a.f31910a;
        if (gameObject == null || gameObject.c1()) {
            C13189d c13189d = this.f71593J0;
            if (c13189d == null || c13189d.c()) {
                y2();
                return;
            }
            return;
        }
        this.f71584A0.addAll(this.f71585B0);
        GameObject gameObject2 = c3589a.f31909a.f31910a;
        if (gameObject2 != null) {
            gameObject2.propagateEditorViewModes(this.f71584A0);
        }
        C13189d c13189d2 = this.f71593J0;
        if (c13189d2 == null) {
            v2(this.f71584A0.get(0));
        } else if (c13189d2.c()) {
            v2(this.f71584A0.get(0));
        }
    }

    public Editor3DPanel() {
        super(f71582T0);
        this.f71603y0 = null;
        this.drawStatistic = true;
        this.f71584A0 = new SteppedArrayList();
        this.f71585B0 = new c();
        this.f71586C0 = null;
        this.f71594K0 = new C13187b();
        this.f71597N0 = 0;
        this.f71598O0 = 0;
        this.f71599P0 = 0;
        this.f71601R0 = new HashSet(100);
        this.f71602S0 = new d();
        super.h1(new e());
    }
}
