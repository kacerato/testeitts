package H3;

import Ic.C2633l;
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
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import o7.C14486a;
import q7.C15045a;
import r4.C15147a;
import yb.C16165b;

public class f extends EditorPanel {

    public static final String f8008f0 = "Textures/Matcaps/";

    public static final int f8009g0 = 0;

    public final List<String> f8010X;

    public e f8011Y;

    public C13042a<String, i> f8012Z;

    public RecyclerView f8013a0;

    public C14486a f8014b0;

    public final ImageView[] f8015c0;

    public String f8016d0;

    public final int f8017e0;

    public class a implements Runnable {

        public final C15045a f8019c;

        public final View f8020d;

        public final C15147a.e f8021e;

        public class RunnableC0163a implements Runnable {
            public RunnableC0163a() {
            }

            @Override
            public void run() {
                a.this.f8019c.p1();
                float g10 = N7.c.g(280);
                float f10 = N7.c.f(300);
                a aVar = a.this;
                C15147a.h(aVar.f8020d, f.this, aVar.f8021e, g10, f10);
            }
        }

        public a(final C15045a val$loading, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f8019c = val$loading;
            this.f8020d = val$anchor;
            this.f8021e = val$anchorSide;
        }

        @Override
        public void run() {
            f.this.D1();
            N7.c.j0(new RunnableC0163a());
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

        public class a extends AbstractViewOnClickListenerC12733a {

            public final i f8025b;

            public final String f8026c;

            public a(final i val$holder, final String val$path) {
                this.f8025b = val$holder;
                this.f8026c = val$path;
            }

            @Override
            public void click(View v10) {
                if (f.this.f8015c0[0] != null) {
                    Vc.e.y(f.this.f8015c0[0], f.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
                    f.this.f8015c0[0] = null;
                }
                Vc.e.x(this.f8025b.f8092c, f.this.M(), R.color.colorPrimaryDark);
                f.this.f8015c0[0] = this.f8025b.f8092c;
                f.this.f8011Y.onSelected(this.f8026c);
                f.this.f8016d0 = this.f8026c;
            }
        }

        public c() {
        }

        @Override
        public void a(i holder, String element, int position) {
            Vc.e.K(holder.f8091b, f.y1(element), f.this.M(), new Vc.c());
            holder.f8091b.setOnClickListener(new a(holder, element));
            Vc.e.U(holder.f8092c, R.drawable.pbr_preset_border_4);
            if (!element.equals(f.this.f8016d0)) {
                Vc.e.y(holder.f8092c, f.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
            } else {
                Vc.e.x(holder.f8092c, f.this.M(), R.color.colorPrimaryDark);
                f.this.f8015c0[0] = holder.f8092c;
            }
        }

        @Override
        public i b(LayoutInflater inflater, ViewGroup parent) {
            return new i(inflater.inflate(R.layout.gallery_element, parent, false));
        }
    }

    public f(e listener) {
        super(null, "Matcap selector");
        this.f8010X = new LinkedList();
        this.f8015c0 = new ImageView[]{null};
        this.f8017e0 = 2;
        super.e1(false);
        this.f8011Y = listener;
    }

    private k A1(LinearLayout parent) {
        return z1(M(), parent, N7.c.B());
    }

    private void B1(LinearLayout topbar, M7.g element) {
        element.a(topbar, M(), N7.c.B());
        element.n(A1(topbar).e());
    }

    private void C1(int innerImagePadding, int borderPadding) {
        String selected = this.f8011Y.getSelected();
        this.f8016d0 = selected;
        if (selected == null) {
            this.f8016d0 = "";
        }
        this.f8012Z.j();
        this.f8012Z.i(this.f8010X);
    }

    public static Texture E1(String selectedMatcap) {
        File x12 = x1(selectedMatcap);
        if (!x12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Matcaps/" + selectedMatcap);
        if (G1(file) && !t1(x12, file)) {
            return null;
        }
        ub.g u10 = C16165b.u("/_PROJECT/Gallery/Textures/Matcaps/" + selectedMatcap);
        if (u10 != null) {
            return u10.p0();
        }
        return null;
    }

    public static String F1(String selectedMatcap) {
        File x12 = x1(selectedMatcap);
        if (!x12.exists()) {
            return null;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/Matcaps/" + selectedMatcap);
        if (G1(file) && !t1(x12, file)) {
            return null;
        }
        return "/_PROJECT/Gallery/Textures/Matcaps/" + selectedMatcap;
    }

    public static boolean G1(File inProjectFile) {
        if (!inProjectFile.exists()) {
            return true;
        }
        if (!new File(inProjectFile.getAbsolutePath() + ".config").exists()) {
            return true;
        }
        return !new File(Tc.b.O(inProjectFile.getAbsolutePath()) + ".texture").exists();
    }

    public static void H1(View anchor, C15147a.e anchorSide, e matcapListener) {
        new Thread(new a(C15045a.t1(anchor, C15147a.e.Left), anchor, anchorSide)).start();
    }

    public static boolean t1(File assetsFile, File inProjectFile) {
        if (!C13696a.a(assetsFile, inProjectFile)) {
            return false;
        }
        File file = new File(assetsFile.getAbsolutePath() + ".config");
        File file2 = new File(inProjectFile.getAbsolutePath() + ".config");
        if (file.exists()) {
            C13696a.a(file, file2);
        } else {
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.m0(TextureConfig.d.RGB8);
            textureConfig.maxResolutionID = 16;
            textureConfig.gammaCorrection = true;
            textureConfig.B0(100);
            X7.a.h(file2, X7.a.m().toJson(textureConfig));
        }
        C13696a.a(assetsFile, new File(Tc.b.O(inProjectFile.getAbsolutePath()) + ".texture"));
        File file3 = new File(Tc.b.O(assetsFile.getAbsolutePath()) + C2633l.f9169o);
        if (file3.exists()) {
            C13696a.a(file3, new File(Tc.b.O(inProjectFile.getAbsolutePath()) + C2633l.f9169o));
        }
        return true;
    }

    public static String w1(String pbr) {
        return Tc.b.d(pbr.toLowerCase().replace(ConstantDescs.DEFAULT_NAME, " "));
    }

    public static File x1(String environment) {
        return new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8008f0 + environment);
    }

    public static File y1(String environment) {
        return new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8008f0 + environment);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.gallery_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        this.f8013a0 = (RecyclerView) inflate.findViewById(R.id.recycler);
        C13042a<String, i> c13042a = new C13042a<>(M(), new c());
        this.f8012Z = c13042a;
        this.f8013a0.setAdapter(c13042a);
        this.f8013a0.setItemAnimator(null);
        this.f8014b0 = new C14486a(M(), this.f8013a0, this.f8012Z, 68);
        int l02 = Nc.b.l0(0.0f, M());
        int l03 = Nc.b.l0(4.0f, M()) + l02;
        Nc.b.k0(48.0f);
        C1(l03, l02);
        return inflate;
    }

    public void D1() {
        this.f8010X.clear();
        try {
            String[] list = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8008f0).list();
            if (list != null) {
                for (String str : list) {
                    if (!str.endsWith(".config") && !str.endsWith(C2633l.f9169o)) {
                        this.f8010X.add(str);
                    }
                }
            }
            Collections.sort(this.f8010X);
        } catch (Exception e10) {
            e10.printStackTrace();
            N7.c.v0("Please reinstall additional content!!!");
        }
    }

    public String u1(int idx) {
        return this.f8010X.get(idx);
    }

    public int v1() {
        return this.f8010X.size();
    }

    public k z1(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        k kVar = new k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }
}
