package H3;

import Z6.k;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.ThumbBuilder.Core.Manifest;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine2.R;
import e7.C13042a;
import id.C13696a;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import n.C14331a;
import o7.C14486a;
import q7.C15045a;
import r4.C15147a;
import wb.C15980b;
import wb.C15981c;

public class a extends EditorPanel {

    public static final String f7963f0 = "Cubemaps/";

    public static final int f7964g0 = 0;

    public final List<String> f7965X;

    public e f7966Y;

    public C13042a<String, i> f7967Z;

    public RecyclerView f7968a0;

    public C14486a f7969b0;

    public final ImageView[] f7970c0;

    public String f7971d0;

    public final int f7972e0;

    public class RunnableC0158a implements Runnable {

        public final C15045a f7974c;

        public final View f7975d;

        public final C15147a.e f7976e;

        public class RunnableC0159a implements Runnable {
            public RunnableC0159a() {
            }

            @Override
            public void run() {
                RunnableC0158a.this.f7974c.p1();
                float g10 = N7.c.g(280);
                float f10 = N7.c.f(300);
                RunnableC0158a runnableC0158a = RunnableC0158a.this;
                C15147a.h(runnableC0158a.f7975d, a.this, runnableC0158a.f7976e, g10, f10);
            }
        }

        public RunnableC0158a(final C15045a val$loading, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f7974c = val$loading;
            this.f7975d = val$anchor;
            this.f7976e = val$anchorSide;
        }

        @Override
        public void run() {
            a.this.C1();
            N7.c.j0(new RunnableC0159a());
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class c implements C13042a.InterfaceC1584a<String, i> {

        public class C0160a extends AbstractViewOnClickListenerC12733a {

            public final i f7980b;

            public final String f7981c;

            public C0160a(final i val$holder, final String val$path) {
                this.f7980b = val$holder;
                this.f7981c = val$path;
            }

            @Override
            public void click(View v10) {
                if (C14331a.c()) {
                    k.w1("https://itsmagic.com.br/index.html", v10, C15147a.e.Below, 300.0f, 450.0f);
                    return;
                }
                if (a.this.f7970c0[0] != null) {
                    Vc.e.y(a.this.f7970c0[0], a.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
                    a.this.f7970c0[0] = null;
                }
                Vc.e.x(this.f7980b.f8092c, a.this.M(), R.color.colorPrimaryDark);
                a.this.f7970c0[0] = this.f7980b.f8092c;
                a.this.f7966Y.onSelected(this.f7981c);
                a.this.f7971d0 = this.f7981c;
            }
        }

        public c() {
        }

        @Override
        public void a(i holder, String element, int position) {
            Vc.e.K(holder.f8091b, a.x1(element), a.this.M(), new Vc.c());
            holder.f8091b.setOnClickListener(new C0160a(holder, element));
            Vc.e.U(holder.f8092c, R.drawable.pbr_preset_border_4);
            if (!element.equals(a.this.f7971d0)) {
                Vc.e.y(holder.f8092c, a.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
            } else {
                Vc.e.x(holder.f8092c, a.this.M(), R.color.colorPrimaryDark);
                a.this.f7970c0[0] = holder.f8092c;
            }
        }

        @Override
        public i b(LayoutInflater inflater, ViewGroup parent) {
            return new i(inflater.inflate(R.layout.gallery_element, parent, false));
        }
    }

    public a(e listener) {
        super(null, "Cubemap selector");
        this.f7965X = new LinkedList();
        this.f7970c0 = new ImageView[]{null};
        this.f7972e0 = 2;
        super.e1(false);
        this.f7966Y = listener;
    }

    public static C15980b D1(String selectedMatcap) {
        File w12 = w1(selectedMatcap);
        if (!w12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Cubemaps/" + selectedMatcap);
        if (!file.exists()) {
            if (!C13696a.a(w12, file)) {
                return null;
            }
            C13696a.a(x1(selectedMatcap), new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Cubemaps/" + Tc.b.O(selectedMatcap) + ".meta/thumb.png"));
            Manifest manifest = new Manifest();
            manifest.b();
            E7.f.b("/_PROJECT/Gallery/Cubemaps/" + Tc.b.O(selectedMatcap) + ".meta/thumb_manifest.json", manifest);
        }
        return C15981c.m("/_PROJECT/Gallery/Cubemaps/" + selectedMatcap);
    }

    public static C15980b E1(String selectedMatcap, int resolutionID) {
        File w12 = w1(selectedMatcap);
        if (!w12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Cubemaps/" + resolutionID + "/" + selectedMatcap);
        if (!file.exists()) {
            if (!C13696a.a(w12, file)) {
                return null;
            }
            File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Cubemaps/" + resolutionID + "/" + selectedMatcap + ".config");
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.m0(TextureConfig.d.RGB8);
            textureConfig.maxResolutionID = resolutionID;
            textureConfig.B0(100);
            X7.a.h(file2, X7.a.m().toJson(textureConfig));
        }
        return C15981c.m("/_PROJECT/Gallery/Cubemaps/" + resolutionID + "/" + selectedMatcap);
    }

    public static String F1(String selectedMatcap) {
        File w12 = w1(selectedMatcap);
        if (!w12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Cubemaps/" + selectedMatcap);
        if (!file.exists()) {
            if (!C13696a.a(w12, file)) {
                return null;
            }
            File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Cubemaps/" + selectedMatcap + ".config");
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.m0(TextureConfig.d.RGB8);
            textureConfig.maxResolutionID = 16;
            textureConfig.B0(100);
            X7.a.h(file2, X7.a.m().toJson(textureConfig));
        }
        return "/_PROJECT/Gallery/Cubemaps/" + selectedMatcap;
    }

    public static void G1(View anchor, C15147a.e anchorSide, e matcapListener) {
        new Thread(new RunnableC0158a(C15045a.t1(anchor, C15147a.e.Left), anchor, anchorSide)).start();
    }

    public static String v1(String pbr) {
        return Tc.b.d(pbr.toLowerCase().replace(ConstantDescs.DEFAULT_NAME, " "));
    }

    public static File w1(String environment) {
        return new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f7963f0 + environment);
    }

    public static File x1(String environment) {
        return new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f7963f0 + Tc.b.O(environment) + ".meta/thumb.png");
    }

    public final void A1(LinearLayout topbar, M7.g element) {
        element.a(topbar, M(), N7.c.B());
        element.n(z1(topbar).e());
    }

    public final void B1(int innerImagePadding, int borderPadding) {
        String selected = this.f7966Y.getSelected();
        this.f7971d0 = selected;
        if (selected == null) {
            this.f7971d0 = "";
        }
        this.f7967Z.j();
        this.f7967Z.i(this.f7965X);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.gallery_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        this.f7968a0 = (RecyclerView) inflate.findViewById(R.id.recycler);
        C13042a<String, i> c13042a = new C13042a<>(M(), new c());
        this.f7967Z = c13042a;
        this.f7968a0.setAdapter(c13042a);
        this.f7968a0.setItemAnimator(null);
        this.f7969b0 = new C14486a(M(), this.f7968a0, this.f7967Z, 68);
        int l02 = Nc.b.l0(0.0f, M());
        int l03 = Nc.b.l0(4.0f, M()) + l02;
        Nc.b.k0(48.0f);
        B1(l03, l02);
        return inflate;
    }

    public void C1() {
        this.f7965X.clear();
        try {
            for (String str : new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f7963f0).list()) {
                if (str.endsWith(".cbm")) {
                    this.f7965X.add(str);
                }
            }
            Collections.sort(this.f7965X);
        } catch (Exception e10) {
            e10.printStackTrace();
            N7.c.v0("Please reinstall additional content!!!");
        }
    }

    public String t1(int idx) {
        return this.f7965X.get(idx);
    }

    public int u1() {
        return this.f7965X.size();
    }

    public M7.k y1(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }

    public final M7.k z1(LinearLayout parent) {
        return y1(M(), parent, N7.c.B());
    }
}
