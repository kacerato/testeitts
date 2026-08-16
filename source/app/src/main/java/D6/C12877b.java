package d6;

import Ic.C2636o;
import JAVARuntime.Runnable;
import K8.c;
import T5.b;
import Z5.f;
import Z6.f;
import Z6.i;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.GenericSearchView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Empty;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import h7.AbstractC13433d;
import id.C13696a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import o4.InterfaceC14482a;
import r4.C15147a;
import ug.C15608a;
import w6.C15971b;
import yd.C16181m;

public class C12877b extends EditorPanel {

    public static final String f84134i0 = "NewProjectPanel";

    public static final AtomicBoolean f84135j0 = new AtomicBoolean();

    public static final String f84136k0 = "/new-project-templates";

    public final List<Package> f84137X;

    public final Map<String, Package> f84138Y;

    public final InterfaceC14359d f84139Z;

    public final AbstractC14360e f84140a0;

    public AbstractC13433d f84141b0;

    public GenericSearchView f84142c0;

    public FloatingPanelArea f84143d0;

    public final InterfaceC14482a f84144e0;

    public boolean f84145f0;

    public boolean f84146g0;

    public boolean f84147h0;

    public class a implements C13696a.d {

        public final String f84148a;

        public a(final String val$tittle) {
            this.f84148a = val$tittle;
        }

        @Override
        public void b() {
            C12877b.this.K1(this.f84148a);
            d8.j.v0();
            com.itsmagic.engine.Core.Components.ProjectController.a.f0(C12877b.this.M(), this.f84148a);
            C12877b.this.I1(new File(W7.b.f27306f.f2458a.n(C12877b.this.M()) + "/" + this.f84148a));
            C12877b.this.J1();
        }
    }

    public class C1506b implements Runnable {

        public final World f84150b;

        public C1506b(final World val$world) {
            this.f84150b = val$world;
        }

        @Override
        public void run() {
            C12877b.f84135j0.set(false);
            C12877b.this.P1(this.f84150b);
        }
    }

    public class c implements Runnable {

        public final World f84152b;

        public class a implements a.k {
            public a() {
            }

            @Override
            public World onFailed() {
                C13696a.q("/Files/Worlds/", "World", C12877b.this.M());
                World world = c.this.f84152b;
                world.fileName = "World.world";
                world.folder = "/Files/Worlds/";
                world.createExampleWhenOpen = true;
                return world;
            }

            @Override
            public void onSuccess() {
            }
        }

        public c(final World val$world) {
            this.f84152b = val$world;
        }

        @Override
        public void run() {
            try {
                World world = this.f84152b;
                com.itsmagic.engine.Engines.Engine.World.a.I(world.folder, world.fileName, true, new a());
            } catch (Exception e10) {
                e10.printStackTrace();
                C12877b.this.P1(this.f84152b);
            }
        }
    }

    public class d implements InterfaceC14359d {
        public d() {
        }

        @Override
        public boolean a(File file) {
            return true;
        }
    }

    public class e implements View.OnTouchListener {
        public e() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View v10) {
            C12877b.this.R0();
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {

        public class a implements f.g {
            public a() {
            }

            @Override
            public void c(String text) {
                C12877b.this.F1(text);
            }

            @Override
            public void onCancel() {
            }
        }

        public g() {
        }

        @Override
        public void click(View v10) {
            Z6.f.x1("Project title", Empty.f74413H, new a());
        }
    }

    public class h extends AbstractC13433d {
        public h(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter) {
            super(activity, explorerDataProvider, filter);
        }

        @Override
        public void s(String openFolder, View v10) {
        }

        @Override
        public void t(String openFolder, View v10) {
        }

        @Override
        public void u(File file, View v10) {
            Package r12;
            if (file == null || (r12 = (Package) C12877b.this.f84138Y.get(file.getAbsolutePath())) == null) {
                return;
            }
            C12880e.C1(null, r12);
        }

        @Override
        public void v(File file, View v10) {
        }
    }

    public class i implements TextWatcher {
        public i() {
        }

        @Override
        public void afterTextChanged(Editable s10) {
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            if (C12877b.this.f84141b0 != null) {
                C12877b.this.f84141b0.B(s10 == null ? "" : s10.toString());
            }
        }
    }

    public class j implements Runnable {

        public class a implements Runnable {

            public final List f84163b;

            public a(final List val$result) {
                this.f84163b = val$result;
            }

            @Override
            public void run() {
                C12877b.this.A1(this.f84163b);
                C12877b.this.f84146g0 = false;
                if (C12877b.this.f84141b0 != null) {
                    C12877b.this.f84141b0.K();
                }
            }
        }

        public class RunnableC1507b implements Runnable {

            public final RuntimeException f84165b;

            public RunnableC1507b(final RuntimeException val$e) {
                this.f84165b = val$e;
            }

            @Override
            public void run() {
                C12877b.this.f84146g0 = false;
                Z6.i.y1("Ops!", this.f84165b.getMessage());
            }
        }

        public j() {
        }

        @Override
        public void run() {
            try {
                N7.c.j0(new a(T5.b.l0(null, null, null, b.k.IsTemplate)));
            } catch (RuntimeException e10) {
                N7.c.j0(new RunnableC1507b(e10));
            }
        }
    }

    public class k implements Comparator<Package> {
        public k() {
        }

        @Override
        public int compare(Package a10, Package b10) {
            return Long.compare(T5.b.g0(b10), T5.b.g0(a10));
        }
    }

    public class l implements Runnable {

        public final C12878c f84168b;

        public final String f84169c;

        public l(final C12878c val$downloadProgress, final String val$finalProjectTittle) {
            this.f84168b = val$downloadProgress;
            this.f84169c = val$finalProjectTittle;
        }

        @Override
        public void run() {
            C12877b.this.G1(this.f84168b, this.f84169c);
        }
    }

    public class m extends AbstractC14360e {

        public class a implements F7.j {

            public final String f84172a;

            public a(final String val$finalUrl) {
                this.f84172a = val$finalUrl;
            }

            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
                Vc.e.b0(imageView, this.f84172a, R.drawable.package_failedload, R.drawable.package_failedload, context, com.bumptech.glide.load.engine.i.f59186b);
            }
        }

        public m() {
        }

        @Override
        public boolean a(File file) {
            return file != null;
        }

        @Override
        public String c(boolean isSearching, File file, String ipp) {
            String str;
            Package r12 = (Package) C12877b.this.f84138Y.get(file.getAbsolutePath());
            return (r12 == null || (str = r12.userName) == null || str.trim().isEmpty()) ? Lang.l(Lang.T.UNKNOWN_ERROR) : r12.userName;
        }

        @Override
        public String d(File file, String ipp) {
            Package r32 = (Package) C12877b.this.f84138Y.get(file.getAbsolutePath());
            if (r32 == null) {
                return file.getName();
            }
            String P10 = T5.b.P(r32);
            return (P10 == null || P10.trim().isEmpty()) ? Lang.l(Lang.T.STORE_ERROR_DEFAULT_NAME) : P10;
        }

        @Override
        public F7.j e(File file, String ipp, boolean isGrid) {
            List<String> list;
            Package r22 = (Package) C12877b.this.f84138Y.get(file.getAbsolutePath());
            if (r22 == null) {
                return null;
            }
            String str = r22.thumbnail;
            String I10 = (str == null || str.isEmpty()) ? null : T5.b.I(r22, r22.thumbnail);
            if ((I10 == null || I10.isEmpty()) && (list = r22.images) != null && !list.isEmpty()) {
                I10 = T5.b.I(r22, r22.images.get(0));
            }
            if (I10 == null || I10.trim().isEmpty()) {
                return null;
            }
            return new a(I10);
        }

        @Override
        public String f() {
            return C12877b.f84136k0;
        }

        @Override
        public String g(File file, String ipp) {
            Package r32 = (Package) C12877b.this.f84138Y.get(file.getAbsolutePath());
            if (r32 == null || r32.f71742id == null) {
                return file.getAbsolutePath();
            }
            return "template:" + r32.f71742id;
        }

        @Override
        public boolean h(File file) {
            return false;
        }

        @Override
        public List<File> j(File parent) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 = 0; i10 < C12877b.this.f84137X.size(); i10++) {
                Package r12 = (Package) C12877b.this.f84137X.get(i10);
                if (r12 != null) {
                    File file = new File(C12877b.this.C1(r12));
                    C12877b.this.f84138Y.put(file.getAbsolutePath(), r12);
                    steppedArrayList.add(file);
                }
            }
            return steppedArrayList;
        }

        @Override
        public boolean k(File file, String ipp, String searchText) {
            Package r32 = (Package) C12877b.this.f84138Y.get(file.getAbsolutePath());
            if (r32 == null) {
                return false;
            }
            if (searchText == null || searchText.trim().isEmpty()) {
                return true;
            }
            String lowerCase = searchText.trim().toLowerCase();
            String P10 = T5.b.P(r32);
            if (P10 != null && P10.toLowerCase().contains(lowerCase)) {
                return true;
            }
            String str = r32.userName;
            if (str != null && str.toLowerCase().contains(lowerCase)) {
                return true;
            }
            String str2 = r32.tags;
            return str2 != null && str2.toLowerCase().contains(lowerCase);
        }

        @Override
        public boolean l() {
            return true;
        }

        public m(C12877b c12877b, d dVar) {
            this();
        }
    }

    public C12877b(InterfaceC14482a parentTrigger) {
        super(null, "New project panel");
        this.f84137X = new SteppedArrayList();
        this.f84138Y = new HashMap();
        this.f84139Z = new d();
        this.f84140a0 = new m(this, null);
        this.f84147h0 = true;
        this.f84144e0 = parentTrigger;
    }

    private void E1(ViewGroup contentPanel) {
        h hVar = new h(A(), this.f84140a0, this.f84139Z);
        this.f84141b0 = hVar;
        hVar.D(false);
        this.f84141b0.y(true);
        this.f84141b0.z((int) (A().getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_width) * 1.5f));
        this.f84141b0.i(contentPanel);
        this.f84141b0.o("/");
        this.f84141b0.B("");
    }

    public void G1(C12878c downloadProgress, String tittle) {
        com.itsmagic.engine.Core.Components.ProjectController.a.l0(tittle);
        com.itsmagic.engine.Core.Components.ProjectController.a.c0().b(tittle, M());
        downloadProgress.p1(0, "Preparing project");
        if (this.f84147h0) {
            downloadProgress.p1(0, "Installing java");
            C13696a.n(new a(tittle));
        } else {
            J1();
            downloadProgress.R0();
        }
    }

    public void I1(File destinationFolder) {
        try {
            InputStream open = N7.c.t().getAssets().open("Editor/EmptyProject/Files.zip");
            File file = new File(destinationFolder, "temp.zip");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = open.read(bArr);
                    if (read <= 0) {
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
                fileOutputStream.close();
                C15608a c15608a = new C15608a(file);
                try {
                    if (!destinationFolder.exists()) {
                        destinationFolder.mkdirs();
                    }
                    byte[] bArr2 = new byte[1024];
                    for (Bg.j jVar : c15608a.R()) {
                        File file2 = new File(destinationFolder, jVar.j());
                        if (!jVar.s()) {
                            File parentFile = file2.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            }
                            zg.k S10 = c15608a.S(jVar);
                            try {
                                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                                while (true) {
                                    try {
                                        int read2 = S10.read(bArr2);
                                        if (read2 <= 0) {
                                            break;
                                        } else {
                                            fileOutputStream2.write(bArr2, 0, read2);
                                        }
                                    } catch (Throwable th2) {
                                        try {
                                            fileOutputStream2.close();
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                        }
                                        throw th2;
                                    }
                                }
                                fileOutputStream2.close();
                                S10.close();
                            } catch (Throwable th4) {
                                if (S10 != null) {
                                    try {
                                        S10.close();
                                    } catch (Throwable th5) {
                                        th4.addSuppressed(th5);
                                    }
                                }
                                throw th4;
                            }
                        } else if (!file2.exists()) {
                            file2.mkdirs();
                        }
                    }
                    c15608a.close();
                    file.delete();
                    open.close();
                } finally {
                }
            } catch (Throwable th6) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th7) {
                    th6.addSuppressed(th7);
                }
                throw th6;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void J1() {
        World world = new World();
        world.fileName = "World.world";
        world.folder = "/Files/Worlds/";
        K8.a.I(new C1506b(world));
    }

    private void L1() {
        this.f84138Y.clear();
    }

    private void M1(View v10) {
        TextView textView = (TextView) v10.findViewById(R.id.repositoryText);
        if (textView != null) {
            textView.setText("Repository: " + T5.b.M());
        }
    }

    public static FloatingPanelArea N1(InterfaceC14482a parentTrigger, View anchor, C15147a.e anchorSide) {
        C12877b c12877b = new C12877b(parentTrigger);
        FloatingPanelArea g10 = C15147a.g(anchor, c12877b, anchorSide, N7.c.g(400), 0.8f);
        c12877b.f84143d0 = g10;
        return g10;
    }

    public static FloatingPanelArea O1(InterfaceC14482a parentTrigger) {
        C12877b c12877b = new C12877b(parentTrigger);
        c12877b.f84145f0 = true;
        FloatingPanelArea floatingPanelArea = new FloatingPanelArea(0.0f, 0.0f, 1.0f, 1.0f);
        floatingPanelArea.N0(true, true, true, false);
        floatingPanelArea.g(c12877b);
        floatingPanelArea.T();
        floatingPanelArea.F1(false);
        floatingPanelArea.E1(true);
        floatingPanelArea.N1(false);
        c12877b.f84143d0 = floatingPanelArea;
        return floatingPanelArea;
    }

    public void P1(World world) {
        K8.a.B(new c(world));
    }

    public final void A1(List<Package> newTemplates) {
        int i10;
        if (newTemplates == null || newTemplates.isEmpty()) {
            L1();
            return;
        }
        for (int i11 = 0; i11 < newTemplates.size(); i11++) {
            Package r22 = newTemplates.get(i11);
            if (r22 != null && r22.f71742id != null) {
                while (true) {
                    if (i10 >= this.f84137X.size()) {
                        this.f84137X.add(r22);
                        break;
                    }
                    Package r42 = this.f84137X.get(i10);
                    i10 = (r42 == null || !r22.f71742id.equals(r42.f71742id)) ? i10 + 1 : 0;
                }
            }
        }
        Collections.sort(this.f84137X, new k());
        L1();
    }

    public final void B1() {
        GenericSearchView genericSearchView = this.f84142c0;
        if (genericSearchView == null || this.f84141b0 == null) {
            return;
        }
        genericSearchView.setText("");
        this.f84142c0.c(new i());
    }

    @Override
    @SuppressLint({"InflateParams"})
    public View C0() {
        View inflate = K8.c.f11004e == c.a.Landscape ? this.f70908j.inflate(R.layout.new_project_panel_land, (ViewGroup) null) : this.f70908j.inflate(R.layout.new_project_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new e());
        ((TextView) inflate.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.NEW_PROJECT_PANEL_TITTLE));
        M1(inflate);
        inflate.findViewById(R.id.exit).setOnClickListener(new f());
        TextView textView = (TextView) inflate.findViewById(R.id.new_empty_project_text);
        if (textView != null) {
            textView.setText(Lang.l(Lang.T.NEW_EMPTY_PROJECT_PANEL));
        }
        inflate.findViewById(R.id.new_empty_project).setOnClickListener(new g());
        this.f84142c0 = (GenericSearchView) inflate.findViewById(R.id.projectSearchView);
        E1((ViewGroup) inflate.findViewById(R.id.content));
        B1();
        H1();
        if (this.f84145f0) {
            N7.c.D().u(this);
        }
        return inflate;
    }

    public final String C1(Package pack) {
        String P10 = T5.b.P(pack);
        if (P10 == null || P10.trim().isEmpty()) {
            P10 = Lang.l(Lang.T.STORE_ERROR_DEFAULT_NAME);
        }
        String trim = P10.replace("/", ConstantDescs.DEFAULT_NAME).replace(C16181m.f130232i, ConstantDescs.DEFAULT_NAME).trim();
        if (trim.isEmpty()) {
            trim = "Package";
        }
        String str = pack.f71742id;
        if (str == null) {
            str = Tc.b.M(8);
        }
        return "/new-project-templates/" + trim + f.p.f30829d + str;
    }

    public final void D1() {
        this.f84137X.clear();
        L1();
    }

    public final void F1(String projectTittle) {
        if (projectTittle.equals("")) {
            Z6.i.z1("Ops!", M().getResources().getString(R.string.activity_projectbrowser_nameempty), new i.g());
            return;
        }
        String K10 = Tc.b.K(projectTittle);
        File file = new File(W7.b.f27306f.f2458a.n(M()) + "/" + K10);
        if (file.exists()) {
            Z6.i.z1("Ops!", M().getResources().getString(R.string.activity_projectbrowser_nameexists), new i.g());
            return;
        }
        if (K10.equals("Files")) {
            Z6.i.z1("Ops!", "Files is a reserved name, please try another", new i.g());
            return;
        }
        if (!file.mkdirs()) {
            Z6.i.z1("Ops!", M().getResources().getString(R.string.activity_projectbrowser_permissionerror), new i.g());
            return;
        }
        f84135j0.set(true);
        R0();
        InterfaceC14482a interfaceC14482a = this.f84144e0;
        if (interfaceC14482a != null) {
            interfaceC14482a.a();
        }
        for (int i10 = 0; i10 < N7.c.D().M(); i10++) {
            try {
                for (Panel panel : N7.c.D().O(i10).panelList) {
                    if (panel.M() instanceof C15971b) {
                        panel.o0();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        C12878c r12 = C12878c.r1();
        C2636o.e("2.0", new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(K10) + "/_EDITOR/mj.bin"));
        N7.c.l(0.5f, new l(r12, K10));
    }

    @Override
    public void G0() {
        super.G0();
        if (this.f84145f0) {
            N7.c.D().s0(this);
        }
    }

    public final void H1() {
        if (this.f84146g0) {
            return;
        }
        this.f84146g0 = true;
        D1();
        new Thread(new j()).start();
    }

    @Override
    public void K0() {
        super.K0();
        R0();
    }

    public void K1(String projectName) {
        com.itsmagic.engine.Core.Components.ProjectController.a.l0("");
        N7.c.D().s0(this);
    }

    @Override
    public EditorPanel k() {
        return new C12877b(this.f84144e0);
    }

    @Override
    public void m1() {
        super.m1();
        AbstractC13433d abstractC13433d = this.f84141b0;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void n1() {
        super.n1();
        AbstractC13433d abstractC13433d = this.f84141b0;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }
}
