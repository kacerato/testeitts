package com.itsmagic.engine.Activities.Editor.Panels.NoCode;

import M7.c;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeExecutor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import e6.X;
import gb.C13317e;
import java.util.List;
import n4.C14352d;
import r4.C15147a;

public class NoCodePanel extends EditorPanel {

    public static final String f71745e0 = "NoCodePanel";

    public static final Class f71746f0 = NoCodePanel.class;

    public static final Ac.b f71747g0 = Theme.T.PANEL_TOPBAR;

    public static final Ac.b f71748h0 = Theme.T.PRIMARY_DARK;

    public NoCodeExecutor f71749X;

    public X f71750Y;

    public M7.e f71751Z;

    public M7.c f71752a0;

    public M7.c f71753b0;

    public final List<M7.g> f71754c0;

    public final List<M7.g> f71755d0;

    @Expose
    private String graphFile;

    public class a implements M7.d {
        public a() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (NoCodePanel.this.f71750Y != null) {
                NoCodePanel.this.f71750Y.M();
            }
        }
    }

    public class b implements dd.d {

        public final NoCodeExecutor f71757a;

        public b(final NoCodeExecutor val$target) {
            this.f71757a = val$target;
        }

        @Override
        public void onSelected(View v10) {
            NoCodePanel.this.u1(this.f71757a);
        }
    }

    public class c extends EditorPanel.j {
        @Override
        public Class b() {
            return NoCodePanel.f71746f0;
        }

        @Override
        public String c() {
            return NoCodePanel.f71745e0;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            NoCodePanel.this.u1(null);
        }
    }

    public class e implements M7.d {
        public e() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (NoCodePanel.this.f71750Y != null) {
                NoCodePanel.this.f71750Y.B();
            }
        }
    }

    public class f implements M7.d {
        public f() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (NoCodePanel.this.f71750Y != null) {
                NoCodePanel.this.f71750Y.E();
            }
        }
    }

    public class g implements M7.f {
        public g() {
        }

        @Override
        public void a(View v10, Context context, M7.e tbButton) {
            if (NoCodePanel.this.graphFile != null) {
                return;
            }
            List t12 = NoCodePanel.this.t1();
            if (t12.isEmpty()) {
                t12.add(new C12908b("No NoCode on object.", false));
            }
            Y6.a.F1(v10, C15147a.e.Below, t12);
        }
    }

    public class h implements M7.d {
        public h() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (NoCodePanel.this.f71750Y != null) {
                NoCodePanel.this.f71750Y.t0();
            }
        }
    }

    public class i implements M7.d {
        public i() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (NoCodePanel.this.f71750Y != null) {
                NoCodePanel.this.f71750Y.v0(v10);
            }
        }
    }

    public class j implements M7.d {
        public j() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (NoCodePanel.this.f71750Y != null) {
                NoCodePanel.this.f71750Y.w0(v10);
            }
        }
    }

    public class k implements M7.d {
        public k() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (NoCodePanel.this.f71750Y != null) {
                NoCodePanel.this.f71750Y.x0(v10);
            }
        }
    }

    static {
        EditorPanel.a(new c());
    }

    public NoCodePanel() {
        super(null, "NoCode", f71745e0);
        this.f71754c0 = new SteppedArrayList();
        this.f71755d0 = new SteppedArrayList();
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.nocode_panel, (ViewGroup) null);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R.id.noCodeContainer);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.noCodeToolbar);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.noCodeTopbar);
        TextView textView = (TextView) inflate.findViewById(R.id.noCodeCompileStatus);
        textView.setVisibility(8);
        X x10 = new X(frameLayout.getContext());
        this.f71750Y = x10;
        frameLayout.addView(x10, new FrameLayout.LayoutParams(-1, -1));
        this.f71750Y.setCompileStatusView(textView);
        String str = this.graphFile;
        if (str != null) {
            this.f71750Y.w(str);
            f1("NoCode Graph");
        } else {
            this.f71750Y.v(this.f71749X);
            f1("NoCode");
        }
        w1(linearLayout);
        x1(linearLayout2);
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        X x10 = this.f71750Y;
        if (x10 != null) {
            if (this.graphFile != null) {
                x10.w(null);
            } else {
                x10.v(null);
            }
        }
    }

    @Override
    public void J0() {
        X x10 = this.f71750Y;
        if (x10 != null) {
            x10.t0();
        }
    }

    @Override
    public void M0() {
        super.M0();
        X x10 = this.f71750Y;
        if (x10 != null) {
            x10.l0();
        }
        s1(this.f71754c0);
        s1(this.f71755d0);
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (!(panelIntent instanceof C14352d)) {
            return false;
        }
        C14352d c14352d = (C14352d) panelIntent;
        String str = c14352d.f97726b;
        if (str != null) {
            v1(str);
        } else {
            u1(c14352d.f97725a);
        }
        S0();
        return true;
    }

    @Override
    public EditorPanel k() {
        return new NoCodePanel();
    }

    @Override
    public void n1() {
        super.n1();
        X x10 = this.f71750Y;
        if (x10 != null) {
            x10.A0(this);
            boolean z10 = !this.f71750Y.U();
            M7.c cVar = this.f71752a0;
            if (cVar != null) {
                cVar.o(z10);
            }
            M7.c cVar2 = this.f71753b0;
            if (cVar2 != null) {
                cVar2.o(z10);
            }
        }
    }

    public final void s1(List<M7.g> elements) {
        for (M7.g gVar : elements) {
            if (gVar != null) {
                gVar.k();
            }
        }
    }

    public final List<C12908b> t1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
        if (!C13317e.J(gameObject)) {
            return steppedArrayList;
        }
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof NoCodeExecutor) {
                NoCodeExecutor noCodeExecutor = (NoCodeExecutor) L10;
                String title = (EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? noCodeExecutor.getTitle() : noCodeExecutor.getDisplayableTitle();
                if (title == null || title.trim().isEmpty()) {
                    title = "NoCode";
                }
                steppedArrayList.add(new C12908b(title, new b(noCodeExecutor)));
            }
        }
        return steppedArrayList;
    }

    public void u1(NoCodeExecutor executor) {
        this.f71749X = executor;
        this.graphFile = null;
        f1("NoCode");
        X x10 = this.f71750Y;
        if (x10 != null) {
            x10.v(executor);
        }
        y1();
    }

    public void v1(String graphFile) {
        this.graphFile = graphFile;
        this.f71749X = null;
        f1("NoCode Graph");
        X x10 = this.f71750Y;
        if (x10 != null) {
            x10.w(graphFile);
        }
        y1();
    }

    public final void w1(LinearLayout toolbar) {
        toolbar.removeAllViews();
        M7.h hVar = new M7.h(toolbar, toolbar.getContext());
        this.f71754c0.clear();
        this.f71753b0 = new M7.c(R.drawable.bin_nopadding_v2, new e(), c.b.Left, toolbar.getContext());
        this.f71752a0 = new M7.c(R.drawable.copy, new f(), c.b.Right, toolbar.getContext());
        this.f71754c0.add(this.f71753b0);
        this.f71754c0.add(this.f71752a0);
        hVar.g(this.f71754c0);
    }

    public final void x1(LinearLayout toolbar) {
        toolbar.removeAllViews();
        M7.h hVar = new M7.h(toolbar, toolbar.getContext());
        this.f71755d0.clear();
        this.f71751Z = new M7.e(R.drawable.small_circle, "", new g(), M()).T(f71747g0).M(f71748h0).a0(Theme.T.HIGH_ICON_TINT);
        y1();
        this.f71755d0.add(this.f71751Z);
        this.f71755d0.add(new M7.c(R.drawable.save_v2, new h(), c.b.Left, toolbar.getContext()));
        List<M7.g> list = this.f71755d0;
        i iVar = new i();
        c.b bVar = c.b.Middle;
        list.add(new M7.c(R.drawable.plus, iVar, bVar, toolbar.getContext()));
        this.f71755d0.add(new M7.c(R.drawable.thermalflow_variable, new j(), bVar, toolbar.getContext()));
        this.f71755d0.add(new M7.c(R.drawable.world_mono_color, new k(), bVar, toolbar.getContext()));
        this.f71755d0.add(new M7.c(R.drawable.camera_zoom_v2, new a(), c.b.Right, toolbar.getContext()));
        hVar.g(this.f71755d0);
    }

    public final void y1() {
        GameObject gameObject;
        M7.e eVar = this.f71751Z;
        if (eVar == null) {
            return;
        }
        String str = this.graphFile;
        if (str != null) {
            eVar.h0(Tc.b.w(str, true));
            return;
        }
        NoCodeExecutor noCodeExecutor = this.f71749X;
        if (noCodeExecutor != null && (gameObject = noCodeExecutor.f79250n) != null) {
            eVar.h0(gameObject.getName());
        } else if (noCodeExecutor != null) {
            eVar.h0(Lang.m(Ac.c.a("NoCode")));
        } else {
            eVar.h0(Lang.m(Ac.c.a("Select NoCode")));
        }
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        if (this.graphFile != null || this.f71749X == null) {
            return;
        }
        GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
        if (C13317e.J(gameObject)) {
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                if (gameObject.L(i10) == this.f71749X) {
                    return;
                }
            }
            N7.c.j0(new d());
        }
    }
}
