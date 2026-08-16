package H3;

import Ic.C2633l;
import JAVARuntime.Texture;
import M7.c;
import M7.o;
import M7.p;
import M7.r;
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
import yb.C16165b;

public class g extends EditorPanel {

    public static final String f8028g0 = "Textures/PBR/";

    public static final int f8029h0 = 0;

    public final List<C0165g> f8030X;

    public H3.e f8031Y;

    public C13042a<String, i> f8032Z;

    public RecyclerView f8033a0;

    public C14486a f8034b0;

    public final ImageView[] f8035c0;

    public String f8036d0;

    public boolean f8037e0;

    public final int f8038f0;

    public class a implements Runnable {

        public final C15045a f8040c;

        public final View f8041d;

        public final C15147a.e f8042e;

        public class RunnableC0164a implements Runnable {
            public RunnableC0164a() {
            }

            @Override
            public void run() {
                a.this.f8040c.p1();
                float g10 = N7.c.g(280);
                float f10 = N7.c.f(300);
                a aVar = a.this;
                C15147a.h(aVar.f8041d, g.this, aVar.f8042e, g10, f10);
            }
        }

        public a(final C15045a val$loading, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f8040c = val$loading;
            this.f8041d = val$anchor;
            this.f8042e = val$anchorSide;
        }

        @Override
        public void run() {
            g.this.E1();
            N7.c.j0(new RunnableC0164a());
        }
    }

    public class b implements Runnable {

        public final C15045a f8045c;

        public final View f8046d;

        public final C15147a.e f8047e;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                b.this.f8045c.p1();
                float g10 = N7.c.g(280);
                float f10 = N7.c.f(300);
                b bVar = b.this;
                C15147a.h(bVar.f8046d, g.this, bVar.f8047e, g10, f10);
            }
        }

        public b(final C15045a val$loading, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f8045c = val$loading;
            this.f8046d = val$anchor;
            this.f8047e = val$anchorSide;
        }

        @Override
        public void run() {
            g.this.E1();
            N7.c.j0(new a());
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class d implements C13042a.InterfaceC1584a<String, i> {

        public class a extends AbstractViewOnClickListenerC12733a {

            public final i f8051b;

            public final String f8052c;

            public a(final i val$holder, final String val$path) {
                this.f8051b = val$holder;
                this.f8052c = val$path;
            }

            @Override
            public void click(View v10) {
                if (C14331a.c()) {
                    k.w1("https://itsmagic.com.br/index.html", v10, C15147a.e.Below, 300.0f, 450.0f);
                    return;
                }
                if (g.this.f8035c0[0] != null) {
                    Vc.e.y(g.this.f8035c0[0], g.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
                    g.this.f8035c0[0] = null;
                }
                Vc.e.x(this.f8051b.f8092c, g.this.M(), R.color.colorPrimaryDark);
                g.this.f8035c0[0] = this.f8051b.f8092c;
                g.this.f8031Y.onSelected(this.f8052c);
                g.this.f8036d0 = this.f8052c;
                if (g.this.f8037e0) {
                    g.this.R0();
                }
            }
        }

        public d() {
        }

        @Override
        public void a(i holder, String element, int position) {
            Vc.e.K(holder.f8091b, g.z1(element), g.this.M(), new Vc.c());
            holder.f8091b.setOnClickListener(new a(holder, element));
            Vc.e.U(holder.f8092c, R.drawable.pbr_preset_border_4);
            if (!element.equals(g.this.f8036d0)) {
                Vc.e.y(holder.f8092c, g.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
            } else {
                Vc.e.x(holder.f8092c, g.this.M(), R.color.colorPrimaryDark);
                g.this.f8035c0[0] = holder.f8092c;
            }
        }

        @Override
        public i b(LayoutInflater inflater, ViewGroup parent) {
            return new i(inflater.inflate(R.layout.gallery_element, parent, false));
        }
    }

    public class e implements r {

        public final C0165g f8054a;

        public final int f8055b;

        public final int f8056c;

        public e(final C0165g val$group, final int val$innerImagePadding, final int val$borderPadding) {
            this.f8054a = val$group;
            this.f8055b = val$innerImagePadding;
            this.f8056c = val$borderPadding;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                g.this.D1(this.f8054a, this.f8055b, this.f8056c);
            }
        }
    }

    public class f extends o {

        public final C0165g f8058b0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(int icon, r listener, c.b connector, Context context, final C0165g val$group) {
            super(icon, listener, connector, context);
            this.f8058b0 = val$group;
        }

        @Override
        public void h0(ImageView imageView) {
            try {
                if (g.z1(this.f8058b0.f8060a).exists()) {
                    Vc.e.K(imageView, g.z1(this.f8058b0.f8060a), this.f14644l, new Vc.c());
                } else {
                    Vc.e.K(imageView, g.z1(this.f8058b0.f8060a + "/" + ((String) this.f8058b0.f8061b.get(0))), this.f14644l, new Vc.c());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                Vc.e.K(imageView, g.z1(this.f8058b0.f8060a + "/" + ((String) this.f8058b0.f8061b.get(0))), this.f14644l, new Vc.c());
            }
        }
    }

    public static class C0165g {

        public String f8060a;

        public final List<String> f8061b = new LinkedList();

        public List<String> d() {
            return this.f8061b;
        }

        public String e() {
            return this.f8060a;
        }
    }

    public g(H3.e listener) {
        super(null, "PBR selector");
        this.f8030X = new LinkedList();
        this.f8035c0 = new ImageView[]{null};
        this.f8038f0 = 2;
        super.e1(false);
        this.f8031Y = listener;
    }

    private M7.k B1(LinearLayout parent) {
        return A1(M(), parent, N7.c.B());
    }

    private void C1(LinearLayout topbar, M7.g element) {
        element.a(topbar, M(), N7.c.B());
        element.n(B1(topbar).e());
    }

    public static Texture F1(String selectedMatcap, boolean gammaCorrection, String... names) {
        for (String str : names) {
            String str2 = selectedMatcap + "/" + str;
            File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8028g0 + str2);
            if (file.exists()) {
                File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/PBR/" + str2);
                if (!I1(file2) || v1(file, file2, gammaCorrection)) {
                    ub.g u10 = C16165b.u("/_PROJECT/Gallery/Textures/PBR/" + str2);
                    if (u10 != null) {
                        return u10.p0();
                    }
                    return null;
                }
            }
        }
        return null;
    }

    public static String G1(String selectedMatcap, boolean gammaCorrection, String... names) {
        for (String str : names) {
            String str2 = selectedMatcap + "/" + str;
            File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8028g0 + str2);
            if (file.exists()) {
                File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/PBR/" + str2);
                if (!I1(file2) || v1(file, file2, gammaCorrection)) {
                    return "/_PROJECT/Gallery/Textures/PBR/" + str2;
                }
            }
        }
        return null;
    }

    public static void H1(String selectedMatcap, boolean gammaCorrection, String... names) {
        for (String str : names) {
            String str2 = selectedMatcap + "/" + str;
            File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8028g0 + str2);
            if (file.exists()) {
                File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/PBR/" + str2);
                if (!I1(file2) || v1(file, file2, gammaCorrection)) {
                    return;
                }
            }
        }
    }

    private static boolean I1(File inProjectFile) {
        if (!inProjectFile.exists()) {
            return true;
        }
        if (!new File(inProjectFile.getAbsolutePath() + ".config").exists()) {
            return true;
        }
        return !new File(Tc.b.O(inProjectFile.getAbsolutePath()) + ".texture").exists();
    }

    public static void J1(View anchor, C15147a.e anchorSide, H3.e matcapListener) {
        new Thread(new a(C15045a.t1(anchor, C15147a.e.Left), anchor, anchorSide)).start();
    }

    public static void K1(View anchor, C15147a.e anchorSide, H3.e matcapListener) {
        g gVar = new g(matcapListener);
        gVar.f8037e0 = true;
        new Thread(new b(C15045a.t1(anchor, C15147a.e.Left), anchor, anchorSide)).start();
    }

    public static boolean v1(File assetsFile, File inProjectFile, boolean gammaCorrection) {
        if (!C13696a.a(assetsFile, inProjectFile)) {
            return false;
        }
        File file = new File(assetsFile.getAbsolutePath() + ".config");
        File file2 = new File(inProjectFile.getAbsolutePath() + ".config");
        if (file.exists()) {
            C13696a.a(file, file2);
        } else {
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.maxResolutionID = 10;
            textureConfig.gammaCorrection = gammaCorrection;
            X7.a.h(file2, X7.a.m().toJson(textureConfig));
        }
        C13696a.a(assetsFile, new File(Tc.b.O(inProjectFile.getAbsolutePath()) + ".texture"));
        File file3 = new File(Tc.b.O(assetsFile.getAbsolutePath()) + C2633l.f9169o);
        if (!file3.exists()) {
            return true;
        }
        C13696a.a(file3, new File(Tc.b.O(inProjectFile.getAbsolutePath()) + C2633l.f9169o));
        return true;
    }

    public static String w1(String pbr) {
        return Tc.b.d(pbr.toLowerCase().replace(ConstantDescs.DEFAULT_NAME, " "));
    }

    public static File z1(String pbr) {
        return new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8028g0 + pbr + "/thumb.jpg");
    }

    public M7.k A1(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.gallery_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        this.f8033a0 = (RecyclerView) inflate.findViewById(R.id.recycler);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.tabs);
        C13042a<String, i> c13042a = new C13042a<>(M(), new d());
        this.f8032Z = c13042a;
        this.f8033a0.setAdapter(c13042a);
        this.f8033a0.setItemAnimator(null);
        this.f8034b0 = new C14486a(M(), this.f8033a0, this.f8032Z, 68);
        int l02 = Nc.b.l0(0.0f, M());
        int l03 = l02 + Nc.b.l0(4.0f, M());
        int k02 = Nc.b.k0(48.0f);
        LinkedList linkedList = new LinkedList();
        p pVar = new p(M());
        linkedList.add(pVar);
        int i10 = 0;
        while (i10 < y1()) {
            C0165g x12 = x1(i10);
            c.b bVar = c.b.Left;
            if (i10 > 0) {
                bVar = i10 < y1() - 1 ? c.b.Middle : c.b.Right;
            }
            int i11 = i10;
            f fVar = new f(R.drawable.empty_image, new e(x12, l03, l02), bVar, M(), x12);
            fVar.N0(Theme.T.SEMI_CARD).B0(Theme.T.PANEL_TOPBAR).m0(k02).Y(k02);
            fVar.W(true);
            pVar.s(fVar);
            if (i11 == 0) {
                D1(x12, l03, l02);
            }
            i10 = i11 + 1;
        }
        linearLayout.removeAllViews();
        for (int i12 = 0; i12 < linkedList.size(); i12++) {
            C1(linearLayout, (M7.g) linkedList.get(i12));
        }
        return inflate;
    }

    public final void D1(C0165g group, int innerImagePadding, int borderPadding) {
        String selected = this.f8031Y.getSelected();
        this.f8036d0 = selected;
        if (selected == null) {
            this.f8036d0 = "";
        }
        this.f8032Z.j();
        for (String str : group.f8061b) {
            this.f8032Z.g(group.f8060a + "/" + str);
        }
    }

    public void E1() {
        this.f8030X.clear();
        try {
            String[] list = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8028g0).list();
            int length = list.length;
            for (int i10 = 0; i10 < length; i10++) {
                String str = list[i10];
                C0165g c0165g = new C0165g();
                c0165g.f8060a = str;
                this.f8030X.add(c0165g);
                String[] list2 = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8028g0 + str).list();
                if (list2 == null) {
                    throw new RuntimeException("PBR GALLERY IS BROKEN FOR GROUP:" + str);
                }
                for (String str2 : list2) {
                    if (!str2.equals("thumb.jpg")) {
                        c0165g.f8061b.add(str2);
                    }
                }
                Collections.sort(c0165g.f8061b);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            N7.c.v0("Please reinstall additional content!!!");
        }
    }

    public C0165g x1(int idx) {
        return this.f8030X.get(idx);
    }

    public int y1() {
        return this.f8030X.size();
    }
}
