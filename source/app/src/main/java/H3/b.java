package H3;

import JAVARuntime.Texture;
import M7.k;
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
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine2.R;
import e7.C13042a;
import id.C13696a;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import o7.C14486a;
import q7.C15045a;
import r4.C15147a;
import yb.C16165b;

@Deprecated
public class b extends EditorPanel {

    public static final String f7983f0 = "Textures/Environments/";

    public static final int f7984g0 = 0;

    public final List<String> f7985X;

    public e f7986Y;

    public C13042a<String, i> f7987Z;

    public RecyclerView f7988a0;

    public C14486a f7989b0;

    public final ImageView[] f7990c0;

    public String f7991d0;

    public final int f7992e0;

    public class a implements Runnable {

        public final C15045a f7994c;

        public final View f7995d;

        public final C15147a.e f7996e;

        public class RunnableC0161a implements Runnable {
            public RunnableC0161a() {
            }

            @Override
            public void run() {
                a.this.f7994c.p1();
                float g10 = N7.c.g(280);
                float f10 = N7.c.f(300);
                a aVar = a.this;
                C15147a.h(aVar.f7995d, b.this, aVar.f7996e, g10, f10);
            }
        }

        public a(final C15045a val$loading, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f7994c = val$loading;
            this.f7995d = val$anchor;
            this.f7996e = val$anchorSide;
        }

        @Override
        public void run() {
            b.this.C1();
            N7.c.j0(new RunnableC0161a());
        }
    }

    public class ViewOnTouchListenerC0162b implements View.OnTouchListener {
        public ViewOnTouchListenerC0162b() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class c implements C13042a.InterfaceC1584a<String, i> {

        public class a extends AbstractViewOnClickListenerC12733a {

            public final i f8000b;

            public final String f8001c;

            public a(final i val$holder, final String val$path) {
                this.f8000b = val$holder;
                this.f8001c = val$path;
            }

            @Override
            public void click(View v10) {
                if (b.this.f7990c0[0] != null) {
                    Vc.e.y(b.this.f7990c0[0], b.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
                    b.this.f7990c0[0] = null;
                }
                Vc.e.x(this.f8000b.f8092c, b.this.M(), R.color.colorPrimaryDark);
                b.this.f7990c0[0] = this.f8000b.f8092c;
                b.this.f7986Y.onSelected(this.f8001c);
                b.this.f7991d0 = this.f8001c;
            }
        }

        public c() {
        }

        @Override
        public void a(i holder, String element, int position) {
            Vc.e.K(holder.f8091b, b.x1(element), b.this.M(), new Vc.c());
            holder.f8091b.setOnClickListener(new a(holder, element));
            Vc.e.U(holder.f8092c, R.drawable.pbr_preset_border_4);
            if (!element.equals(b.this.f7991d0)) {
                Vc.e.y(holder.f8092c, b.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
            } else {
                Vc.e.x(holder.f8092c, b.this.M(), R.color.colorPrimaryDark);
                b.this.f7990c0[0] = holder.f8092c;
            }
        }

        @Override
        public i b(LayoutInflater inflater, ViewGroup parent) {
            return new i(inflater.inflate(R.layout.gallery_element, parent, false));
        }
    }

    public b(e listener) {
        super(null, "Environment selector");
        this.f7985X = new LinkedList();
        this.f7990c0 = new ImageView[]{null};
        this.f7992e0 = 2;
        super.e1(false);
        this.f7986Y = listener;
    }

    private void A1(LinearLayout topbar, M7.g element) {
        element.a(topbar, M(), N7.c.B());
        element.n(z1(topbar).e());
    }

    private void B1(int innerImagePadding, int borderPadding) {
        String selected = this.f7986Y.getSelected();
        this.f7991d0 = selected;
        if (selected == null) {
            this.f7991d0 = "";
        }
        this.f7987Z.j();
        this.f7987Z.i(this.f7985X);
    }

    public static Texture D1(String selectedMatcap) {
        File w12 = w1(selectedMatcap);
        if (!w12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Environments/" + selectedMatcap);
        if (!file.exists()) {
            if (!C13696a.a(w12, file)) {
                return null;
            }
            File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Environments/" + selectedMatcap + ".config");
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.m0(TextureConfig.d.RGB8);
            textureConfig.maxResolutionID = 16;
            textureConfig.B0(100);
            X7.a.h(file2, X7.a.m().toJson(textureConfig));
        }
        ub.g u10 = C16165b.u("/_PROJECT/Gallery/Textures/Environments/" + selectedMatcap);
        if (u10 != null) {
            return u10.p0();
        }
        return null;
    }

    public static Texture E1(String selectedMatcap, int resolutionID) {
        File w12 = w1(selectedMatcap);
        if (!w12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Environments/" + resolutionID + "/" + selectedMatcap);
        if (!file.exists()) {
            if (!C13696a.a(w12, file)) {
                return null;
            }
            File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Environments/" + resolutionID + "/" + selectedMatcap + ".config");
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.m0(TextureConfig.d.RGB8);
            textureConfig.maxResolutionID = resolutionID;
            textureConfig.B0(100);
            X7.a.h(file2, X7.a.m().toJson(textureConfig));
        }
        ub.g u10 = C16165b.u("/_PROJECT/Gallery/Textures/Environments/" + resolutionID + "/" + selectedMatcap);
        if (u10 != null) {
            return u10.p0();
        }
        return null;
    }

    public static String F1(String selectedMatcap) {
        File w12 = w1(selectedMatcap);
        if (!w12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Environments/" + selectedMatcap);
        if (!file.exists()) {
            if (!C13696a.a(w12, file)) {
                return null;
            }
            File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Environments/" + selectedMatcap + ".config");
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.m0(TextureConfig.d.RGB8);
            textureConfig.maxResolutionID = 16;
            textureConfig.B0(100);
            X7.a.h(file2, X7.a.m().toJson(textureConfig));
        }
        return "/_PROJECT/Gallery/Textures/Environments/" + selectedMatcap;
    }

    public static void G1(View anchor, C15147a.e anchorSide, e matcapListener) {
        new Thread(new a(C15045a.t1(anchor, C15147a.e.Left), anchor, anchorSide)).start();
    }

    public static String v1(String pbr) {
        return Tc.b.d(pbr.toLowerCase().replace(ConstantDescs.DEFAULT_NAME, " "));
    }

    public static File w1(String environment) {
        return new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f7983f0 + environment);
    }

    public static File x1(String environment) {
        return new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f7983f0 + environment);
    }

    private k z1(LinearLayout parent) {
        return y1(M(), parent, N7.c.B());
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.gallery_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0162b());
        this.f7988a0 = (RecyclerView) inflate.findViewById(R.id.recycler);
        C13042a<String, i> c13042a = new C13042a<>(M(), new c());
        this.f7987Z = c13042a;
        this.f7988a0.setAdapter(c13042a);
        this.f7988a0.setItemAnimator(null);
        this.f7989b0 = new C14486a(M(), this.f7988a0, this.f7987Z, 68);
        int l02 = Nc.b.l0(0.0f, M());
        int l03 = Nc.b.l0(4.0f, M()) + l02;
        Nc.b.k0(48.0f);
        B1(l03, l02);
        return inflate;
    }

    public void C1() {
        this.f7985X.clear();
        try {
            this.f7985X.addAll(Arrays.asList(new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f7983f0).list()));
            Collections.sort(this.f7985X);
        } catch (Exception e10) {
            e10.printStackTrace();
            N7.c.v0("Please reinstall additional content!!!");
        }
    }

    public String t1(int idx) {
        return this.f7985X.get(idx);
    }

    public int u1() {
        return this.f7985X.size();
    }

    public k y1(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        k kVar = new k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }
}
