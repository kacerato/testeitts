package com.itsmagic.engine.Activities.Editor.Utils;

import Ic.C2633l;
import JAVARuntime.Runnable;
import android.content.Context;
import b6.C3847a;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import d6.C12876a;
import d6.C12877b;
import d6.C12878c;
import id.C13696a;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import ob.b;
import s4.C15232a;
import w6.C15971b;

public class u {

    public static final String f72299b = "WelcomeProject";

    public static C15232a f72302e;

    public static final e f72298a = e.CARGO_TRUCK;

    public static boolean f72300c = false;

    public static final AtomicBoolean f72301d = new AtomicBoolean();

    public class a implements Runnable {

        public final C12878c f72303b;

        public a(final C12878c val$downloadProgress) {
            this.f72303b = val$downloadProgress;
        }

        @Override
        public void run() {
            C12735c.a("NEW_PROJECT_TEMPLATE[" + u.f72298a.f72317id + "]");
            u.f(this.f72303b);
        }
    }

    public class b implements g.p {

        public final C12878c f72304a;

        public final Context f72305b;

        public class a implements C13696a.d {

            public class C1158a implements b.a {

                public class RunnableC1159a implements Runnable {

                    public class C1160a implements Runnable {

                        public final String f72309b;

                        public class C1161a implements a.k {
                            public C1161a() {
                            }

                            @Override
                            public World onFailed() {
                                C13696a.q("/Files/Worlds/", "World", b.this.f72305b);
                                World world = new World();
                                world.fileName = "World.world";
                                world.folder = "/Files/Worlds/";
                                world.createExampleWhenOpen = true;
                                return world;
                            }

                            @Override
                            public void onSuccess() {
                            }
                        }

                        public class C1162b implements a.k {
                            public C1162b() {
                            }

                            @Override
                            public World onFailed() {
                                C13696a.q("/Files/Worlds/", "World", b.this.f72305b);
                                World world = new World();
                                world.fileName = "World.world";
                                world.folder = "/Files/Worlds/";
                                world.createExampleWhenOpen = true;
                                return world;
                            }

                            @Override
                            public void onSuccess() {
                            }
                        }

                        public C1160a(final String val$finalWantedWorldFile) {
                            this.f72309b = val$finalWantedWorldFile;
                        }

                        @Override
                        public void run() {
                            String str = this.f72309b;
                            if (str == null || str.isEmpty()) {
                                C13696a.q("/Files/Worlds/", "World", b.this.f72305b);
                                com.itsmagic.engine.Engines.Engine.World.a.K("/Files/Worlds/World.world", true, new C1162b());
                            } else {
                                com.itsmagic.engine.Engines.Engine.World.a.K(this.f72309b, true, new C1161a());
                            }
                            u.n();
                        }
                    }

                    public RunnableC1159a() {
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public void run() {
                        String str;
                        boolean z10;
                        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Files/");
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        u.k(file, steppedArrayList);
                        int i10 = 0;
                        while (true) {
                            if (i10 >= steppedArrayList.size()) {
                                str = null;
                                z10 = false;
                                break;
                            }
                            str = ((File) steppedArrayList.get(i10)).getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                            if (Tc.b.v(str).toLowerCase().contains("example")) {
                                z10 = true;
                                break;
                            }
                            i10++;
                        }
                        if (!z10 && !steppedArrayList.isEmpty()) {
                            str = ((File) steppedArrayList.get(0)).getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                        }
                        K8.a.I(new C1160a(str));
                    }
                }

                public C1158a() {
                }

                @Override
                public boolean run() {
                    O9.b.d(new RunnableC1159a());
                    return false;
                }
            }

            public a() {
            }

            @Override
            public void b() {
                b.this.f72304a.p1(100, "Done");
                u.l(u.f72299b);
                d8.j.v0();
                com.itsmagic.engine.Core.Components.ProjectController.a.f0(b.this.f72305b, u.f72299b);
                K8.a.J(new ob.b((b.a) new C1158a(), 5));
            }
        }

        public b(final C12878c val$downloadProgress, final Context val$context) {
            this.f72304a = val$downloadProgress;
            this.f72305b = val$context;
        }

        @Override
        public void a(String error) {
            this.f72304a.q1("Error: " + error);
            u.i();
        }

        @Override
        public void b() {
            this.f72304a.q1("Error: failed to connect to ethernet!");
            u.i();
        }

        @Override
        public void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond, g.p.a updateStep) {
            int i10 = progress / 2;
            int i11 = d.f72316a[updateStep.ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    return;
                }
                this.f72304a.p1(i10 + 50, "Importing template");
                return;
            }
            this.f72304a.p1(i10, "Downloading template " + C3847a.a(etaInMilliSeconds) + " - " + C3847a.b(downloadedBytesPerSecond));
        }

        @Override
        public void e(g.p.a updateStep) {
            com.itsmagic.engine.Core.Components.ProjectController.a.l0(u.f72299b);
            if (updateStep == g.p.a.Import) {
                this.f72304a.p1(0, "Installing java");
                C13696a.n(new a());
            }
        }
    }

    public class c implements b.a {

        public boolean f72313a = false;

        public class a implements Runnable {

            public class RunnableC1163a implements Runnable {
                public RunnableC1163a() {
                }

                @Override
                public void run() {
                    Panel3DView.x1();
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1163a());
            }
        }

        @Override
        public boolean run() {
            if (this.f72313a) {
                if (com.itsmagic.engine.Engines.Engine.World.a.z()) {
                    GameObject k10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.k(u.f72298a.focusObject);
                    if (k10 == null) {
                        return false;
                    }
                    W7.b.f27308h.h(k10);
                    K8.a.h(3, new a());
                    return false;
                }
            } else if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
                this.f72313a = true;
            }
            return true;
        }
    }

    public static class d {

        public static final int[] f72316a;

        static {
            int[] iArr = new int[g.p.a.values().length];
            f72316a = iArr;
            try {
                iArr[g.p.a.Download.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72316a[g.p.a.Import.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum e {
        CARGO_TRUCK("2447", "Truck");

        final String focusObject;

        final String f72317id;

        e(String id2, String focusObject) {
            this.f72317id = id2;
            this.focusObject = focusObject;
        }
    }

    public static void f(C12878c downloadProgress) {
        Context t10 = N7.c.t();
        com.itsmagic.engine.Core.Components.ProjectController.a.l0(f72299b);
        com.itsmagic.engine.Core.Components.ProjectController.a.c0().b(f72299b, t10);
        downloadProgress.p1(0, "Preparing project");
        com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g.Y1(f72298a.f72317id, true, new b(downloadProgress, t10));
    }

    public static void g() {
        if (!new File(W7.b.f27306f.f2458a.m() + "/" + f72299b).mkdirs()) {
            i();
        } else {
            f72302e = C15232a.p1(R.drawable.background_blured_v2);
            N7.c.l(0.5f, new a(C12878c.r1()));
        }
    }

    public static void h() {
        f72301d.set(true);
        C15232a c15232a = f72302e;
        if (c15232a != null) {
            c15232a.R0();
            f72302e = null;
        }
    }

    public static void i() {
        f72300c = true;
        C15232a c15232a = f72302e;
        if (c15232a != null) {
            c15232a.R0();
            f72302e = null;
        }
    }

    public static void j() {
        if (f72301d.get()) {
            m();
            return;
        }
        if (W7.b.f27314n.get()) {
            return;
        }
        String str = EditorSettings.a().latestProject;
        if (!EditorSettings.a().reopenTheLatestProjectAtStartup) {
            str = null;
        }
        if (str == null || str.isEmpty()) {
            m();
            return;
        }
        Iterator<String> it = com.itsmagic.engine.Core.Components.ProjectController.a.X().iterator();
        while (it.hasNext()) {
            if (it.next().equals(str)) {
                L5.a.r1(str);
                return;
            }
        }
        m();
    }

    public static void k(File file, List<File> out) {
        if (!file.isDirectory()) {
            if (C2633l.b(file.getName(), ".world")) {
                out.add(file);
            }
        } else {
            for (File file2 : file.listFiles()) {
                k(file2, out);
            }
        }
    }

    public static void l(String projectName) {
        com.itsmagic.engine.Core.Components.ProjectController.a.l0("");
        h();
    }

    public static void m() {
        if (!C15971b.z1() || !C15971b.f127229E0.compareAndSet(false, true) || C12876a.f84115e0.get() || C12877b.f84135j0.get()) {
            return;
        }
        C15971b.I1();
        N7.c.D().m0();
    }

    public static void n() {
        K8.a.J(new ob.b(new c()));
    }
}
