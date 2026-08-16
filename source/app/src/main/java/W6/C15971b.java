package w6;

import Ic.C2630i;
import Ic.C2633l;
import Ic.C2636o;
import JAVARuntime.Runnable;
import K8.c;
import Z6.c;
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
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import bd.C3867a;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.itsmagic.engine.Activities.App;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.C12736d;
import com.itsmagic.engine.Activities.Editor.Utils.GenericSearchView;
import com.itsmagic.engine.Core.Components.ProjectController.Utils.ProjectVersion;
import com.itsmagic.engine.Core.Components.ProjectController.a;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import com.jme3.shader.ShaderGenerator;
import d6.C12877b;
import dd.C12908b;
import h7.AbstractC13433d;
import id.C13696a;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.time.LocalDateTime;
import java.time.chrono.ChronoLocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import o4.InterfaceC14482a;
import q7.C15045a;
import r4.C15147a;

public class C15971b extends EditorPanel {

    public static final String f127227C0 = "OpenProjectPanel";

    public static final AtomicBoolean f127228D0 = new AtomicBoolean();

    public static final AtomicBoolean f127229E0 = new AtomicBoolean();

    public String f127230A0;

    public float f127231B0;

    public final InterfaceC14359d f127232X;

    public final AbstractC14360e f127233Y;

    public AbstractC13433d f127234Z;

    public LinearLayout f127235a0;

    public GenericSearchView f127236b0;

    public x6.c f127237c0;

    public View f127238d0;

    public View f127239e0;

    public TextView f127240f0;

    public TextView f127241g0;

    public boolean f127242h0;

    public View f127243i0;

    public View f127244j0;

    public View f127245k0;

    public View f127246l0;

    public View f127247m0;

    public View f127248n0;

    public View f127249o0;

    public View f127250p0;

    public TextView f127251q0;

    public TextView f127252r0;

    public TextView f127253s0;

    public TextView f127254t0;

    public View f127255u0;

    public View f127256v0;

    public View f127257w0;

    public FrameLayout f127258x0;

    public FrameLayout f127259y0;

    public FrameLayout f127260z0;

    public class a extends AbstractViewOnClickListenerC12733a {
        public a() {
        }

        @Override
        public void click(View view) {
            C15971b.this.R0();
        }
    }

    public class C2172b extends AbstractViewOnClickListenerC12733a {
        public C2172b() {
        }

        @Override
        public void click(View view) {
            if (C15971b.this.f127237c0 != null) {
                C15971b c15971b = C15971b.this;
                c15971b.E1(c15971b.f127237c0.f127956a);
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public class a extends SteppedArrayList<C12908b> {

            public final String f127264b;

            public class C2173a implements dd.d {

                public class C2174a extends c.h {

                    public class C2175a implements C15045a.d {

                        public class RunnableC2176a implements Runnable {

                            public final C15045a f127269b;

                            public class RunnableC2177a implements Runnable {
                                public RunnableC2177a() {
                                }

                                @Override
                                public void run() {
                                    RunnableC2176a.this.f127269b.p1();
                                    C15971b.this.f127237c0 = null;
                                    if (C15971b.this.f127234Z != null) {
                                        C15971b.this.f127234Z.K();
                                    }
                                    N7.c.v0("Success");
                                }
                            }

                            public RunnableC2176a(final C15045a val$loading) {
                                this.f127269b = val$loading;
                            }

                            @Override
                            public void run() {
                                C13696a.g(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(a.this.f127264b)));
                                N7.c.j0(new RunnableC2177a());
                            }
                        }

                        public C2175a() {
                        }

                        @Override
                        public void a(C15045a loading) {
                            O9.b.d(new RunnableC2176a(loading));
                        }
                    }

                    public C2174a() {
                    }

                    @Override
                    public void a(c.g dialog) {
                        super.a(dialog);
                        C15045a.u1(true, new C2175a());
                    }
                }

                public C2173a() {
                }

                @Override
                public void onSelected(View v10) {
                    if (a.this.f127264b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                        Z6.i.y1("Warning!", "Unable to delete an open project");
                    } else {
                        Z6.c.z1("Attention!", "Are you sure you want to delete the project?", new C2174a());
                    }
                }
            }

            public class C2178b implements dd.d {
                public C2178b() {
                }

                @Override
                public void onSelected(View v10) {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(a.this.f127264b) + "/_VULKAN");
                    if (file.exists()) {
                        file.delete();
                    }
                    N7.c.v0("Success");
                }
            }

            public class C2179c implements dd.d {

                public class RunnableC2180a implements Runnable {

                    public final C15045a f127274b;

                    public class RunnableC2181a implements Runnable {
                        public RunnableC2181a() {
                        }

                        @Override
                        public void run() {
                            RunnableC2180a.this.f127274b.p1();
                        }
                    }

                    public RunnableC2180a(final C15045a val$loading) {
                        this.f127274b = val$loading;
                    }

                    public void a(File file) {
                        for (File file2 : file.listFiles()) {
                            if (file2.isDirectory()) {
                                a(file2);
                            } else {
                                if (C2633l.b(file2.getAbsolutePath(), ".texture")) {
                                    file2.delete();
                                }
                                if (C2633l.b(file2.getAbsolutePath(), C2633l.f9169o)) {
                                    file2.delete();
                                }
                            }
                        }
                    }

                    @Override
                    public void run() {
                        a(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(a.this.f127264b)));
                        K8.a.I(new RunnableC2181a());
                    }
                }

                public C2179c() {
                }

                @Override
                public void onSelected(View v10) {
                    new Thread(new RunnableC2180a(C15045a.r1())).start();
                }
            }

            public a(final String val$projectName) {
                this.f127264b = val$projectName;
                add(new C12908b(R.drawable.bin_nopadding_v2, "Delete project", new C2173a()));
                add(new C12908b(R.drawable.store, "Delete vulkan cache", new C2178b()));
                add(new C12908b(R.drawable.clean, "Delete textures cache", new C2179c()));
            }
        }

        public c() {
        }

        @Override
        public void click(View v10) {
            String str;
            x6.c cVar = C15971b.this.f127237c0;
            if (cVar == null || (str = cVar.f127956a) == null) {
                return;
            }
            Y6.a.F1(v10, C15147a.e.Below, new a(str));
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public class a implements a.f {
            public a() {
            }

            @Override
            public void b(File backup) {
                N7.c.v0("Backup created successfully");
            }

            @Override
            public void onError(String message) {
                Z6.i.y1("Backup failed", message);
            }
        }

        public d() {
        }

        @Override
        public void click(View v10) {
            if (C15971b.this.f127237c0 == null) {
                return;
            }
            com.itsmagic.engine.Core.Components.ProjectController.a.g0(C15971b.this.f127237c0.f127956a, new a());
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public class a extends SteppedArrayList<C12908b> {

            public class C2182a implements dd.d {
                public C2182a() {
                }

                @Override
                public void onSelected(View v10) {
                    C15971b.this.J1();
                }
            }

            public class C2183b implements dd.d {

                public class C2184a implements a.f {
                    public C2184a() {
                    }

                    @Override
                    public void b(File backup) {
                        N7.c.v0("Backup created successfully");
                        C2630i.t(backup, "Export project", "zip");
                    }

                    @Override
                    public void onError(String message) {
                        Z6.i.y1("Backup failed", message);
                    }
                }

                public C2183b() {
                }

                @Override
                public void onSelected(View v10) {
                    com.itsmagic.engine.Core.Components.ProjectController.a.g0(C15971b.this.f127237c0.f127956a, new C2184a());
                }
            }

            public class c implements dd.d {
                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.t.g(com.itsmagic.engine.Core.Components.ProjectController.a.Y(C15971b.this.f127237c0.f127956a), C15971b.this.f127237c0.f127956a, C15971b.this.f127237c0.f127958c);
                }
            }

            public class d implements dd.d {
                public d() {
                }

                @Override
                public void onSelected(View v10) {
                    com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.t.f(com.itsmagic.engine.Core.Components.ProjectController.a.Y(C15971b.this.f127237c0.f127956a), C15971b.this.f127237c0.f127956a, C15971b.this.f127237c0.f127958c);
                }
            }

            public a() {
                add(new C12908b(R.drawable.paste, "Duplicate", new C2182a()));
                add(new C12908b(R.drawable.share, Lang.l(Lang.T.PROJECTS_MENU_EXPORT_BACKUP), new C2183b()));
                if (C15971b.this.f127237c0.f127958c == null || !C15971b.this.f127237c0.f127958c.e()) {
                    add(new C12908b(R.drawable.store, Lang.l(Lang.T.STORE_GITHUB_SHARE_MENU), new d()));
                } else {
                    add(new C12908b(R.drawable.store, Lang.l(Lang.T.STORE_GITHUB_UPDATE_MENU), new c()));
                }
            }
        }

        public e() {
        }

        @Override
        public void click(View v10) {
            if (C15971b.this.f127237c0 == null) {
                return;
            }
            Y6.a.F1(v10, C15147a.e.Below, new a());
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {

        public class a implements InterfaceC14482a {
            public a() {
            }

            @Override
            public void a() {
                C15971b.this.R0();
            }
        }

        public f() {
        }

        @Override
        public void click(View v10) {
            C15971b.this.f70922x.s(C12877b.O1(new a()));
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {
        public g() {
        }

        @Override
        public void click(View v10) {
            z4.b.s1(v10, C15147a.e.Below);
        }
    }

    public class h extends AbstractViewOnClickListenerC12733a {
        public h() {
        }

        @Override
        public void click(View view) {
            I4.d.r1(view, C15147a.e.Below);
        }
    }

    public class i implements f.g {

        public final String f127290a;

        public i(final String val$sourceProjectName) {
            this.f127290a = val$sourceProjectName;
        }

        @Override
        public void c(String text) {
            C15971b.this.A1(this.f127290a, text);
        }

        @Override
        public void onCancel() {
        }
    }

    public class j implements Runnable {

        public final File f127292b;

        public final File f127293c;

        public final String f127294d;

        public class a implements C15045a.d {

            public class RunnableC2185a implements Runnable {

                public final C15045a f127297b;

                public class RunnableC2186a implements Runnable {
                    public RunnableC2186a() {
                    }

                    @Override
                    public void run() {
                        RunnableC2185a.this.f127297b.p1();
                        C15971b.this.H1(new x6.c(j.this.f127294d), true);
                        if (C15971b.this.f127234Z != null) {
                            C15971b.this.f127234Z.K();
                        }
                        N7.c.v0("Project duplicated");
                    }
                }

                public class RunnableC2187b implements Runnable {

                    public final Throwable f127300b;

                    public RunnableC2187b(final Throwable val$e) {
                        this.f127300b = val$e;
                    }

                    @Override
                    public void run() {
                        RunnableC2185a.this.f127297b.p1();
                        Z6.i.z1("Duplicate failed", this.f127300b.getMessage() != null ? this.f127300b.getMessage() : "Could not duplicate project", new i.g());
                    }
                }

                public RunnableC2185a(final C15045a val$loading) {
                    this.f127297b = val$loading;
                }

                @Override
                public void run() {
                    try {
                        if (j.this.f127292b.exists()) {
                            C13696a.g(j.this.f127292b);
                            if (j.this.f127292b.exists()) {
                                throw new IllegalStateException("Failed to delete existing project folder");
                            }
                        }
                        j jVar = j.this;
                        if (!C13696a.a(jVar.f127293c, jVar.f127292b)) {
                            throw new IllegalStateException("Failed to copy project folder");
                        }
                        N7.c.j0(new RunnableC2186a());
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        N7.c.j0(new RunnableC2187b(th2));
                    }
                }
            }

            public a() {
            }

            @Override
            public void a(C15045a loading) {
                new Thread(new RunnableC2185a(loading)).start();
            }
        }

        public j(final File val$targetFolder, final File val$sourceFolder, final String val$finalTargetProjectName) {
            this.f127292b = val$targetFolder;
            this.f127293c = val$sourceFolder;
            this.f127294d = val$finalTargetProjectName;
        }

        @Override
        public void run() {
            C15045a.u1(true, new a());
        }
    }

    public class k implements InterfaceC14359d {
        public k() {
        }

        @Override
        public boolean a(File file) {
            return (file == null || !file.exists() || !file.isDirectory() || file.getName().startsWith(ConstantDescs.DEFAULT_NAME) || file.getName().equals("JAVARuntime") || file.getName().equals("Files")) ? false : true;
        }
    }

    public class l extends AbstractC14360e {

        public class a implements Comparator<File> {

            public final Map f127304b;

            public a(final Map val$lastOpenCache) {
                this.f127304b = val$lastOpenCache;
            }

            @Override
            public int compare(File o12, File o22) {
                LocalDateTime localDateTime = (LocalDateTime) this.f127304b.get(o12.getAbsolutePath());
                LocalDateTime localDateTime2 = (LocalDateTime) this.f127304b.get(o22.getAbsolutePath());
                if (localDateTime == null) {
                    localDateTime = LocalDateTime.MIN;
                }
                if (localDateTime2 == null) {
                    localDateTime2 = LocalDateTime.MIN;
                }
                return localDateTime2.compareTo((ChronoLocalDateTime<?>) localDateTime);
            }
        }

        public class C2188b implements F7.j {

            public final File f127306a;

            public C2188b(final File val$icon) {
                this.f127306a = val$icon;
            }

            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
                if (this.f127306a.exists()) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    Vc.e.I(imageView, this.f127306a, context, new U.h().c().u(R.drawable.project_default_icon), com.bumptech.glide.load.engine.i.f59186b);
                } else {
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    Vc.e.X(imageView, R.drawable.project_default_icon, context, R.drawable.project_default_icon, com.bumptech.glide.load.engine.i.f59185a, 0, new U.h().y().u(R.drawable.project_default_icon));
                }
            }
        }

        public l() {
        }

        @Override
        public boolean a(File file) {
            return file != null && file.exists();
        }

        @Override
        public String c(boolean isSearching, File file, String ipp) {
            return "";
        }

        @Override
        public F7.j e(File file, String ipp, boolean isGrid) {
            if (file == null || !file.isDirectory()) {
                return null;
            }
            return new C2188b(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(file.getName()) + "/_EDITOR/thumb.png"));
        }

        @Override
        public String f() {
            return C15971b.this.C1();
        }

        @Override
        public boolean h(File file) {
            if (file == null) {
                return false;
            }
            return file.getAbsolutePath().equals(new File(C15971b.this.C1()).getAbsolutePath());
        }

        @Override
        public boolean i(File parent) {
            return parent != null && parent.getAbsolutePath().equals(new File(C15971b.this.C1()).getAbsolutePath());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public List<File> j(File parent) {
            File[] listFiles = parent.listFiles();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            if (listFiles != null) {
                for (File file : listFiles) {
                    steppedArrayList.add(file);
                }
            }
            if (parent.getAbsolutePath().equals(new File(C15971b.this.C1()).getAbsolutePath())) {
                HashMap hashMap = new HashMap();
                for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                    File file2 = (File) steppedArrayList.get(i10);
                    hashMap.put(file2.getAbsolutePath(), m(file2));
                }
                steppedArrayList.sort(new a(hashMap));
            }
            return steppedArrayList;
        }

        public final LocalDateTime m(File file) {
            String str;
            if (file == null || !file.isDirectory()) {
                return LocalDateTime.MIN;
            }
            try {
                ProjectVersion projectVersion = (ProjectVersion) X7.a.m().fromJson(X7.a.z(com.itsmagic.engine.Core.Components.ProjectController.a.Y(file.getName()) + "/_EDITOR/pv.config", C15971b.this.M()), ProjectVersion.class);
                if (projectVersion != null && (str = projectVersion.lastOpen) != null && !str.trim().isEmpty()) {
                    return LocalDateTime.parse(projectVersion.lastOpen, DateTimeFormatter.ofPattern(C12736d.f72115a));
                }
                return LocalDateTime.MIN;
            } catch (DateTimeParseException unused) {
                return LocalDateTime.MIN;
            } catch (Exception unused2) {
                return LocalDateTime.MIN;
            }
        }
    }

    public class m implements c.i {

        public final Runnable f127308a;

        public m(final Runnable val$startCopy) {
            this.f127308a = val$startCopy;
        }

        @Override
        public void a(c.g dialog) {
            dialog.dismiss();
            this.f127308a.run();
        }

        @Override
        public void b(c.g dialog) {
            dialog.dismiss();
        }
    }

    public class n implements Runnable {

        public final String f127310b;

        public final x6.c f127311c;

        public class a implements Runnable {

            public final long f127313b;

            public final String f127314c;

            public a(final long val$sizeBytes, final String val$size) {
                this.f127313b = val$sizeBytes;
                this.f127314c = val$size;
            }

            @Override
            public void run() {
                String str;
                String str2;
                String str3;
                ProjectVersion projectVersion = n.this.f127311c.f127958c;
                if (projectVersion == null || (str3 = projectVersion.appVersionName) == null || str3.trim().isEmpty()) {
                    str = "";
                    str2 = "";
                } else {
                    str = " (" + C12736d.a(n.this.f127311c.f127958c.lastOpen) + ")";
                    str2 = " V" + n.this.f127311c.f127958c.appVersionName;
                }
                n nVar = n.this;
                nVar.f127311c.f127957b = this.f127313b;
                x6.c cVar = C15971b.this.f127237c0;
                n nVar2 = n.this;
                if (cVar != nVar2.f127311c) {
                    return;
                }
                C15971b.this.f127241g0.setText(this.f127314c + str2 + str);
            }
        }

        public n(final String val$projectName, final x6.c val$project) {
            this.f127310b = val$projectName;
            this.f127311c = val$project;
        }

        @Override
        public void run() {
            long j10 = C13696a.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f127310b)));
            N7.c.j0(new a(j10, Tc.b.s(j10)));
        }
    }

    public class o implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f127316a;

        public o(final SweetAlertDialog val$dialog) {
            this.f127316a = val$dialog;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            N7.c.Y();
            this.f127316a.dismissWithAnimation();
        }
    }

    public class p implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f127318a;

        public final String f127319b;

        public p(final SweetAlertDialog val$dialog, final String val$projectName) {
            this.f127318a = val$dialog;
            this.f127319b = val$projectName;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            N7.c.Y();
            this.f127318a.dismissWithAnimation();
            C15971b.this.G1(this.f127319b);
        }
    }

    public class q implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f127321a;

        public final String f127322b;

        public class a implements b8.g {
            public a() {
            }

            @Override
            public void a(Activity act) {
                q qVar = q.this;
                C15971b.this.G1(qVar.f127322b);
            }

            @Override
            public void b(Activity act) {
            }
        }

        public q(final SweetAlertDialog val$dialog, final String val$projectName) {
            this.f127321a = val$dialog;
            this.f127322b = val$projectName;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            N7.c.Y();
            this.f127321a.dismissWithAnimation();
            W7.b.f27308h.f(C15971b.this.A(), new a());
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override
        public void run() {
            C15971b.this.R0();
        }
    }

    public class s extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                C2630i.n("https://www.youtube.com/@ITsMagicWeMadeTheImpossible");
            }
        }

        public class C2189b implements dd.d {
            public C2189b() {
            }

            @Override
            public void onSelected(View v10) {
                C2630i.n("https://www.youtube.com/@TheFuzeITsMagic");
            }
        }

        public s() {
            add(new C12908b(ShaderGenerator.NAME_SPACE_GLOBAL, new a()));
            add(new C12908b("Brasil", new C2189b()));
        }
    }

    public class t implements View.OnTouchListener {
        public t() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class u extends AbstractViewOnClickListenerC12733a {
        public u() {
        }

        @Override
        public void click(View view) {
            C2630i.n("https://chat.whatsapp.com/Ctgdap8YVRs07QfNaGvLLJ");
        }
    }

    public class v extends AbstractViewOnClickListenerC12733a {
        public v() {
        }

        @Override
        public void click(View view) {
            C2630i.n("https://discord.gg/REZhFRRamS");
        }
    }

    public class w extends AbstractViewOnClickListenerC12733a {
        public w() {
        }

        @Override
        public void click(View view) {
            C15971b.this.K1(view);
        }
    }

    public class x extends AbstractC13433d {
        public x(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter) {
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
            if (file != null && file.exists() && file.isDirectory()) {
                C15971b.this.H1(new x6.c(file.getName()), true);
            }
        }

        @Override
        public void v(File file, View v10) {
        }
    }

    public class y implements TextWatcher {
        public y() {
        }

        @Override
        public void afterTextChanged(Editable s10) {
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            if (C15971b.this.f127234Z != null) {
                C15971b.this.f127234Z.B(s10 == null ? "" : s10.toString());
            }
        }
    }

    public C15971b() {
        super(null, Lang.l(Lang.T.PROJECTS));
        this.f127232X = new k();
        this.f127233Y = new l();
        this.f127231B0 = 0.0f;
        f127229E0.set(true);
        super.e1(false);
    }

    public static FloatingPanelArea I1() {
        FloatingPanelArea o10 = C15147a.o(new C15971b(), 1.0f, 1.0f);
        o10.T();
        o10.F1(false);
        o10.E1(true);
        o10.N1(false);
        o10.M0();
        return o10;
    }

    public static boolean z1() {
        return !f127228D0.get();
    }

    public final void A1(String sourceProjectName, String targetProjectName) {
        if (sourceProjectName == null || sourceProjectName.isEmpty()) {
            return;
        }
        String K10 = Tc.b.K(targetProjectName != null ? targetProjectName.trim() : "");
        if (K10.isEmpty()) {
            Z6.i.z1("Ops!", M().getResources().getString(R.string.activity_projectbrowser_nameempty), new i.g());
            return;
        }
        if ("Files".equals(K10)) {
            Z6.i.z1("Ops!", "Files is a reserved name, please try another", new i.g());
            return;
        }
        if (sourceProjectName.equals(K10)) {
            Z6.i.z1("Ops!", "Choose a different project name", new i.g());
            return;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(sourceProjectName));
        if (!file.exists() || !file.isDirectory()) {
            Z6.i.z1("Ops!", "Source project was not found", new i.g());
            return;
        }
        File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(K10));
        j jVar = new j(file2, file, K10);
        if (file2.exists()) {
            Z6.c.z1("Project exists", "A project with this name already exists. Replace it?", new m(jVar));
        } else {
            jVar.run();
        }
    }

    public final x6.c B1() {
        File file;
        List<File> j10 = this.f127233Y.j(new File(C1()));
        if (j10 == null || j10.isEmpty()) {
            return null;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= j10.size()) {
                file = null;
                break;
            }
            file = j10.get(i10);
            if (this.f127232X.a(file)) {
                break;
            }
            i10++;
        }
        if (file == null) {
            return null;
        }
        x6.c cVar = new x6.c(file.getName());
        cVar.f127958c = D1(cVar.f127956a);
        return cVar;
    }

    @Override
    @SuppressLint({"InflateParams"})
    public View C0() {
        View inflate = K8.c.f11004e == c.a.Landscape ? this.f70908j.inflate(R.layout.projects_panel_land, (ViewGroup) null) : this.f70908j.inflate(R.layout.projects_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new t());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        textView.setText("Projects");
        textView.setVisibility(8);
        this.f127238d0 = inflate.findViewById(R.id.topbarView);
        this.f127239e0 = inflate.findViewById(R.id.bottombarView);
        this.f127240f0 = (TextView) inflate.findViewById(R.id.projectTitle);
        this.f127241g0 = (TextView) inflate.findViewById(R.id.projectDescription);
        this.f127243i0 = inflate.findViewById(R.id.accountBtn);
        this.f127251q0 = (TextView) inflate.findViewById(R.id.accountName);
        this.f127247m0 = inflate.findViewById(R.id.deleteBtn);
        this.f127248n0 = inflate.findViewById(R.id.saveBackupBtn);
        this.f127249o0 = inflate.findViewById(R.id.shareBackupBtn);
        this.f127258x0 = (FrameLayout) inflate.findViewById(R.id.cloudProgressBarParent);
        this.f127255u0 = inflate.findViewById(R.id.cloudProgressBar);
        this.f127252r0 = (TextView) inflate.findViewById(R.id.cloudProgressBarText);
        this.f127244j0 = inflate.findViewById(R.id.cloudBtn);
        this.f127245k0 = inflate.findViewById(R.id.cloningBtn);
        this.f127259y0 = (FrameLayout) inflate.findViewById(R.id.cloningProgressBarParent);
        this.f127256v0 = inflate.findViewById(R.id.cloningProgressBar);
        this.f127253s0 = (TextView) inflate.findViewById(R.id.cloningProgressBarText);
        this.f127250p0 = inflate.findViewById(R.id.uploadingBtn);
        this.f127260z0 = (FrameLayout) inflate.findViewById(R.id.uploadingProgressBarParent);
        this.f127257w0 = inflate.findViewById(R.id.uploadingProgressBar);
        this.f127254t0 = (TextView) inflate.findViewById(R.id.uploadingProgressBarText);
        this.f127246l0 = inflate.findViewById(R.id.openProjectBtn);
        inflate.findViewById(R.id.whatsappBtn).setOnClickListener(new u());
        inflate.findViewById(R.id.discordBtn).setOnClickListener(new v());
        inflate.findViewById(R.id.youtubeBtn).setOnClickListener(new w());
        this.f127235a0 = (LinearLayout) inflate.findViewById(R.id.recyclerView);
        this.f127236b0 = (GenericSearchView) inflate.findViewById(R.id.projectSearchView);
        x xVar = new x(A(), this.f127233Y, this.f127232X);
        this.f127234Z = xVar;
        xVar.D(false);
        this.f127234Z.y(true);
        this.f127234Z.z((int) (A().getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_width) * 1.5f));
        this.f127234Z.i(this.f127235a0);
        this.f127234Z.o("/");
        this.f127234Z.B("");
        GenericSearchView genericSearchView = this.f127236b0;
        if (genericSearchView != null) {
            genericSearchView.c(new y());
        }
        x6.c B12 = B1();
        if (B12 != null) {
            H1(B12, true);
        }
        View findViewById = inflate.findViewById(R.id.closeBtn);
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new a());
        } else {
            findViewById.setVisibility(8);
        }
        this.f127246l0.setOnClickListener(new C2172b());
        this.f127247m0.setOnClickListener(new c());
        this.f127248n0.setOnClickListener(new d());
        this.f127249o0.setOnClickListener(new e());
        inflate.findViewById(R.id.newProjectBtn).setOnClickListener(new f());
        inflate.findViewById(R.id.backupsBtn).setOnClickListener(new g());
        this.f127244j0.setOnClickListener(new h());
        f127229E0.set(false);
        N7.c.D().u(this);
        F1();
        this.f127244j0.setVisibility(8);
        return inflate;
    }

    public final String C1() {
        String n10 = W7.b.f27306f.f2458a.n(M());
        if (n10 == null) {
            n10 = "";
        }
        if (n10.endsWith("/")) {
            return n10;
        }
        return n10 + "/";
    }

    public final ProjectVersion D1(String projectName) {
        try {
            ProjectVersion projectVersion = (ProjectVersion) X7.a.m().fromJson(X7.a.z(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/_EDITOR/pv.config", M()), ProjectVersion.class);
            return projectVersion == null ? new ProjectVersion() : projectVersion;
        } catch (Exception unused) {
            return new ProjectVersion();
        }
    }

    public void E1(String projectName) {
        if (d8.j.W()) {
            N7.c.v0(new C3867a("Please wait scripts compiler to finish.", "Por favor espere os scripts terminarem de compilar.").toString());
            return;
        }
        if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
            N7.c.v0("Please wait for the world to finish loading");
            return;
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.T() == null || com.itsmagic.engine.Core.Components.ProjectController.a.T().isEmpty() || com.itsmagic.engine.Core.Components.ProjectController.a.T().equals(projectName)) {
            G1(projectName);
        } else {
            SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(M(), 3);
            sweetAlertDialog.setTitleText(new C3867a("Swap project?", "Abrir outro projeto").toString()).setContentText(M().getResources().getString(R.string.activity_editor_exiteditor_MESSAGE)).setConfirmText(M().getResources().getString(R.string.activity_editor_exiteditor_save)).setConfirmClickListener(new q(sweetAlertDialog, projectName)).setNeutralText(M().getResources().getString(R.string.activity_editor_exiteditor_withoutsave)).setNeutralClickListener(new p(sweetAlertDialog, projectName)).setCancelText(M().getResources().getString(R.string.activity_editor_cancel)).setCancelClickListener(new o(sweetAlertDialog)).show();
        }
    }

    public final void F1() {
        C8.a aVar = W7.b.f27306f;
        UserController userController = aVar.f2461d;
        if (userController == null || !userController.Q()) {
            this.f127251q0.setText("Log in");
            this.f127243i0.setTag(com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.f70702a);
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.g(this.f127243i0);
            return;
        }
        this.f127251q0.setText(aVar.f2461d.L());
        if (aVar.f2461d.T()) {
            this.f127243i0.setTag(null);
            this.f127243i0.setBackgroundResource(R.drawable.projects_panel_button_blue_background);
        } else {
            this.f127243i0.setTag(com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.f70702a);
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.g(this.f127243i0);
        }
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.D().s0(this);
    }

    public final void G1(String projectName) {
        if (App.a() == App.c.Engine) {
            if (!"2.0".equals(C2636o.g(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/_EDITOR/mj.bin")))) {
                if (!UserController.N()) {
                    Z6.i.y1("Ops!", "Project was created using ITsMagic 1.0 and its not compatible");
                    return;
                }
                N7.c.v0("Project was created using ITsMagic 1.0 and its not compatible");
            }
        }
        L5.a.r1(projectName);
    }

    public final void H1(x6.c project, boolean notify) {
        String str;
        String str2;
        String str3;
        String str4;
        x6.c cVar = this.f127237c0;
        if (cVar == null || project == null || (str4 = cVar.f127956a) == null || !str4.equals(project.f127956a)) {
            this.f127245k0.setVisibility(8);
            this.f127246l0.setVisibility(0);
            this.f127250p0.setVisibility(8);
            this.f127237c0 = project;
            if (project != null) {
                String str5 = project.f127956a;
                if (project.f127958c == null) {
                    project.f127958c = D1(str5);
                }
                this.f127240f0.setVisibility(0);
                this.f127241g0.setVisibility(0);
                this.f127239e0.setVisibility(0);
                this.f127240f0.setText(this.f127237c0.f127956a);
                long j10 = project.f127957b;
                if (j10 == 0 || project.f127958c == null) {
                    this.f127241g0.setText("...");
                    O9.b.d(new n(str5, project));
                } else {
                    String s10 = Tc.b.s(j10);
                    ProjectVersion projectVersion = project.f127958c;
                    if (projectVersion == null || (str3 = projectVersion.appVersionName) == null || str3.trim().isEmpty()) {
                        str = "";
                        str2 = "";
                    } else {
                        str = " (" + C12736d.a(project.f127958c.lastOpen) + ")";
                        str2 = " V" + project.f127958c.appVersionName;
                    }
                    this.f127241g0.setText(s10 + str2 + str);
                }
            } else {
                this.f127240f0.setVisibility(8);
                this.f127241g0.setVisibility(8);
                this.f127239e0.setVisibility(4);
            }
            if (!notify || this.f127234Z == null) {
                return;
            }
            this.f127234Z.C(this.f127237c0 != null ? new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f127237c0.f127956a)) : null);
        }
    }

    public final void J1() {
        String str;
        x6.c cVar = this.f127237c0;
        if (cVar == null || (str = cVar.f127956a) == null || str.isEmpty()) {
            return;
        }
        Z6.f.x1("Duplicate project", this.f127237c0.f127956a + "_copy", new i(this.f127237c0.f127956a));
    }

    @Override
    public void K0() {
        super.K0();
        K8.a.h(10, new r());
    }

    public final void K1(View anchor) {
        Y6.a.F1(anchor, C15147a.e.Below, new s());
    }

    @Override
    public EditorPanel k() {
        return new C15971b();
    }

    @Override
    public void m1() {
        super.m1();
        AbstractC13433d abstractC13433d = this.f127234Z;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void o1() {
        super.o1();
        F1();
    }
}
