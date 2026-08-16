package d7;

import Ic.C2630i;
import Ic.C2633l;
import M7.c;
import Z6.f;
import android.app.Activity;
import android.content.Context;
import android.icu.text.DateFormat;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.github.anrwatchdog.ANRWatchDog;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.AreaEditorComponent;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Core.Components.ProjectController.a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import d7.C12881a;
import dd.C12908b;
import gb.C13317e;
import id.C13696a;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import m6.C14186b;
import m6.C14188d;
import n.C14331a;
import n.C14332b;
import n6.C14354a;
import o6.C14485a;
import p5.c;
import q7.C15045a;
import r4.C15147a;
import rc.C15169a;
import t3.C15377a;
import w6.C15971b;
import y4.C16144b;

public class C12881a {

    public static InterfaceC12883c f84200s = null;

    public static final int f84201t = 2;

    public final List<M7.g> f84202a;

    public final List<M7.g> f84203b;

    public final List<M7.g> f84204c;

    public LinearLayout f84205d;

    public LinearLayout f84206e;

    public LinearLayout f84207f;

    public View f84208g;

    public Context f84209h;

    public Activity f84210i;

    public LayoutInflater f84211j;

    public M7.p f84212k;

    public final List<M7.g> f84213l;

    public M7.e f84214m;

    public M7.e f84215n;

    public M7.m f84216o;

    public M7.c f84217p;

    public M7.e f84218q;

    public M7.i f84219r;

    public class C1509a implements x8.b {

        public class RunnableC1510a implements Runnable {
            public RunnableC1510a() {
            }

            @Override
            public void run() {
                try {
                    N7.c.H().y();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        @Override
        public void a() {
            N7.c.j0(new RunnableC1510a());
        }

        @Override
        public void b() {
        }
    }

    public class b implements M7.j {
        public b() {
        }

        @Override
        public void a(View v10, Context context, M7.i tbProgressBar) {
            C15147a.h(v10, new C16144b(), C15147a.e.Below, N7.c.g(240), N7.c.f(240));
        }
    }

    public class c implements M7.f {

        public class C1511a implements dd.d {

            public class RunnableC1512a implements Runnable {

                public class RunnableC1513a implements Runnable {
                    public RunnableC1513a() {
                    }

                    @Override
                    public void run() {
                        C12881a.this.K();
                    }
                }

                public RunnableC1512a() {
                }

                @Override
                public void run() {
                    try {
                        K8.a.l().d().g(GraphicsSettings.e.Lite);
                        K8.a.l().k();
                        N7.c.j0(new RunnableC1513a());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public C1511a() {
            }

            @Override
            public void onSelected(View v10) {
                K8.a.I(new RunnableC1512a());
            }
        }

        public class b implements dd.d {

            public class RunnableC1514a implements Runnable {

                public class RunnableC1515a implements Runnable {
                    public RunnableC1515a() {
                    }

                    @Override
                    public void run() {
                        C12881a.this.K();
                    }
                }

                public RunnableC1514a() {
                }

                @Override
                public void run() {
                    try {
                        K8.a.l().d().g(GraphicsSettings.e.Lite);
                        K8.a.l().k();
                        N7.c.j0(new RunnableC1515a());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public class RunnableC1516b implements Runnable {

                public class RunnableC1517a implements Runnable {
                    public RunnableC1517a() {
                    }

                    @Override
                    public void run() {
                        C12881a.this.K();
                    }
                }

                public RunnableC1516b() {
                }

                @Override
                public void run() {
                    try {
                        K8.a.l().d().g(GraphicsSettings.e.Advanced);
                        K8.a.l().k();
                        N7.c.j0(new RunnableC1517a());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public b() {
            }

            @Override
            public void onSelected(View v10) {
                if (!C14331a.c()) {
                    K8.a.I(new RunnableC1516b());
                } else {
                    Z6.k.w1("https://itsmagic.com.br/index.html", v10, C15147a.e.Below, 300.0f, 450.0f);
                    K8.a.I(new RunnableC1514a());
                }
            }
        }

        public c() {
        }

        @Override
        public void a(View v10, Context context, M7.e tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b("Lite", new C1511a()));
            steppedArrayList.add(new C12908b("Advanced", new b()));
            Y6.a.F1(v10, C15147a.e.Below, steppedArrayList);
        }
    }

    public class d implements M7.q {

        public final Activity f84231a;

        public d(final Activity val$activity) {
            this.f84231a = val$activity;
        }

        @Override
        public void a(M7.o selected, int selectedIndex, Context context) {
            if (selectedIndex == 0) {
                ((EditorActivity) N7.c.o()).i0();
                if (c8.b.f34433b) {
                    c8.b.u(context);
                    return;
                }
                if (c8.b.f34432a && !c8.b.f34435d) {
                    c8.b.u(context);
                    return;
                }
                if (c8.b.f34432a) {
                    return;
                }
                if (!d8.j.W()) {
                    c8.b.t(this.f84231a);
                    return;
                } else {
                    Toast.makeText(context, Lang.l(Lang.T.PLEASE_WAIT_SCRIPTS_COMPILER_FINISH), 0).show();
                    C12881a.this.f84212k.z(0, false);
                    return;
                }
            }
            if (selectedIndex == 1) {
                if (!c8.b.f34432a || c8.b.f34435d) {
                    return;
                }
                c8.b.m(context);
                return;
            }
            if (selectedIndex != 2) {
                return;
            }
            if (c8.b.f34433b) {
                c8.b.w(context);
                return;
            }
            if (c8.b.f34432a || c8.b.f34435d) {
                if (c8.b.f34432a) {
                    c8.b.u(context);
                }
            } else if (!d8.j.W()) {
                c8.b.t(this.f84231a);
            } else {
                C12881a.this.f84212k.z(0, false);
                Toast.makeText(context, Lang.l(Lang.T.PLEASE_WAIT_SCRIPTS_COMPILER_FINISH), 0).show();
            }
        }
    }

    public class e implements c8.c {

        public final Activity f84233a;

        public class RunnableC1518a implements Runnable {
            public RunnableC1518a() {
            }

            @Override
            public void run() {
                C12881a.this.f84212k.z(0, false);
                C12881a.this.f84212k.w(1);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                C12881a.this.f84212k.z(1, false);
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                C12881a.this.f84212k.z(2, false);
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                C12881a.this.f84212k.z(2, false);
                C12881a.this.f84212k.G(1);
            }
        }

        public e(final Activity val$activity) {
            this.f84233a = val$activity;
        }

        @Override
        public void a() {
            this.f84233a.runOnUiThread(new b());
        }

        @Override
        public void b() {
            this.f84233a.runOnUiThread(new d());
        }

        @Override
        public void c() {
            this.f84233a.runOnUiThread(new RunnableC1518a());
        }

        @Override
        public void d() {
            this.f84233a.runOnUiThread(new c());
        }
    }

    public class f implements M7.d {

        public final Handler[] f84239a;

        public f(final Handler[] val$deleteHandler) {
            this.f84239a = val$deleteHandler;
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            C13317e.j(W7.b.f27309i.f31909a.f31910a);
            MousePicker.blockSelectionForMidSecond();
            W7.b.f27308h.h(null);
            tbButton.g();
            Handler[] handlerArr = this.f84239a;
            if (handlerArr[0] != null) {
                handlerArr[0] = null;
            }
        }
    }

    public class g implements M7.d {

        public final M7.c f84241a;

        public final Handler[] f84242b;

        public class RunnableC1519a implements Runnable {
            public RunnableC1519a() {
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < C15169a.L(); i10++) {
                    tc.h n10 = C15169a.n(i10);
                    if (n10 != null && (n10.q() || n10.k())) {
                        g.this.f84241a.g();
                        Handler[] handlerArr = g.this.f84242b;
                        if (handlerArr[0] != null) {
                            handlerArr[0] = null;
                            return;
                        }
                        return;
                    }
                }
                Handler handler = g.this.f84242b[0];
                if (handler != null) {
                    handler.postDelayed(this, 50L);
                }
            }
        }

        public g(final M7.c val$deleteConfirmButton, final Handler[] val$deleteHandler) {
            this.f84241a = val$deleteConfirmButton;
            this.f84242b = val$deleteHandler;
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (this.f84241a.j()) {
                this.f84241a.g();
                Handler[] handlerArr = this.f84242b;
                if (handlerArr[0] != null) {
                    handlerArr[0] = null;
                    return;
                }
                return;
            }
            this.f84241a.p();
            Handler[] handlerArr2 = this.f84242b;
            if (handlerArr2[0] == null) {
                handlerArr2[0] = new Handler();
                this.f84242b[0].postDelayed(new RunnableC1519a(), 50L);
            }
        }
    }

    public class h implements M7.f {
        public h() {
        }

        @Override
        public void a(View v10, Context context, M7.e tbButton) {
            F3.a.q1(v10, C15147a.e.Below);
        }
    }

    public class i implements y.j {

        public final List f84246a;

        public final C15045a f84247b;

        public final Context f84248c;

        public final Activity f84249d;

        public final View f84250e;

        public class C1520a implements dd.d {

            public final String f84251a;

            public class C1521a implements a.k {
                public C1521a() {
                }

                @Override
                public World onFailed() {
                    return null;
                }

                @Override
                public void onSuccess() {
                }
            }

            public C1520a(final String val$finalWorldFile) {
                this.f84251a = val$finalWorldFile;
            }

            @Override
            public void onSelected(View v10) {
                try {
                    com.itsmagic.engine.Engines.Engine.World.a.K(this.f84251a, true, new C1521a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0(e10.getMessage());
                }
            }
        }

        public class b implements dd.d {

            public final Context f84254a;

            public class C1522a implements w5.l {

                public class C1523a implements a.k {
                    public C1523a() {
                    }

                    @Override
                    public World onFailed() {
                        N7.c.v0("Failed");
                        return null;
                    }

                    @Override
                    public void onSuccess() {
                    }
                }

                public C1522a() {
                }

                @Override
                public void a() {
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    com.itsmagic.engine.Engines.Engine.World.a.K(inProjectPath, true, new C1523a());
                }
            }

            public b(final Context val$context) {
                this.f84254a = val$context;
            }

            @Override
            public void onSelected(View v10) {
                w5.c.J(this.f84254a, "Files/Worlds/", new C1522a());
            }
        }

        public class c extends SteppedArrayList<C12908b> {

            public final Activity f84258b;

            public final List f84259c;

            public class C1524a extends SteppedArrayList<C12908b> {

                public class C1525a implements dd.d {

                    public class C1526a implements b8.g {
                        public C1526a() {
                        }

                        @Override
                        public void a(Activity activity) {
                            Toast.makeText(activity, "Project saved!", 0).show();
                        }

                        @Override
                        public void b(Activity activity) {
                        }
                    }

                    public C1525a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_SAVE_PROJECT");
                        W7.b.f27308h.f(c.this.f84258b, new C1526a());
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_OPEN_PROJECT_BUTTON");
                        C15971b.I1();
                    }
                }

                public class C1527c extends LinkedList<C12908b> {

                    public class C1528a implements dd.d {

                        public class C1529a implements a.f {
                            public C1529a() {
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

                        public C1528a() {
                        }

                        @Override
                        public void onSelected(View v10) {
                            C12735c.a("EDITOR_TOP_BAR_CREATE_NEW_BACKUP_BUTTON");
                            com.itsmagic.engine.Core.Components.ProjectController.a.g0(com.itsmagic.engine.Core.Components.ProjectController.a.T(), new C1529a());
                        }
                    }

                    public C1527c() {
                        add(new C12908b(R.drawable.backup, Lang.l(Lang.T.CREATE_NEW_BACKUP), new C1528a()));
                    }
                }

                public class d implements dd.d {

                    public class C1530a implements b8.g {

                        public class RunnableC1531a implements Runnable {

                            public class C1532a implements a.k {
                                public C1532a() {
                                }

                                @Override
                                public World onFailed() {
                                    return null;
                                }

                                @Override
                                public void onSuccess() {
                                }
                            }

                            public RunnableC1531a() {
                            }

                            @Override
                            public void run() {
                                com.itsmagic.engine.Core.Components.ProjectController.a.q0();
                                Vb.a.M();
                                com.itsmagic.engine.Engines.Engine.World.a.J("_EDITOR", "currentScene.scn", false, new C1532a(), true);
                            }
                        }

                        public C1530a() {
                        }

                        @Override
                        public void a(Activity act) {
                            K8.a.I(new RunnableC1531a());
                        }

                        @Override
                        public void b(Activity act) {
                        }
                    }

                    public d() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_RELOAD_PROJECT_BUTTON");
                        W7.b.f27308h.f(c.this.f84258b, new C1530a());
                    }
                }

                public class e implements dd.d {

                    public class RunnableC1533a implements Runnable {
                        public RunnableC1533a() {
                        }

                        @Override
                        public void run() {
                            d8.j.v0();
                            Vb.a.M();
                        }
                    }

                    public e() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_RELOAD_PROJECT_BUTTON");
                        new Thread(new RunnableC1533a()).start();
                    }
                }

                public class f implements dd.d {

                    public class C1534a implements b8.g {

                        public final C15045a f84275a;

                        public class RunnableC1535a implements Runnable {

                            public class RunnableC1536a implements Runnable {

                                public class C1537a implements a.k {
                                    public C1537a() {
                                    }

                                    @Override
                                    public World onFailed() {
                                        return null;
                                    }

                                    @Override
                                    public void onSuccess() {
                                    }
                                }

                                public RunnableC1536a() {
                                }

                                @Override
                                public void run() {
                                    C1534a.this.f84275a.p1();
                                    com.itsmagic.engine.Engines.Engine.World.a.J("_EDITOR", "currentScene.scn", false, new C1537a(), true);
                                }
                            }

                            public RunnableC1535a() {
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
                                a(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R()));
                                K8.a.I(new RunnableC1536a());
                            }
                        }

                        public C1534a(final C15045a val$loading) {
                            this.f84275a = val$loading;
                        }

                        @Override
                        public void a(Activity act) {
                            com.itsmagic.engine.Core.Components.ProjectController.a.q0();
                            Vb.a.M();
                            new Thread(new RunnableC1535a()).start();
                        }

                        @Override
                        public void b(Activity act) {
                        }
                    }

                    public f() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C15045a r12 = C15045a.r1();
                        C12735c.a("EDITOR_TOP_BAR_RELOAD_PROJECT_BUTTON");
                        W7.b.f27308h.f(c.this.f84258b, new C1534a(r12));
                    }
                }

                public class g implements dd.d {

                    public class C1538a implements b8.g {

                        public final C15045a f84281a;

                        public class RunnableC1539a implements Runnable {
                            public RunnableC1539a() {
                            }

                            @Override
                            public void run() {
                                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R());
                                C13696a.g(new File(file.getAbsolutePath() + "/_PROJECT/Gallery/"));
                                C13696a.g(new File(file.getAbsolutePath() + "/_VULKAN"));
                                N7.c.v0("Done");
                                C1538a.this.f84281a.p1();
                            }
                        }

                        public C1538a(final C15045a val$loading) {
                            this.f84281a = val$loading;
                        }

                        @Override
                        public void a(Activity act) {
                            com.itsmagic.engine.Core.Components.ProjectController.a.q0();
                            Vb.a.M();
                            new Thread(new RunnableC1539a()).start();
                        }

                        @Override
                        public void b(Activity act) {
                        }
                    }

                    public g() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C15045a r12 = C15045a.r1();
                        C12735c.a("EDITOR_TOP_BAR_RELOAD_PROJECT_BUTTON");
                        W7.b.f27308h.f(c.this.f84258b, new C1538a(r12));
                    }
                }

                public C1524a() {
                    add(new C12908b(R.drawable.save_v2, Lang.l(Lang.T.SAVE_PROJECT), new C1525a()));
                    add(new C12908b(R.drawable.pack_shadow, Lang.l(Lang.T.OPEN_PROJECT), new b()));
                    add(new C12908b());
                    add(new C12908b("Change world", (List<C12908b>) c.this.f84259c));
                    add(new C12908b());
                    add(new C12908b(Lang.l(Lang.T.BACKUP), new C1527c()));
                    add(new C12908b());
                    add(new C12908b(R.drawable.clean, "Reload project", new d()));
                    add(new C12908b(R.drawable.clean, "Reload resources", new e()));
                    add(new C12908b(R.drawable.clean, "Reimport all textures", new f()));
                    add(new C12908b(R.drawable.clean, "Clear cache", new g()));
                }
            }

            public class b extends SteppedArrayList<C12908b> {

                public class C1540a implements dd.d {
                    public C1540a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.a aVar = new M3.a();
                        aVar.s1("Theme");
                        C15147a.g(v10, aVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class C1541b implements dd.d {
                    public C1541b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        C15147a.g(v10, new M3.a(), C15147a.e.Right, N7.c.g(330), N7.c.f(400));
                    }
                }

                public class C1542c implements dd.d {
                    public C1542c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_WORLD_SETTINGS_BUTTON");
                        float g10 = N7.c.g(380);
                        float f10 = N7.c.f(380);
                        M3.c cVar = new M3.c();
                        cVar.s1("Physics");
                        C15147a.g(v10, cVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class d implements dd.d {
                    public d() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_WORLD_SETTINGS_BUTTON");
                        C15147a.g(v10, new M3.c(), C15147a.e.Right, N7.c.g(380), N7.c.f(380));
                    }
                }

                public class e implements dd.d {
                    public e() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.b bVar = new M3.b();
                        bVar.s1("Graphics");
                        C15147a.g(v10, bVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class f implements dd.d {
                    public f() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.b bVar = new M3.b();
                        bVar.s1("Decals");
                        C15147a.g(v10, bVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class g implements dd.d {
                    public g() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.b bVar = new M3.b();
                        bVar.s1("Physics");
                        C15147a.g(v10, bVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class h implements dd.d {
                    public h() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        C15147a.g(v10, new M3.b(), C15147a.e.Right, N7.c.g(330), N7.c.f(400));
                    }
                }

                public class C1543i implements dd.d {
                    public C1543i() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.a aVar = new M3.a();
                        aVar.s1("Graphics");
                        C15147a.g(v10, aVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class j implements dd.d {
                    public j() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.a aVar = new M3.a();
                        aVar.s1("3D Editor");
                        C15147a.g(v10, aVar, C15147a.e.Right, g10, f10);
                    }
                }

                public class k implements dd.d {
                    public k() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON");
                        float g10 = N7.c.g(330);
                        float f10 = N7.c.f(400);
                        M3.a aVar = new M3.a();
                        aVar.s1("Behaviours");
                        C15147a.g(v10, aVar, C15147a.e.Right, g10, f10);
                    }
                }

                public b() {
                    add(new C12908b("WORLD SETTINGS"));
                    add(new C12908b(R.drawable.small_circle, "Physics", new C1542c()));
                    add(new C12908b(R.drawable.small_circle, "More settings", new d()));
                    add(new C12908b("PROJECT SETTINGS"));
                    add(new C12908b(R.drawable.small_circle, "Graphics", new e()));
                    add(new C12908b(R.drawable.small_circle, "Decals", new f()));
                    add(new C12908b(R.drawable.small_circle, "Physics", new g()));
                    add(new C12908b(R.drawable.small_circle, "More settings", new h()));
                    add(new C12908b("EDITOR SETTINGS"));
                    add(new C12908b(R.drawable.small_circle, "Graphics", new C1543i()));
                    add(new C12908b(R.drawable.small_circle, "3D Editor", new j()));
                    add(new C12908b(R.drawable.small_circle, "Behaviours", new k()));
                    add(new C12908b(R.drawable.small_circle, "Theme", new C1540a()));
                    add(new C12908b(R.drawable.small_circle, "More settings", new C1541b()));
                }
            }

            public class C1544c extends SteppedArrayList<C12908b> {

                public class C1545a implements dd.d {
                    public C1545a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        EditorSettings.a().orientation = EditorSettings.Settings.b.Landscape;
                        EditorSettings.e();
                        N7.c.c(EditorSettings.a().orientation);
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        EditorSettings.a().orientation = EditorSettings.Settings.b.Portrait;
                        EditorSettings.e();
                        N7.c.c(EditorSettings.a().orientation);
                    }
                }

                public class C1546c implements dd.d {
                    public C1546c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        EditorSettings.a().orientation = EditorSettings.Settings.b.Unlock;
                        EditorSettings.e();
                        N7.c.c(EditorSettings.a().orientation);
                    }
                }

                public C1544c() {
                    add(new C12908b("Lock landscape", new C1545a()));
                    add(new C12908b("Lock portrait", new b()));
                    add(new C12908b("Unlock", new C1546c()));
                }
            }

            public class d extends SteppedArrayList<C12908b> {

                public class C1547a implements dd.d {
                    public C1547a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EXPORT_OFFLINE_APK_PROJECT_BUTTON");
                        p5.c.x1(c.f.APK);
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_EXPORT_OFFLINE_AAB_PROJECT_BUTTON");
                        p5.c.x1(c.f.AAB);
                    }
                }

                public d() {
                    add(new C12908b(R.drawable.apk_builder_v2, "Build APK - Offline", new C1547a()));
                    add(new C12908b(R.drawable.aab, "Build AAB - Offline", new b()));
                }
            }

            public class e extends LinkedList<C12908b> {

                public class C1548a implements dd.d {
                    public C1548a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_COMPONENT_STATISTIC_PROFILER_BUTTON");
                        C14485a.N1();
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_LP_PROFILER_BUTTON");
                        q6.f.P1();
                    }
                }

                public class C1549c implements dd.d {
                    public C1549c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_UI_PROFILER_BUTTON");
                        u6.l.M1();
                    }
                }

                public class d implements dd.d {

                    public class C1550a implements f.g {

                        public class RunnableC1551a implements Runnable {

                            public final int f84309b;

                            public RunnableC1551a(final int val$milis) {
                                this.f84309b = val$milis;
                            }

                            @Override
                            public void run() {
                                N7.c.v0("Tolerance:" + this.f84309b + DateFormat.MINUTE_SECOND);
                                new ANRWatchDog(this.f84309b).start();
                            }
                        }

                        public C1550a() {
                        }

                        @Override
                        public void c(String text) {
                            K8.a.I(new RunnableC1551a(Nc.b.x1(text, 0)));
                        }

                        @Override
                        public void onCancel() {
                        }
                    }

                    public d() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        Z6.f.x1("Tolerance in mili seconds", "1600", new C1550a());
                    }
                }

                public class C1552e implements dd.d {

                    public class C1553a implements f.g {

                        public class RunnableC1554a implements Runnable {

                            public final int f84313b;

                            public RunnableC1554a(final int val$milis) {
                                this.f84313b = val$milis;
                            }

                            @Override
                            public void run() {
                                N7.c.v0("Tolerance:" + this.f84313b + DateFormat.MINUTE_SECOND);
                                new ANRWatchDog(this.f84313b).start();
                            }
                        }

                        public C1553a() {
                        }

                        @Override
                        public void c(String text) {
                            N7.c.j0(new RunnableC1554a(Nc.b.x1(text, 0)));
                        }

                        @Override
                        public void onCancel() {
                        }
                    }

                    public C1552e() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        Z6.f.x1("Tolerance in mili seconds", "1600", new C1553a());
                    }
                }

                public class f implements dd.d {
                    public f() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_TERMINAL_BUTTON");
                        C15147a.h(v10, new J4.d(), C15147a.e.Right, N7.c.g(260), N7.c.f(280));
                    }
                }

                public class g implements dd.d {
                    public g() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        w5.o.y1();
                    }
                }

                public class h implements dd.d {
                    public h() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_FPS_BUTTON");
                        C14186b.A1();
                    }
                }

                public class C1555i implements dd.d {
                    public C1555i() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_STATISTIC_PROFILER_BUTTON");
                        C15147a.g(v10, new C14188d(), C15147a.e.Right, N7.c.g(170), N7.c.f(DisplayMetrics.DENSITY_360));
                    }
                }

                public class j implements dd.d {
                    public j() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_CPU_PROFILER_BUTTON");
                        C14354a.D1();
                    }
                }

                public class k implements dd.d {
                    public k() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_PROFILER_BUTTON");
                        p6.d.M1();
                    }
                }

                public class l implements dd.d {
                    public l() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_PROFILER_BUTTON");
                        com.itsmagic.engine.Activities.Editor.Panels.Profiler.MemoryProfiler.a.K1();
                    }
                }

                public class m implements dd.d {
                    public m() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_NATIVE_MEMORY_PROFILER_BUTTON");
                        s6.e.I1();
                    }
                }

                public class n implements dd.d {
                    public n() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_RUNNABLE_PROFILER_BUTTON");
                        t6.j.Y1();
                    }
                }

                public e() {
                    add(new C12908b(R.drawable.terminal, Lang.l(Lang.T.TERMINAL), new f()));
                    add(new C12908b(R.drawable.restore, "Unused Files", new g()));
                    if (EditorSettings.a().enableProfilingToolsV2) {
                        add(new C12908b());
                        add(new C12908b(R.drawable.fps, "FPS Meter", new h()));
                        add(new C12908b(R.drawable.open_doc, "Resource statistic", new C1555i()));
                        add(new C12908b(R.drawable.profiler_1, Lang.l(Lang.T.CPU_PANEL_MENU), new j()));
                        add(new C12908b());
                        add(new C12908b(R.drawable.profiler_1, Lang.l(Lang.T.PROFILER), new k()));
                        add(new C12908b(R.drawable.profiler_1, "Memory profiler", new l()));
                        add(new C12908b(R.drawable.profiler_1, "Native memory profiler", new m()));
                        add(new C12908b(R.drawable.profiler_1, "Runnable profiler", new n()));
                        add(new C12908b(R.drawable.profiler_1, "Component profiler", new C1548a()));
                        add(new C12908b());
                        add(new C12908b(R.drawable.profiler_1, "LP profiler", new b()));
                    }
                    if (C15377a.f109719g.booleanValue()) {
                        return;
                    }
                    add(new C12908b(R.drawable.profiler_1, "UI Framerate profiler", new C1549c()));
                    add(new C12908b(R.drawable.interrogation, "Enable ANR Watch dog", new d()));
                    add(new C12908b(R.drawable.interrogation, "Enable UI ANR Watch dog", new C1552e()));
                }
            }

            public class f extends SteppedArrayList<C12908b> {

                public class C1556a implements dd.d {
                    public C1556a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_CLASS_DOCUMENTATION_BUTTON");
                        E4.d.F1();
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_APP_DOCUMENTATION_BUTTON");
                        C2630i.n("https://itsmagic.com.br/documentation/docs/intro");
                    }
                }

                public class C1557c implements dd.d {
                    public C1557c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C12735c.a("EDITOR_TOP_BAR_LEGAL_INFORMATION_BUTTON");
                        N7.c.a0();
                    }
                }

                public f() {
                    add(new C12908b(R.drawable.java_logo, "Class documentation", new C1556a()));
                    add(new C12908b(R.drawable.fire, Lang.l(Lang.T.APP_DOCUMENTATION), new b()));
                    add(new C12908b(R.drawable.open_doc, Lang.l(Lang.T.LEGAL_INFORMATION), new C1557c()));
                }
            }

            public c(final Activity val$activity, final List val$worlds) {
                this.f84258b = val$activity;
                this.f84259c = val$worlds;
                add(new C12908b(R.drawable.pack_shadow, "Project", new C1524a()));
                add(new C12908b(R.drawable.generic_settings, "Settings", new b()));
                add(new C12908b(R.drawable.orientation_icon, "Editor", new C1544c()));
                add(new C12908b(R.drawable.apk_builder_v2, "Export", new d()));
                add(new C12908b(R.drawable.tools, Lang.l(Lang.T.TOOLS), new e()));
                add(new C12908b(R.drawable.open_doc, "Documentation", new f()));
            }
        }

        public i(final List val$worlds, final C15045a val$loading, final Context val$context, final Activity val$activity, final View val$v) {
            this.f84246a = val$worlds;
            this.f84247b = val$loading;
            this.f84248c = val$context;
            this.f84249d = val$activity;
            this.f84250e = val$v;
        }

        @Override
        public void a(File file) {
            int i10;
            String o10 = Tc.b.o(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
            if (com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
                if (Tc.b.o(com.itsmagic.engine.Engines.Engine.World.a.f80030c.folder + "/" + com.itsmagic.engine.Engines.Engine.World.a.f80030c.fileName).equals(o10)) {
                    i10 = Theme.i(Theme.T.PRIMARY);
                    this.f84246a.add(new C12908b(R.drawable.world_mono_color, Tc.b.w(file.getName(), true), i10, new C1520a(o10)));
                }
            }
            i10 = -1;
            this.f84246a.add(new C12908b(R.drawable.world_mono_color, Tc.b.w(file.getName(), true), i10, new C1520a(o10)));
        }

        public final void c(C15045a c15045a, List list, Context context, Activity activity, View view) {
            c15045a.p1();
            list.add(new C12908b());
            list.add(new C12908b("New world", new b(context)));
            Y6.a.F1(view, C15147a.e.Below, new c(activity, list));
        }

        @Override
        public void onFinish() {
            final C15045a c15045a = this.f84247b;
            final List list = this.f84246a;
            final Context context = this.f84248c;
            final Activity activity = this.f84249d;
            final View view = this.f84250e;
            N7.c.j0(new Runnable() {
                @Override
                public final void run() {
                    C12881a.i.this.c(c15045a, list, context, activity, view);
                }
            });
        }
    }

    public class j extends SteppedArrayList<C12908b> {

        public final GameObject f84328b;

        public class C1558a implements dd.d {
            public C1558a() {
            }

            @Override
            public void onSelected(View v10) {
                C12735c.a("NEW_OBJECT_EMPTY");
                com.itsmagic.engine.Engines.Engine.World.b.n(j.this.f84328b);
            }
        }

        public j(final GameObject val$parent) {
            this.f84328b = val$parent;
            add(I3.a.e(val$parent));
            add(new C12908b("New group", new C1558a()));
            add(I3.a.b(val$parent));
            add(new C12908b(Lang.l(Lang.T.PRIMITIVES), I3.a.j(val$parent)));
            add(new C12908b(Lang.l(Lang.T.NPC), I3.a.h(val$parent)));
            add(new C12908b("Land", I3.a.f(val$parent)));
            add(new C12908b("UI", I3.a.l(val$parent)));
            if (val$parent == null) {
                add(new C12908b("Voxel", I3.a.n()));
            }
            add(new C12908b("Effects", I3.a.d(val$parent)));
            add(new C12908b(Lang.l(Lang.T.CREATE_OBJECT_LIGHT), I3.a.g(val$parent)));
            add(new C12908b(Lang.l(Lang.T.CREATE_OBJECT_SOUND), I3.a.k(val$parent)));
        }
    }

    public class k implements dd.d {

        public final String f84330a;

        public final String f84331b;

        public class C1559a implements Y5.e {
            public C1559a() {
            }

            @Override
            public boolean a(Package pack) {
                return !pack.isTemplate;
            }
        }

        public k(final String val$SearchTittle, final String val$searchText) {
            this.f84330a = val$SearchTittle;
            this.f84331b = val$searchText;
        }

        @Override
        public void onSelected(View v10) {
            Y5.d.Z1(this.f84330a, this.f84331b, new C1559a());
        }
    }

    public class l implements InterfaceC12883c {

        public final Activity f84333a;

        public class RunnableC1560a implements Runnable {

            public final M7.g f84335b;

            public RunnableC1560a(final M7.g val$tbElement) {
                this.f84335b = val$tbElement;
            }

            @Override
            public void run() {
                if (C12881a.this.f84202a.contains(this.f84335b)) {
                    return;
                }
                C12881a.this.f84202a.add(this.f84335b);
                C12881a.this.r(this.f84335b);
            }
        }

        public class b implements Runnable {

            public final M7.g f84337b;

            public b(final M7.g val$tbElement) {
                this.f84337b = val$tbElement;
            }

            @Override
            public void run() {
                if (C12881a.this.f84203b.contains(this.f84337b)) {
                    return;
                }
                C12881a.this.f84203b.add(this.f84337b);
                C12881a.this.u(this.f84337b);
            }
        }

        public class c implements Runnable {

            public final M7.g f84339b;

            public c(final M7.g val$tbElement) {
                this.f84339b = val$tbElement;
            }

            @Override
            public void run() {
                if (C12881a.this.f84202a.contains(this.f84339b)) {
                    C12881a.this.f84202a.remove(this.f84339b);
                    C12881a.this.l(this.f84339b);
                }
                if (C12881a.this.f84203b.contains(this.f84339b)) {
                    C12881a.this.f84203b.remove(this.f84339b);
                    C12881a.this.m(this.f84339b);
                }
            }
        }

        public l(final Activity val$activity) {
            this.f84333a = val$activity;
        }

        @Override
        public int a() {
            return 4;
        }

        @Override
        public void b(M7.g tbElement) {
            this.f84333a.runOnUiThread(new RunnableC1560a(tbElement));
        }

        @Override
        public void c(M7.g tbElement) {
            this.f84333a.runOnUiThread(new b(tbElement));
        }

        @Override
        public int d() {
            return Nc.b.l0(4.0f, N7.c.t());
        }

        @Override
        public void e(M7.g tbElement) {
            this.f84333a.runOnUiThread(new c(tbElement));
        }
    }

    public class m implements dd.d {

        public final String f84341a;

        public final String f84342b;

        public final String f84343c;

        public class C1561a implements Y5.e {
            public C1561a() {
            }

            @Override
            public boolean a(Package pack) {
                return !pack.isTemplate;
            }
        }

        public m(final String val$SearchTittle, final String val$searchText, final String val$searchTag) {
            this.f84341a = val$SearchTittle;
            this.f84342b = val$searchText;
            this.f84343c = val$searchTag;
        }

        @Override
        public void onSelected(View v10) {
            Y5.d.a2(this.f84341a, this.f84342b, this.f84343c, new C1561a());
        }
    }

    public class n implements dd.d {

        public final String f84345a;

        public final String f84346b;

        public class C1562a implements Y5.e {
            public C1562a() {
            }

            @Override
            public boolean a(Package pack) {
                return !pack.isTemplate;
            }
        }

        public n(final String val$SearchTittle, final String val$searchText) {
            this.f84345a = val$SearchTittle;
            this.f84346b = val$searchText;
        }

        @Override
        public void onSelected(View v10) {
            Y5.d.Z1(this.f84345a, this.f84346b, new C1562a());
        }
    }

    public class o implements dd.d {

        public final String f84348a;

        public final String f84349b;

        public final String f84350c;

        public class C1563a implements Y5.e {
            public C1563a() {
            }

            @Override
            public boolean a(Package pack) {
                return !pack.isTemplate;
            }
        }

        public o(final String val$SearchTittle, final String val$searchText, final String val$searchTag) {
            this.f84348a = val$SearchTittle;
            this.f84349b = val$searchText;
            this.f84350c = val$searchTag;
        }

        @Override
        public void onSelected(View v10) {
            Y5.d.a2(this.f84348a, this.f84349b, this.f84350c, new C1563a());
        }
    }

    public static class p {

        public static final int[] f84352a;

        static {
            int[] iArr = new int[AreaEditorComponent.s.values().length];
            f84352a = iArr;
            try {
                iArr[AreaEditorComponent.s.EditMode.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f84352a[AreaEditorComponent.s.BakePreview.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class q implements M7.d {
        public q() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            C12881a.B(v10, context);
        }
    }

    public class r implements M7.d {

        public final Activity f84354a;

        public class C1564a implements b8.g {
            public C1564a() {
            }

            @Override
            public void a(Activity activity) {
                Toast.makeText(activity, "Project saved!", 0).show();
            }

            @Override
            public void b(Activity activity) {
            }
        }

        public r(final Activity val$activity) {
            this.f84354a = val$activity;
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            C12735c.a("EDITOR_TOP_BAR_SAVE_PROJECT");
            W7.b.f27308h.f(this.f84354a, new C1564a());
        }
    }

    public class s implements M7.d {
        public s() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            Y6.a.F1(v10, C15147a.e.Below, C12881a.n(null));
        }
    }

    public class t implements M7.d {
        public t() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            Z5.f.n2();
        }
    }

    public class u implements M7.n {

        public class RunnableC1565a implements Runnable {
            public RunnableC1565a() {
            }

            @Override
            public void run() {
                AreaEditorComponent areaEditorComponent = (AreaEditorComponent) com.itsmagic.engine.Engines.Engine.World.a.k(AreaEditorComponent.class);
                if (areaEditorComponent != null) {
                    areaEditorComponent.generateBake();
                }
            }
        }

        public u() {
        }

        @Override
        public void a(View v10, Context context, M7.m tbButton) {
            K8.a.I(new RunnableC1565a());
        }
    }

    public class v implements M7.d {

        public class C1566a implements G4.f {

            public final AreaEditorComponent f84362a;

            public final Context f84363b;

            public C1566a(final AreaEditorComponent val$aec, final Context val$context) {
                this.f84362a = val$aec;
                this.f84363b = val$context;
            }

            @Override
            public void b(G4.e entriesClassPanel) {
                entriesClassPanel.f7555b0 = true;
                entriesClassPanel.v1(this.f84362a.getInspectorEntries(this.f84363b));
            }

            @Override
            public void c(G4.e entriesClassPanel) {
                entriesClassPanel.v1(this.f84362a.getInspectorEntries(this.f84363b));
            }

            @Override
            public boolean d() {
                return true;
            }

            @Override
            public void f(G4.e entriesClassPanel) {
                entriesClassPanel.v1(this.f84362a.getInspectorEntries(this.f84363b));
            }
        }

        public v() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            AreaEditorComponent areaEditorComponent = (AreaEditorComponent) com.itsmagic.engine.Engines.Engine.World.a.k(AreaEditorComponent.class);
            if (areaEditorComponent != null) {
                G4.e.x1("Area settings", 200, 260, new C1566a(areaEditorComponent, context));
            }
        }
    }

    public class w implements M7.f {

        public class C1567a implements dd.d {

            public class RunnableC1568a implements Runnable {

                public class RunnableC1569a implements Runnable {
                    public RunnableC1569a() {
                    }

                    @Override
                    public void run() {
                        C12881a.this.K();
                    }
                }

                public RunnableC1568a() {
                }

                @Override
                public void run() {
                    try {
                        AreaEditorComponent areaEditorComponent = (AreaEditorComponent) com.itsmagic.engine.Engines.Engine.World.a.k(AreaEditorComponent.class);
                        if (areaEditorComponent != null) {
                            areaEditorComponent.setMode(AreaEditorComponent.s.EditMode);
                        }
                        N7.c.j0(new RunnableC1569a());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public C1567a() {
            }

            @Override
            public void onSelected(View v10) {
                K8.a.I(new RunnableC1568a());
            }
        }

        public class b implements dd.d {

            public class RunnableC1570a implements Runnable {

                public class RunnableC1571a implements Runnable {
                    public RunnableC1571a() {
                    }

                    @Override
                    public void run() {
                        C12881a.this.K();
                    }
                }

                public RunnableC1570a() {
                }

                @Override
                public void run() {
                    try {
                        AreaEditorComponent areaEditorComponent = (AreaEditorComponent) com.itsmagic.engine.Engines.Engine.World.a.k(AreaEditorComponent.class);
                        if (areaEditorComponent != null) {
                            areaEditorComponent.setMode(AreaEditorComponent.s.BakePreview);
                        }
                        N7.c.j0(new RunnableC1571a());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public b() {
            }

            @Override
            public void onSelected(View v10) {
                K8.a.I(new RunnableC1570a());
            }
        }

        public w() {
        }

        @Override
        public void a(View v10, Context context, M7.e tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C12908b("Edit mode", new C1567a()));
            steppedArrayList.add(new C12908b("Preview", new b()));
            Y6.a.F1(v10, C15147a.e.Below, steppedArrayList);
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new C1509a());
    }

    public C12881a(Activity activity) {
        LinkedList linkedList = new LinkedList();
        this.f84202a = linkedList;
        LinkedList linkedList2 = new LinkedList();
        this.f84203b = linkedList2;
        this.f84204c = new LinkedList();
        this.f84213l = new SteppedArrayList();
        this.f84210i = activity;
        this.f84209h = activity;
        f84200s = new l(activity);
        k(activity);
        linkedList.add(new M7.k(Nc.b.k0(8.0f)));
        q qVar = new q();
        c.b bVar = c.b.Disconnected;
        linkedList.add(new M7.c(R.drawable.dot_menu, qVar, bVar, this.f84209h));
        linkedList.add(new M7.k(Nc.b.l0(0.0f, this.f84209h)));
        linkedList.add(new M7.c(R.drawable.save_v2, new r(activity), bVar, this.f84209h));
        linkedList.add(new M7.k(Nc.b.l0(0.0f, this.f84209h)));
        v(activity);
        o(activity);
        linkedList.add(new M7.c(R.drawable.new_object, new s(), bVar, this.f84209h));
        linkedList.add(new M7.k(Nc.b.l0(0.0f, this.f84209h)));
        if (C14332b.e()) {
            linkedList.add(new M7.c(R.drawable.store, new t(), c.b.Left, this.f84209h));
            linkedList.add(com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g.a2());
        }
        linkedList.add(new M7.k(Nc.b.l0(0.0f, this.f84209h)));
        M7.m mVar = new M7.m(R.drawable.bake_0, "Bake", new u(), this.f84209h);
        this.f84216o = mVar;
        linkedList2.add(mVar);
        this.f84216o.g();
        M7.c cVar = new M7.c(R.drawable.generic_settings, new v(), this.f84209h);
        this.f84217p = cVar;
        linkedList2.add(cVar);
        this.f84217p.g();
        M7.e a02 = new M7.e(R.drawable.edit_script_2, "Edit mode", new w(), activity).a0(Theme.T.HIGH_ICON_TINT);
        this.f84218q = a02;
        linkedList2.add(a02);
        J();
        M7.i iVar = new M7.i("Baking", 0.5f, new b(), this.f84209h);
        this.f84219r = iVar;
        linkedList2.add(iVar);
        this.f84219r.g();
    }

    public static void B(View v10, Context context) {
        if (C14332b.a(v10, context)) {
            return;
        }
        Activity o10 = N7.c.o();
        y.i(false, ".world", new i(new SteppedArrayList(), C15045a.t1(v10, C15147a.e.Below), context, o10, v10));
    }

    public static C12908b C(int icon, String tittle, String searchText) {
        return D(icon, tittle, tittle + " " + Lang.l(Lang.T.OBJECTS), searchText);
    }

    public static C12908b D(int icon, String tittle, String SearchTittle, String searchText) {
        return new C12908b(icon, tittle, new k(SearchTittle, searchText));
    }

    public static C12908b E(int icon, String tittle, String SearchTittle, String searchText, String searchTag) {
        return new C12908b(icon, tittle, new m(SearchTittle, searchText, searchTag));
    }

    public static C12908b F(String tittle, String searchText) {
        return G(tittle, tittle + " " + Lang.l(Lang.T.OBJECTS), searchText);
    }

    public static C12908b G(String tittle, String SearchTittle, String searchText) {
        return new C12908b(tittle, new n(SearchTittle, searchText));
    }

    public static C12908b H(String tittle, String SearchTittle, String searchText, String searchTag) {
        return new C12908b(tittle, new o(SearchTittle, searchText, searchTag));
    }

    public static C12908b i(String name) {
        String lowerCase = name.toLowerCase(Locale.ROOT);
        String d10 = Tc.b.d(lowerCase);
        return H(d10, "Animated Models - " + d10, lowerCase, "skinned models");
    }

    public static List<C12908b> n(GameObject parent) {
        return new j(parent);
    }

    public static M7.k s(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }

    public void A() {
        I();
    }

    public final void I() {
        M7.c cVar;
        boolean y10 = com.itsmagic.engine.Engines.Engine.World.a.y();
        J();
        AreaEditorComponent areaEditorComponent = (AreaEditorComponent) com.itsmagic.engine.Engines.Engine.World.a.k(AreaEditorComponent.class);
        if (areaEditorComponent != null) {
            M7.e eVar = this.f84218q;
            if (eVar != null) {
                eVar.o(y10 && !areaEditorComponent.isBaking());
            }
        } else {
            M7.e eVar2 = this.f84218q;
            if (eVar2 != null) {
                eVar2.o(false);
            }
        }
        if (this.f84216o == null || (cVar = this.f84217p) == null || this.f84219r == null) {
            return;
        }
        if (!y10) {
            cVar.o(false);
            this.f84216o.o(false);
            this.f84219r.o(false);
            return;
        }
        if (areaEditorComponent != null) {
            if (!areaEditorComponent.isBaking()) {
                this.f84217p.o(true);
                this.f84216o.o(true);
                this.f84219r.o(false);
                return;
            }
            this.f84217p.o(false);
            this.f84216o.o(false);
            this.f84219r.o(true);
            this.f84219r.b0(areaEditorComponent.getBakeProgress());
            this.f84219r.W(areaEditorComponent.getBakeStep() + " " + Nc.b.r0(areaEditorComponent.getBakeProgress() * 100.0f, 2) + ve.j.f121589a);
        }
    }

    public final void J() {
        AreaEditorComponent areaEditorComponent;
        if (this.f84218q == null || (areaEditorComponent = (AreaEditorComponent) com.itsmagic.engine.Engines.Engine.World.a.k(AreaEditorComponent.class)) == null) {
            return;
        }
        int i10 = p.f84352a[areaEditorComponent.getMode().ordinal()];
        if (i10 == 1) {
            this.f84218q.h0("Edit mode");
        } else {
            if (i10 != 2) {
                return;
            }
            this.f84218q.h0("Preview");
        }
    }

    public final void K() {
        if (this.f84215n != null) {
            if (GraphicsSettings.d()) {
                this.f84215n.h0("Adv");
            } else {
                this.f84215n.h0("Lite");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f A[LOOP:0: B:22:0x004f->B:24:0x0057, LOOP_START, PHI: r2
  0x004f: PHI (r2v3 int) = (r2v0 int), (r2v4 int) binds: [B:21:0x004d, B:24:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0065 A[LOOP:1: B:28:0x0065->B:30:0x006d, LOOP_START, PHI: r2
  0x0065: PHI (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:21:0x004d, B:30:0x006d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void L() {
        boolean z10;
        World world;
        M7.e eVar;
        I();
        boolean z11 = true;
        int i10 = 0;
        if (C14332b.c() && this.f84214m != null) {
            if (d8.j.W() || !d8.j.V()) {
                this.f84214m.h0(d8.j.f84394C.trim());
                this.f84214m.p();
                z10 = false;
                world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
                if (world == null && world.isArea) {
                    z10 = false;
                } else {
                    z11 = false;
                }
                eVar = this.f84215n;
                if (eVar != null) {
                    if (z11) {
                        eVar.g();
                    } else {
                        eVar.p();
                    }
                }
                if (z10) {
                    while (i10 < this.f84213l.size()) {
                        this.f84213l.get(i10).g();
                        i10++;
                    }
                    return;
                } else {
                    while (i10 < this.f84213l.size()) {
                        this.f84213l.get(i10).p();
                        i10++;
                    }
                    return;
                }
            }
            this.f84214m.g();
        }
        z10 = true;
        world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world == null) {
        }
        z11 = false;
        eVar = this.f84215n;
        if (eVar != null) {
        }
        if (z10) {
        }
    }

    public final void j() {
        View view = this.f84208g;
        if (view != null) {
            view.setBackgroundColor(Theme.i(Theme.T.BACKGROUND));
        }
    }

    public final void k(Activity activity) {
        M7.e a02 = new M7.e(R.drawable.vulkan_icon, "", new c(), activity).a0(Theme.T.HIGH_ICON_TINT);
        this.f84215n = a02;
        this.f84204c.add(a02);
        K();
    }

    public final void l(M7.g tbElement) {
        tbElement.l(this.f84205d);
    }

    public final void m(M7.g tbElement) {
        tbElement.l(this.f84206e);
    }

    public final void o(Activity activity) {
        if (C14332b.c()) {
            M7.e eVar = new M7.e(R.drawable.topbar_building_v5, "", new h(), N7.c.t());
            this.f84214m = eVar;
            eVar.V(true);
            this.f84214m.g();
            this.f84203b.add(this.f84214m);
        }
    }

    public final void p() {
        Handler[] handlerArr = new Handler[1];
        M7.c cVar = new M7.c(R.drawable.check_mark, new f(handlerArr), c.b.Right, this.f84209h);
        cVar.T(R.color.interface_cv_buttons_green_selected);
        cVar.T(R.color.mp_item_cancel1);
        cVar.g();
        this.f84202a.add(new M7.c(R.drawable.bin_nopadding_v2, new g(cVar, handlerArr), c.b.Disconnected, this.f84209h));
        this.f84202a.add(cVar);
    }

    public final void q() {
        this.f84205d.removeAllViews();
        this.f84206e.removeAllViews();
        for (int i10 = 0; i10 < this.f84202a.size(); i10++) {
            r(this.f84202a.get(i10));
        }
        for (int i11 = 0; i11 < this.f84203b.size(); i11++) {
            u(this.f84203b.get(i11));
        }
        for (int i12 = 0; i12 < this.f84204c.size(); i12++) {
            w(this.f84204c.get(i12));
        }
        if (C14332b.f()) {
            this.f84212k.w(1);
        }
    }

    public final void r(M7.g element) {
        element.a(this.f84205d, this.f84209h, this.f84211j);
        element.n(t(this.f84205d).e());
    }

    public final M7.k t(LinearLayout parent) {
        return s(this.f84209h, parent, this.f84211j);
    }

    public final void u(M7.g element) {
        element.a(this.f84206e, this.f84209h, this.f84211j);
        element.n(t(this.f84206e).e());
    }

    public final void v(Activity activity) {
        if (C14332b.f()) {
            M7.p pVar = new M7.p(this.f84209h, new d(activity));
            this.f84212k = pVar;
            pVar.s(new M7.o(R.drawable.stop_btn, c.b.Left, this.f84209h));
            this.f84212k.s(new M7.o(R.drawable.pause_btn, c.b.Middle, this.f84209h));
            this.f84212k.s(new M7.o(R.drawable.play_btn, c.b.Right, this.f84209h));
            this.f84203b.add(this.f84212k);
            if (c8.b.k()) {
                this.f84212k.z(2, false);
            } else if (c8.b.i()) {
                this.f84212k.z(1, false);
            }
            c8.b.q(new c8.d(this, new e(activity)));
            this.f84213l.add(this.f84212k);
        }
    }

    public final void w(M7.g element) {
        element.a(this.f84207f, this.f84209h, this.f84211j);
        element.n(t(this.f84206e).e());
    }

    public void x(LinearLayout leftContent, LinearLayout middleContent, LinearLayout rightContent, Activity activity) {
        this.f84210i = activity;
        this.f84205d = leftContent;
        this.f84206e = middleContent;
        this.f84207f = rightContent;
        this.f84209h = activity;
        this.f84211j = LayoutInflater.from(activity);
        this.f84208g = activity.findViewById(R.id.editor_topbar);
        j();
        q();
    }

    public void y() {
        K();
    }

    public void z() {
        j();
        for (int i10 = 0; i10 < this.f84202a.size(); i10++) {
            M7.g gVar = this.f84202a.get(i10);
            if (gVar != null) {
                gVar.k();
            }
        }
        for (int i11 = 0; i11 < this.f84203b.size(); i11++) {
            M7.g gVar2 = this.f84203b.get(i11);
            if (gVar2 != null) {
                gVar2.k();
            }
        }
    }
}
