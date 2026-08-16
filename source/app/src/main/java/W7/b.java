package W7;

import Ic.C2633l;
import JAVARuntime.Runnable;
import JAVARuntime.Thread;
import a4.C3581c;
import a8.C3589a;
import android.content.Context;
import android.icu.text.DateFormat;
import android.os.Build;
import android.view.SurfaceView;
import c7.C4161d;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Activities.Editor.Utils.p;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import dalvik.system.ZipPathValidator;
import fb.C13201a;
import h4.k;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import kb.C13962a;
import m6.C14185a;
import ob.b;
import p6.g;
import w3.m;

public class b {

    public static final String f27301a = "@FRAME@";

    public static W7.e f27311k;

    public static W7.d f27316p;

    public static int f27318r;

    @Deprecated
    public static final com.itsmagic.engine.Core.Components.ProjectController.a f27302b = new com.itsmagic.engine.Core.Components.ProjectController.a();

    @Deprecated
    public static final c8.b f27303c = new c8.b();

    @Deprecated
    public static final com.itsmagic.engine.Engines.Engine.World.a f27304d = new com.itsmagic.engine.Engines.Engine.World.a();

    @Deprecated
    public static final X7.a f27305e = new X7.a();

    public static final C8.a f27306f = new C8.a();

    @Deprecated
    public static final u8.c f27307g = new u8.c();

    public static final b8.f f27308h = new b8.f();

    public static final C3589a f27309i = new C3589a();

    @Deprecated
    public static final j f27310j = new j();

    public static boolean f27312l = false;

    public static final AtomicBoolean f27313m = new AtomicBoolean();

    public static final AtomicBoolean f27314n = new AtomicBoolean();

    public static String f27315o = null;

    public static String f27317q = null;

    public class a implements Runnable {
        @Override
        public void run() {
            TextOutputActivity.h(new RuntimeException("Failed to check pre-compiled vulkan files."));
        }
    }

    public class C0770b implements Consumer<GameObject> {
        @Override
        public void accept(GameObject gameObject) {
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                gameObject.L(i10).onGameStateChanged(c8.b.k(), c8.b.i());
            }
            for (int i11 = 0; i11 < gameObject.D(); i11++) {
                accept(gameObject.C(i11));
            }
        }
    }

    public class c implements a.k {

        public class a implements b.a {
            public a() {
            }

            @Override
            public boolean run() {
                EditorSettings.a().latestProject = com.itsmagic.engine.Core.Components.ProjectController.a.T();
                EditorSettings.e();
                return false;
            }
        }

        @Override
        public World onFailed() {
            b.f27314n.set(false);
            return null;
        }

        @Override
        public void onSuccess() {
            b.f27314n.set(false);
            K8.a.J(new ob.b((b.a) new a(), 5));
        }
    }

    public class d implements a.k {

        public class a implements b.a {
            public a() {
            }

            @Override
            public boolean run() {
                EditorSettings.a().latestProject = com.itsmagic.engine.Core.Components.ProjectController.a.T();
                EditorSettings.e();
                return false;
            }
        }

        @Override
        public World onFailed() {
            b.n();
            return null;
        }

        @Override
        public void onSuccess() {
            b.f27314n.set(false);
            K8.a.J(new ob.b((b.a) new a(), 5));
            W7.e eVar = b.f27311k;
            if (eVar != null) {
                eVar.onFinish();
                b.f27311k = null;
            }
        }
    }

    public class e implements Runnable {

        public final String f27321b;

        public class a implements a.k {
            public a() {
            }

            @Override
            public World onFailed() {
                b.f27314n.set(false);
                W7.e eVar = b.f27311k;
                if (eVar != null) {
                    eVar.onError("No world to load!");
                    b.f27311k = null;
                }
                return null;
            }

            @Override
            public void onSuccess() {
                b.f27314n.set(false);
                W7.e eVar = b.f27311k;
                if (eVar != null) {
                    eVar.onFinish();
                    b.f27311k = null;
                }
            }
        }

        public e(final String val$finalWantedWorldFile) {
            this.f27321b = val$finalWantedWorldFile;
        }

        @Override
        public void run() {
            String str = this.f27321b;
            if (str != null && !str.isEmpty()) {
                com.itsmagic.engine.Engines.Engine.World.a.K(this.f27321b, true, new a());
                return;
            }
            W7.e eVar = b.f27311k;
            if (eVar != null) {
                eVar.onError("No world to load!");
                b.f27311k = null;
            }
            b.f27314n.set(false);
        }
    }

    static {
        SweetAlertDialog.DARK_STYLE = true;
    }

    public static void b() {
        try {
            K8.a.e();
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
        }
    }

    public static void c(File file, List<File> out) {
        if (!file.isDirectory()) {
            if (C2633l.b(file.getName(), ".world")) {
                out.add(file);
            }
        } else {
            for (File file2 : file.listFiles()) {
                c(file2, out);
            }
        }
    }

    public static void d(Context context) {
        String str = f27317q;
        if (str != null && !str.isEmpty()) {
            f27315o = f27317q;
            f27313m.set(true);
            f27317q = null;
        }
        f27309i.a();
        com.itsmagic.engine.Core.Components.ProjectController.a.C();
        com.itsmagic.engine.Engines.Engine.World.a.L();
        K8.a.t();
    }

    public static void e() {
        try {
            K8.a.v();
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
        }
    }

    public static void f(Context context) {
        com.itsmagic.engine.Engines.Engine.World.a.h();
        f27309i.a();
        com.itsmagic.engine.Core.Components.ProjectController.a.C();
    }

    public static void g() {
        long j10;
        Context t10;
        try {
            Qb.a.d();
            j10 = K8.a.f10989t;
            t10 = N7.c.t();
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
            return;
        }
        if (f27313m.get()) {
            String str = f27315o;
            if (str != null && !str.isEmpty() && !f27315o.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                f27309i.b();
                f27312l = false;
                if (com.itsmagic.engine.Core.Components.ProjectController.a.f0(t10, f27315o)) {
                    c8.b.f34433b = false;
                    c8.b.f34432a = false;
                    c8.b.f34435d = false;
                    if (!com.itsmagic.engine.Core.Components.ProjectController.a.T().isEmpty()) {
                        if (com.itsmagic.engine.Core.Components.ProjectController.a.S(t10).contains("@@ASSET@@")) {
                            try {
                                com.itsmagic.engine.Engines.Engine.World.a.G("", "worldzero", false, new c());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            c8.b.f34432a = true;
                        } else {
                            try {
                                W7.e eVar = f27311k;
                                if (eVar != null) {
                                    eVar.b("Loading world file from disk");
                                }
                                com.itsmagic.engine.Engines.Engine.World.a.I("_EDITOR", "currentScene.scn", false, new d());
                            } catch (Exception e12) {
                                e12.printStackTrace();
                                W7.e eVar2 = f27311k;
                                if (eVar2 != null) {
                                    eVar2.onError(e12.getMessage());
                                    f27311k = null;
                                }
                            }
                        }
                        e10.printStackTrace();
                        TextOutputActivity.h(e10);
                        return;
                    }
                    W7.e eVar3 = f27311k;
                    if (eVar3 != null) {
                        eVar3.onError("Invalid project");
                        f27311k = null;
                    }
                } else {
                    W7.e eVar4 = f27311k;
                    if (eVar4 != null) {
                        eVar4.onError("Invalid project");
                        f27311k = null;
                    }
                    N7.c.v0("Invalid project");
                }
            }
            f27315o = null;
            f27313m.set(false);
        } else if (f27312l) {
            f(t10);
            f27312l = false;
        }
        J4.d.U1("@FRAME@C/Frame [" + j10 + "] ended " + Nc.b.v0(K8.d.e() * 1000.0f, 0) + DateFormat.MINUTE_SECOND);
        J4.d.N1();
        K8.d.g();
        C13962a.c(t10);
        C14185a.b(K8.d.d());
    }

    public static void h() {
        try {
            K8.a.w();
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
        }
    }

    public static void i(int width, int height) {
        try {
            Qb.a.d();
            K8.a.n();
            J4.d.U1("@FRAME@C/Frame [" + K8.a.f10989t + "] started");
            Context t10 = N7.c.t();
            f27318r = f27318r + 1;
            g L12 = p6.d.E1() ? p6.d.L1("Editor pre-ops") : null;
            K8.c.c(width, height);
            MousePicker.staticUpdate();
            C3581c.f();
            K3.e.g();
            com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a.p();
            p.a();
            p6.d.J1(L12);
            if (f27316p != null) {
                g L13 = p6.d.E1() ? p6.d.L1("Editor custom axis") : null;
                if (v3.c.b() != null) {
                    v3.c.b().b(t10);
                }
                p6.d.J1(L13);
                if (f27316p.c()) {
                    f27316p.a(f27318r);
                }
            }
            g L14 = p6.d.E1() ? p6.d.L1("Editor ops") : null;
            C14185a.a();
            Z7.a.a();
            Z7.b.a();
            C4161d.d();
            W7.c.b();
            p6.d.J1(L14);
            if (c8.b.f34435d) {
                c8.b.f34432a = c8.b.f34436e;
                c8.b.f34435d = false;
                if (!c8.b.f34436e) {
                    Thread.interruptAll();
                }
                q();
            }
            if (c8.b.f34437f) {
                c8.b.f34433b = c8.b.f34438g;
                c8.b.f34437f = false;
                q();
            }
            if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                com.itsmagic.engine.Engines.Engine.World.a.V();
            }
            C13962a.b(t10);
            K8.a.x(t10);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
        }
    }

    public static void j(Context context) {
        if (Build.VERSION.SDK_INT >= 34) {
            ZipPathValidator.clearCallback();
        }
        if (!m.a(context)) {
            N7.c.j0(new a());
            return;
        }
        new Lang();
        new C13201a();
        K8.a.u(context);
        f27306f.g(context);
        f27307g.b(context);
        f27310j.m0();
        K4.b.x();
        k.K();
    }

    public static void k(int width, int height) {
        K8.a.n();
        K8.c.c(width, height);
        K8.a.y(width, height);
    }

    public static void l(int width, int height, SurfaceView surfaceView) {
        K8.a.n();
        K8.a.z(surfaceView);
        K8.c.c(width, height);
    }

    public static void m() {
        g L12 = p6.d.E1() ? p6.d.L1("Editor panels update") : null;
        Context t10 = N7.c.t();
        W7.d dVar = f27316p;
        if (dVar != null) {
            dVar.d(t10);
        }
        p6.d.J1(L12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void n() {
        String str;
        boolean z10;
        N7.c.t();
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Files/");
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            c(file, steppedArrayList);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        int i10 = 0;
        while (true) {
            str = null;
            try {
                if (i10 >= steppedArrayList.size()) {
                    z10 = false;
                    break;
                }
                String replace = ((File) steppedArrayList.get(i10)).getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                if (Tc.b.v(replace).toLowerCase().contains("example")) {
                    z10 = true;
                    str = replace;
                    break;
                }
                i10++;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        if (!z10 && !steppedArrayList.isEmpty()) {
            str = ((File) steppedArrayList.get(0)).getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
        }
        K8.a.I(new e(str));
    }

    public static void o() {
        K8.a.N();
    }

    public static void p(String projectName, W7.e swapProjectListener) {
        EditorSettings.a().latestProject = null;
        EditorSettings.e();
        f27311k = swapProjectListener;
        f27313m.set(true);
        f27315o = projectName;
        f27314n.set(true);
    }

    public static void q() {
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world != null) {
            world.f80011b.forEach(new C0770b());
        }
    }
}
