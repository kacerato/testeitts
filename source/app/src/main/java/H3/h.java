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
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import n.C14331a;
import o7.C14486a;
import q7.C15045a;
import r4.C15147a;
import yb.C16165b;

public class h extends EditorPanel {

    public static final String f8062f0 = "Textures/UI/";

    public static final int f8063g0 = 0;

    public static final Map<String, Boolean> f8064h0 = new HashMap();

    public final List<g> f8065X;

    public H3.e f8066Y;

    public C13042a<String, i> f8067Z;

    public RecyclerView f8068a0;

    public C14486a f8069b0;

    public final ImageView[] f8070c0;

    public String f8071d0;

    public final int f8072e0;

    public class a implements x8.b {
        @Override
        public void a() {
            h.f8064h0.clear();
        }

        @Override
        public void b() {
            h.f8064h0.clear();
        }
    }

    public class b implements Runnable {

        public final C15045a f8074c;

        public final View f8075d;

        public final C15147a.e f8076e;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                b.this.f8074c.p1();
                float g10 = N7.c.g(280);
                float f10 = N7.c.f(300);
                b bVar = b.this;
                C15147a.h(bVar.f8075d, h.this, bVar.f8076e, g10, f10);
            }
        }

        public b(final C15045a val$loading, final View val$anchor, final C15147a.e val$anchorSide) {
            this.f8074c = val$loading;
            this.f8075d = val$anchor;
            this.f8076e = val$anchorSide;
        }

        @Override
        public void run() {
            h.this.E1();
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

            public final i f8080b;

            public final String f8081c;

            public a(final i val$holder, final String val$path) {
                this.f8080b = val$holder;
                this.f8081c = val$path;
            }

            @Override
            public void click(View v10) {
                if (C14331a.c()) {
                    k.w1("https://itsmagic.com.br/index.html", v10, C15147a.e.Below, 300.0f, 450.0f);
                    return;
                }
                if (h.this.f8070c0[0] != null) {
                    Vc.e.y(h.this.f8070c0[0], h.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
                    h.this.f8070c0[0] = null;
                }
                Vc.e.x(this.f8080b.f8092c, h.this.M(), R.color.colorPrimaryDark);
                h.this.f8070c0[0] = this.f8080b.f8092c;
                h.this.f8066Y.onSelected(this.f8081c);
                h.this.f8071d0 = this.f8081c;
            }
        }

        public d() {
        }

        @Override
        public void a(i holder, String element, int position) {
            Vc.e.g0(holder.f8091b, h.z1(element), h.this.M());
            holder.f8091b.setOnClickListener(new a(holder, element));
            Vc.e.U(holder.f8092c, R.drawable.pbr_preset_border_4);
            if (!element.equals(h.this.f8071d0)) {
                Vc.e.y(holder.f8092c, h.this.M(), new ColorINT(Theme.i(Theme.T.PANEL)));
            } else {
                Vc.e.x(holder.f8092c, h.this.M(), R.color.colorPrimaryDark);
                h.this.f8070c0[0] = holder.f8092c;
            }
        }

        @Override
        public i b(LayoutInflater inflater, ViewGroup parent) {
            return new i(inflater.inflate(R.layout.gallery_element, parent, false));
        }
    }

    public class e implements r {

        public final g f8083a;

        public final int f8084b;

        public final int f8085c;

        public e(final g val$group, final int val$innerImagePadding, final int val$borderPadding) {
            this.f8083a = val$group;
            this.f8084b = val$innerImagePadding;
            this.f8085c = val$borderPadding;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                h.this.D1(this.f8083a, this.f8084b, this.f8085c);
            }
        }
    }

    public class f extends o {

        public final g f8087b0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(int icon, r listener, c.b connector, Context context, final g val$group) {
            super(icon, listener, connector, context);
            this.f8087b0 = val$group;
        }

        @Override
        public void h0(ImageView imageView) {
            try {
                if (h.z1(this.f8087b0.f8089a).exists()) {
                    Vc.e.g0(imageView, h.z1(this.f8087b0.f8089a), this.f14644l);
                } else {
                    Vc.e.g0(imageView, h.z1(this.f8087b0.f8089a + "/" + ((String) this.f8087b0.f8090b.get(0))), this.f14644l);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                Vc.e.g0(imageView, h.z1(this.f8087b0.f8089a + "/" + ((String) this.f8087b0.f8090b.get(0))), this.f14644l);
            }
        }
    }

    public static class g {

        public String f8089a;

        public final List<String> f8090b = new LinkedList();

        public List<String> d() {
            return this.f8090b;
        }

        public String e() {
            return this.f8089a;
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public h(H3.e listener) {
        super(null, "UI selector");
        this.f8065X = new LinkedList();
        this.f8070c0 = new ImageView[]{null};
        this.f8072e0 = 2;
        super.e1(false);
        this.f8066Y = listener;
    }

    private M7.k B1(LinearLayout parent) {
        return A1(M(), parent, N7.c.B());
    }

    private void C1(LinearLayout topbar, M7.g element) {
        element.a(topbar, M(), N7.c.B());
        element.n(B1(topbar).e());
    }

    public static Texture F1(String selectedMatcap) {
        File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8062f0 + selectedMatcap);
        if (!file.exists()) {
            return null;
        }
        File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/UI/" + selectedMatcap);
        if (H1(file2) && !v1(file, file2)) {
            return null;
        }
        ub.g u10 = C16165b.u("/_PROJECT/Gallery/Textures/UI/" + selectedMatcap);
        if (u10 != null) {
            return u10.p0();
        }
        return null;
    }

    public static String G1(String selectedMatcap) {
        Map<String, Boolean> map = f8064h0;
        Boolean bool = map.get(selectedMatcap);
        if (bool != null && bool.booleanValue()) {
            return "_PROJECT/Gallery/Textures/UI/" + selectedMatcap;
        }
        File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8062f0 + selectedMatcap);
        if (!file.exists()) {
            return null;
        }
        File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Gallery/Textures/UI/" + selectedMatcap);
        if (H1(file2) && !v1(file, file2)) {
            return null;
        }
        map.put(selectedMatcap, Boolean.TRUE);
        return "_PROJECT/Gallery/Textures/UI/" + selectedMatcap;
    }

    private static boolean H1(File inProjectFile) {
        if (!inProjectFile.exists()) {
            return true;
        }
        if (!new File(inProjectFile.getAbsolutePath() + ".config").exists()) {
            return true;
        }
        return !new File(Tc.b.O(inProjectFile.getAbsolutePath()) + ".texture").exists();
    }

    public static void I1(View anchor, C15147a.e anchorSide, H3.e matcapListener) {
        new Thread(new b(C15045a.t1(anchor, C15147a.e.Left), anchor, anchorSide)).start();
    }

    private static boolean v1(File assetsFile, File inProjectFile) {
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
            textureConfig.j0(TextureConfig.c.Nearest);
            textureConfig.genMipmaps = false;
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

    public static String w1(String ui2) {
        return Tc.b.d(ui2.toLowerCase().replace(ConstantDescs.DEFAULT_NAME, " "));
    }

    public static File z1(String ui2) {
        StringBuilder sb2 = new StringBuilder();
        C8.a aVar = W7.b.f27306f;
        sb2.append(aVar.f2458a.f());
        sb2.append("/gallery/");
        sb2.append(f8062f0);
        sb2.append(ui2);
        sb2.append("/thumb.png");
        File file = new File(sb2.toString());
        if (file.exists()) {
            return file;
        }
        return new File(aVar.f2458a.f() + "/gallery/" + f8062f0 + ui2);
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
        this.f8068a0 = (RecyclerView) inflate.findViewById(R.id.recycler);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.tabs);
        C13042a<String, i> c13042a = new C13042a<>(M(), new d());
        this.f8067Z = c13042a;
        this.f8068a0.setAdapter(c13042a);
        this.f8068a0.setItemAnimator(null);
        this.f8069b0 = new C14486a(M(), this.f8068a0, this.f8067Z, 68);
        int l02 = Nc.b.l0(0.0f, M());
        int l03 = l02 + Nc.b.l0(4.0f, M());
        int k02 = Nc.b.k0(48.0f);
        LinkedList linkedList = new LinkedList();
        p pVar = new p(M());
        linkedList.add(pVar);
        int i10 = 0;
        while (i10 < y1()) {
            g x12 = x1(i10);
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

    public final void D1(g group, int innerImagePadding, int borderPadding) {
        String selected = this.f8066Y.getSelected();
        this.f8071d0 = selected;
        if (selected == null) {
            this.f8071d0 = "";
        }
        this.f8067Z.j();
        for (String str : group.f8090b) {
            this.f8067Z.g(group.f8089a + "/" + str);
        }
    }

    public void E1() {
        this.f8065X.clear();
        try {
            String[] list = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8062f0).list();
            int length = list.length;
            for (int i10 = 0; i10 < length; i10++) {
                String str = list[i10];
                g gVar = new g();
                gVar.f8089a = str;
                this.f8065X.add(gVar);
                String[] list2 = new File(W7.b.f27306f.f2458a.f() + "/gallery/" + f8062f0 + str).list();
                if (list2 == null) {
                    throw new RuntimeException("UI GALLERY IS BROKEN FOR GROUP:" + str);
                }
                for (String str2 : list2) {
                    if (!str2.equals("thumb.png") && !str2.endsWith(".config") && !str2.endsWith(C2633l.f9169o)) {
                        gVar.f8090b.add(str2);
                    }
                }
                Collections.sort(gVar.f8090b);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            N7.c.v0("Please reinstall additional content!!!");
        }
    }

    public g x1(int idx) {
        return this.f8065X.get(idx);
    }

    public int y1() {
        return this.f8065X.size();
    }
}
