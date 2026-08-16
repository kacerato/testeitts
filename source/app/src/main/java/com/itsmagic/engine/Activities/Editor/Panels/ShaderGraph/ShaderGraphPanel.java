package com.itsmagic.engine.Activities.Editor.Panels.ShaderGraph;

import M7.c;
import N6.H;
import Z6.c;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.A;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import gb.C13317e;
import java.util.List;
import r4.C15147a;

public class ShaderGraphPanel extends EditorPanel {

    public static final String f71909e0 = "ShaderGraphPanel";

    public static final Class f71910f0 = ShaderGraphPanel.class;

    public static final Ac.b f71911g0 = Theme.T.PANEL_TOPBAR;

    public static final Ac.b f71912h0 = Theme.T.PRIMARY_DARK;

    public Material f71913X;

    public H f71914Y;

    public M7.e f71915Z;

    public M7.c f71916a0;

    public M7.c f71917b0;

    public final List<M7.g> f71918c0;

    public final List<M7.g> f71919d0;

    @Expose
    private String graphFile;

    @Expose
    private String materialFile;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return ShaderGraphPanel.f71910f0;
        }

        @Override
        public String c() {
            return ShaderGraphPanel.f71909e0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            ShaderGraphPanel.this.t1(null);
        }
    }

    public class c implements M7.d {
        public c() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (ShaderGraphPanel.this.f71914Y != null) {
                ShaderGraphPanel.this.f71914Y.x();
            }
        }
    }

    public class d implements M7.d {
        public d() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (ShaderGraphPanel.this.f71914Y != null) {
                ShaderGraphPanel.this.f71914Y.A();
            }
        }
    }

    public class e implements M7.f {

        public class a implements dd.d {

            public final ModelRenderer f71924a;

            public class C1140a extends c.h {

                public class RunnableC1141a implements Runnable {

                    public class RunnableC1142a implements Runnable {

                        public class RunnableC1143a implements Runnable {
                            public RunnableC1143a() {
                            }

                            @Override
                            public void run() {
                                if (!A.l(a.this.f71924a.f73747F)) {
                                    N7.c.v0(Lang.l(Lang.T.SOMETHING_WENT_WRONG));
                                } else {
                                    a aVar = a.this;
                                    ShaderGraphPanel.this.t1(aVar.f71924a.f73747F);
                                }
                            }
                        }

                        public RunnableC1142a() {
                        }

                        @Override
                        public void run() {
                            N7.c.j0(new RunnableC1143a());
                        }
                    }

                    public RunnableC1141a() {
                    }

                    @Override
                    public void run() {
                        a.this.f71924a.f73747F.f0(A.f81159a);
                        K8.a.h(2, new RunnableC1142a());
                    }
                }

                public C1140a() {
                }

                @Override
                public void a(c.g dialog) {
                    super.a(dialog);
                    K8.a.I(new RunnableC1141a());
                }
            }

            public a(final ModelRenderer val$mr) {
                this.f71924a = val$mr;
            }

            @Override
            public void onSelected(View v10) {
                if (A.l(this.f71924a.f73747F)) {
                    ShaderGraphPanel.this.t1(this.f71924a.f73747F);
                } else {
                    Z6.c.z1("Attention", "This material does not use graph nodes, do you want to convert to graph?", new C1140a());
                }
            }
        }

        public e() {
        }

        @Override
        public void a(View v10, Context context, M7.e tbButton) {
            ModelRenderer modelRenderer;
            Material material;
            if (ShaderGraphPanel.this.graphFile != null) {
                return;
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
            if (C13317e.J(gameObject)) {
                for (int i10 = 0; i10 < gameObject.N(); i10++) {
                    Component L10 = gameObject.L(i10);
                    if ((L10 instanceof ModelRenderer) && (material = (modelRenderer = (ModelRenderer) L10).f73747F) != null) {
                        steppedArrayList.add(new C12908b(Tc.b.w(material.f78885e, true), new a(modelRenderer)));
                    }
                }
            }
            if (steppedArrayList.isEmpty()) {
                steppedArrayList.add(new C12908b("No materials on object.", false));
            }
            Y6.a.F1(v10, C15147a.e.Below, steppedArrayList);
        }
    }

    public class f implements M7.d {
        public f() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (ShaderGraphPanel.this.f71914Y != null) {
                ShaderGraphPanel.this.f71914Y.k0();
            }
        }
    }

    public class g implements M7.d {
        public g() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (ShaderGraphPanel.this.f71914Y != null) {
                ShaderGraphPanel.this.f71914Y.m0(v10);
            }
        }
    }

    public class h implements M7.d {
        public h() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (ShaderGraphPanel.this.f71914Y != null) {
                ShaderGraphPanel.this.f71914Y.n0(v10);
            }
        }
    }

    public class i implements M7.d {
        public i() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (ShaderGraphPanel.this.f71914Y != null) {
                ShaderGraphPanel.this.f71914Y.H();
            }
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public ShaderGraphPanel() {
        super(null, "Graph editor", f71909e0);
        this.f71918c0 = new SteppedArrayList();
        this.f71919d0 = new SteppedArrayList();
    }

    private void r1(List<M7.g> elements) {
        if (elements == null || elements.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < elements.size(); i10++) {
            M7.g gVar = elements.get(i10);
            if (gVar != null) {
                gVar.k();
            }
        }
    }

    private void u1(LinearLayout toolbar) {
        toolbar.removeAllViews();
        M7.h hVar = new M7.h(toolbar, toolbar.getContext());
        this.f71918c0.clear();
        this.f71917b0 = new M7.c(R.drawable.bin_nopadding_v2, new c(), c.b.Left, toolbar.getContext());
        this.f71916a0 = new M7.c(R.drawable.copy, new d(), c.b.Right, toolbar.getContext());
        this.f71918c0.add(this.f71917b0);
        this.f71918c0.add(this.f71916a0);
        hVar.g(this.f71918c0);
    }

    private void v1(LinearLayout toolbar) {
        toolbar.removeAllViews();
        M7.h hVar = new M7.h(toolbar, toolbar.getContext());
        this.f71919d0.clear();
        this.f71915Z = new M7.e(R.drawable.small_circle, "", new e(), M()).T(f71911g0).M(f71912h0).a0(Theme.T.HIGH_ICON_TINT);
        w1();
        this.f71919d0.add(this.f71915Z);
        M7.c cVar = new M7.c(R.drawable.save_v2, new f(), c.b.Left, toolbar.getContext());
        g gVar = new g();
        c.b bVar = c.b.Middle;
        M7.c cVar2 = new M7.c(R.drawable.plus, gVar, bVar, toolbar.getContext());
        M7.c cVar3 = new M7.c(R.drawable.thermalflow_variable, new h(), bVar, toolbar.getContext());
        M7.c cVar4 = new M7.c(R.drawable.camera_zoom_v2, new i(), c.b.Right, toolbar.getContext());
        this.f71919d0.add(cVar);
        this.f71919d0.add(cVar2);
        this.f71919d0.add(cVar3);
        this.f71919d0.add(cVar4);
        hVar.g(this.f71919d0);
    }

    private void w1() {
        String str = this.graphFile;
        if (str != null) {
            this.f71915Z.h0(Tc.b.w(str, true));
            return;
        }
        Material material = this.f71913X;
        if (material != null) {
            this.f71915Z.h0(Tc.b.w(material.getFile(), true));
        } else {
            this.f71915Z.h0("Select material");
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.shader_graph_panel, (ViewGroup) null);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R.id.shaderGraphContainer);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.shaderGraphToolbar);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.shaderGraphTopbar);
        TextView textView = (TextView) inflate.findViewById(R.id.shaderGraphCompileStatus);
        textView.setVisibility(8);
        H h10 = new H(frameLayout.getContext());
        this.f71914Y = h10;
        frameLayout.addView(h10, new FrameLayout.LayoutParams(-1, -1));
        this.f71914Y.setCompileStatusView(textView);
        String str = this.graphFile;
        if (str != null) {
            this.f71914Y.s(str);
            f1("Graph Editor");
        } else {
            this.f71914Y.t(this.f71913X);
            f1("Material Graph");
        }
        u1(linearLayout);
        v1(linearLayout2);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        H h10 = this.f71914Y;
        if (h10 != null) {
            if (this.graphFile != null) {
                h10.s(null);
            } else {
                h10.t(null);
            }
        }
    }

    @Override
    public void J0() {
        H h10 = this.f71914Y;
        if (h10 != null) {
            h10.k0();
        }
    }

    @Override
    public void M0() {
        super.M0();
        H h10 = this.f71914Y;
        if (h10 != null) {
            h10.e0();
        }
        r1(this.f71918c0);
        r1(this.f71919d0);
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (!(panelIntent instanceof n4.e)) {
            return false;
        }
        n4.e eVar = (n4.e) panelIntent;
        String str = eVar.f97728b;
        if (str != null) {
            s1(str);
        } else {
            t1(eVar.f97727a);
        }
        S0();
        return true;
    }

    @Override
    public EditorPanel k() {
        return new ShaderGraphPanel();
    }

    @Override
    public void n1() {
        super.n1();
        H h10 = this.f71914Y;
        if (h10 != null) {
            h10.q0(this);
            boolean z10 = !this.f71914Y.O();
            M7.c cVar = this.f71916a0;
            if (cVar != null && cVar != null) {
                cVar.o(z10);
            }
            M7.c cVar2 = this.f71917b0;
            if (cVar2 == null || cVar2 == null) {
                return;
            }
            cVar2.o(z10);
        }
    }

    public void s1(String graphFile) {
        this.graphFile = graphFile;
        this.f71913X = null;
        this.materialFile = null;
        if (graphFile != null) {
            f1("Graph Editor");
        }
        H h10 = this.f71914Y;
        if (h10 != null) {
            h10.s(graphFile);
        }
        if (this.f71915Z != null) {
            w1();
        }
    }

    public void t1(Material material) {
        this.f71913X = material;
        this.graphFile = null;
        if (material != null) {
            this.materialFile = material.getFile();
            f1("Material Graph");
        }
        H h10 = this.f71914Y;
        if (h10 != null) {
            h10.t(material);
        }
        if (this.f71915Z != null) {
            w1();
        }
    }

    @Override
    public void z(o4.b engineUpdateData) {
        Material material;
        super.z(engineUpdateData);
        if (this.graphFile == null && this.f71913X != null) {
            GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
            if (C13317e.J(gameObject)) {
                for (int i10 = 0; i10 < gameObject.N(); i10++) {
                    Component L10 = gameObject.L(i10);
                    if ((L10 instanceof ModelRenderer) && (material = ((ModelRenderer) L10).f73747F) != null && material == this.f71913X) {
                        return;
                    }
                }
                N7.c.j0(new b());
            }
        }
    }
}
