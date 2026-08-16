package com.itsmagic.engine.Engines.Engine.World;

import Ic.C;
import Ic.C2633l;
import JAVARuntime.AtomicFloat;
import android.content.Context;
import android.widget.Toast;
import bd.C3867a;
import com.google.gson.JsonElement;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.InvalidFileFormat;
import com.itsmagic.engine.Engines.Utils.InvalidFilePath;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import id.C13696a;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class a {

    public static Lb.e f80028a;

    public static World f80030c;

    public static k f80035h;

    public static final Object f80029b = new Object();

    public static final AtomicInteger f80031d = new AtomicInteger();

    public static final AtomicInteger f80032e = new AtomicInteger();

    public static final AtomicFloat f80033f = new AtomicFloat();

    public static final Ac.b f80034g = new Ac.b();

    public static final List<Lb.j> f80036i = new SteppedArrayList();

    public static final Lb.e[] f80037j = new Lb.e[1];

    public class RunnableC1372a implements Runnable {

        public final Lb.c f80038b;

        public RunnableC1372a(final Lb.c val$event) {
            this.f80038b = val$event;
        }

        @Override
        public void run() {
            if (a.f80030c != null) {
                int A10 = R8.f.A();
                for (int i10 = 0; i10 < A10; i10++) {
                    Component z10 = R8.f.z(i10);
                    if (z10 != null) {
                        z10.receiveEvent(this.f80038b);
                    }
                }
            }
        }
    }

    public class b implements Runnable {

        public final Lb.e f80039b;

        public final Context f80040c;

        public b(final Lb.e val$useSchedule, final Context val$context) {
            this.f80039b = val$useSchedule;
            this.f80040c = val$context;
        }

        @Override
        public void run() {
            a.F(this.f80039b, this.f80040c);
        }
    }

    public class c implements Runnable {

        public final Context f80041b;

        public c(final Context val$context) {
            this.f80041b = val$context;
        }

        @Override
        public void run() {
            I5.d.s1(this.f80041b);
        }
    }

    public class d implements Runnable {

        public final World f80042b;

        public final boolean f80043c;

        public d(final World val$finalWorld, final boolean val$ignoreDont) {
            this.f80042b = val$finalWorld;
            this.f80043c = val$ignoreDont;
        }

        @Override
        public void run() {
            a.O(this.f80042b, this.f80043c);
        }
    }

    public class e implements Runnable {

        public final World f80044b;

        public final boolean f80045c;

        public e(final World val$finalWorld, final boolean val$ignoreDont) {
            this.f80044b = val$finalWorld;
            this.f80045c = val$ignoreDont;
        }

        @Override
        public void run() {
            a.O(this.f80044b, this.f80045c);
        }
    }

    public class f implements Runnable {

        public final OutOfMemoryError f80046b;

        public f(final OutOfMemoryError val$e) {
            this.f80046b = val$e;
        }

        @Override
        public void run() {
            TextOutputActivity.h(this.f80046b);
        }
    }

    public class g implements Runnable {

        public final World f80047b;

        public final boolean f80048c;

        public g(final World val$finalWorld, final boolean val$ignoreDont) {
            this.f80047b = val$finalWorld;
            this.f80048c = val$ignoreDont;
        }

        @Override
        public void run() {
            a.O(this.f80047b, this.f80048c);
        }
    }

    public class h implements Lb.a {
        @Override
        public void b(String t10) {
            synchronized (a.f80034g) {
                a.f80034g.u0(t10);
            }
        }

        @Override
        public void c() {
            a.f80031d.incrementAndGet();
        }

        @Override
        public void d(float v10) {
            a.f80033f.set(v10);
        }

        @Override
        public void e() {
            a.f80032e.incrementAndGet();
            a.f80033f.set(0.0f);
        }
    }

    public class i implements Runnable {
        @Override
        public void run() {
            a.i(new C());
            N7.c.F().B();
        }
    }

    public class j implements Runnable {
        @Override
        public void run() {
            N7.c.H().A();
        }
    }

    public interface k {
        World onFailed();

        void onSuccess();
    }

    public static boolean A() {
        boolean z10;
        synchronized (f80029b) {
            z10 = f80028a != null;
        }
        return z10;
    }

    public static List<Component> B(Component.e classReference) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            List<GameObject> list = f80030c.f80011b;
            for (int i10 = 0; i10 < list.size(); i10++) {
                D(classReference, list.get(i10), steppedArrayList);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return steppedArrayList;
    }

    public static List<Component> C(String tittle) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            List<GameObject> list = f80030c.f80011b;
            for (int i10 = 0; i10 < list.size(); i10++) {
                E(tittle, list.get(i10), steppedArrayList);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return steppedArrayList;
    }

    public static void D(Component.e classReference, GameObject parent, List<Component> list) {
        list.addAll(parent.n0(classReference));
        for (int i10 = 0; i10 < parent.D(); i10++) {
            D(classReference, parent.C(i10), list);
        }
    }

    public static void E(String tittle, GameObject parent, List<Component> list) {
        list.addAll(parent.q0(tittle));
        for (int i10 = 0; i10 < parent.D(); i10++) {
            E(tittle, parent.C(i10), list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void F(Lb.e useSchedule, Context context) {
        String str;
        try {
            str = X7.a.s(useSchedule.f11670a, context);
        } catch (Exception e10) {
            e10.printStackTrace();
            str = null;
        }
        if (str == null || str.isEmpty()) {
            World onFailed = f80035h.onFailed();
            if (onFailed != null) {
                World.c f10 = onFailed.f();
                f80031d.set(f10.f80025a);
                f80032e.set(0);
                onFailed.u(f10, q(), false);
                K8.a.I(new g(onFailed, useSchedule.f11677h));
            }
            synchronized (f80029b) {
                f80028a = null;
            }
            return;
        }
        try {
            World h10 = World.h(str);
            if (h10 == null) {
                World onFailed2 = f80035h.onFailed();
                if (onFailed2 != null) {
                    World.c f11 = onFailed2.f();
                    f80031d.set(f11.f80025a);
                    f80032e.set(0);
                    onFailed2.u(f11, q(), true);
                    K8.a.I(new e(onFailed2, useSchedule.f11677h));
                }
                synchronized (f80029b) {
                    f80028a = null;
                }
                return;
            }
            synchronized (f80029b) {
                try {
                    if (f80028a == null) {
                        return;
                    }
                    if (useSchedule.f11673d) {
                        h10.folder = useSchedule.f11674e;
                        h10.fileName = useSchedule.f11675f;
                    }
                    World.c f12 = h10.f();
                    f80031d.set(f12.f80025a);
                    f80032e.set(0);
                    h10.u(f12, q(), true);
                    f80035h.onSuccess();
                    K8.a.I(new d(h10, useSchedule.f11677h));
                    return;
                } finally {
                }
            }
        } catch (OutOfMemoryError e11) {
            e11.printStackTrace();
            N7.c.j0(new f(e11));
            synchronized (f80029b) {
            }
        }
        e11.printStackTrace();
        N7.c.j0(new f(e11));
        synchronized (f80029b) {
            f80028a = null;
        }
    }

    public static void G(String folder, String fileName, boolean changeWorldFile, k listener) {
        String o10 = Tc.b.o(folder + "/" + fileName);
        if (o10 == null || o10.isEmpty()) {
            throw new RuntimeException("File(" + o10 + ") is not a world");
        }
        if (!C2633l.b(fileName, ".world") && !C2633l.b(fileName, ".ar") && !C2633l.b(fileName, ".scn")) {
            throw new RuntimeException("File(" + fileName + ") is not a world");
        }
        synchronized (f80029b) {
            try {
                if (f80028a != null) {
                    throw new RuntimeException("A world is already being loaded, please wait for it to finish");
                }
                f80028a = new Lb.e(o10, Lb.d.Sync, changeWorldFile, folder, fileName);
                f80035h = listener;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void H(String file, boolean changeWorldFile, k listener) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new RuntimeException("File(" + o10 + ") is not a world");
        }
        if (!C2633l.b(o10, ".world") && !C2633l.b(o10, ".ar") && !C2633l.b(o10, ".scn")) {
            throw new RuntimeException("File(" + o10 + ") is not a world");
        }
        synchronized (f80029b) {
            try {
                if (f80028a != null) {
                    throw new RuntimeException("A world is already being loaded, please wait for it to finish");
                }
                f80028a = new Lb.e(o10, Lb.d.Sync, changeWorldFile, Tc.b.u(o10), Tc.b.v(o10));
                f80035h = listener;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void I(String folder, String fileName, boolean changeWorldFile, k listener) {
        J(folder, fileName, changeWorldFile, listener, false);
    }

    public static void J(String folder, String fileName, boolean changeWorldFile, k listener, boolean ignoreDontDestroyOnLoad) {
        String o10 = Tc.b.o(folder + "/" + fileName);
        if (o10 == null || o10.isEmpty()) {
            throw new InvalidFilePath("File(" + o10 + ") is not a world");
        }
        if (!C2633l.b(fileName, ".world") && !C2633l.b(fileName, ".ar") && !C2633l.b(fileName, ".scn")) {
            throw new InvalidFileFormat("File(" + fileName + ") is not a world or area");
        }
        synchronized (f80029b) {
            try {
                if (f80028a != null) {
                    throw new RuntimeException("A world is already being loaded, please wait for it to finish");
                }
                Lb.e eVar = new Lb.e(o10, Lb.d.Async, changeWorldFile, folder, fileName);
                f80028a = eVar;
                eVar.f11677h = ignoreDontDestroyOnLoad;
                f80035h = listener;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void K(String file, boolean changeWorldFile, k listener) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new RuntimeException("File(" + o10 + ") is not a world");
        }
        if (!C2633l.b(o10, ".world") && !C2633l.b(o10, ".ar") && !C2633l.b(o10, ".scn")) {
            throw new RuntimeException("File(" + o10 + ") is not a world");
        }
        synchronized (f80029b) {
            try {
                if (f80028a != null) {
                    throw new RuntimeException("A world is already being loaded, please wait for it to finish");
                }
                f80028a = new Lb.e(o10, Lb.d.Async, changeWorldFile, Tc.b.u(o10), Tc.b.v(o10));
                f80035h = listener;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void L() {
        K8.a.f10984o.k();
        World world = f80030c;
        if (world != null) {
            world.J();
        }
        com.itsmagic.engine.Engines.Engine.World.b.o();
        f80028a = null;
        f80030c = null;
    }

    public static void M() {
        K8.a.f10984o.k();
        World world = f80030c;
        if (world != null) {
            world.J();
        }
        com.itsmagic.engine.Engines.Engine.World.b.o();
        f80028a = null;
        f80030c = null;
    }

    public static void N(Lb.j worldListener) {
        List<Lb.j> list = f80036i;
        synchronized (list) {
            list.remove(worldListener);
        }
    }

    public static void O(World world, boolean ignoreDontDestroyOnLoad) {
        Qb.a.d();
        List<GameObject> r10 = r();
        World world2 = f80030c;
        if (world2 != null) {
            boolean z10 = world2.isArea;
            world2.J();
        }
        f80030c = world;
        if (c8.b.k()) {
            if (ignoreDontDestroyOnLoad) {
                Iterator<GameObject> it = r10.iterator();
                while (it.hasNext()) {
                    it.next().Y1();
                }
            } else {
                f80030c.f80011b.addAll(r10);
            }
        }
        f80030c.G();
        f80030c.v();
        World world3 = f80030c;
        int i10 = 0;
        if (world3.createExampleWhenOpen) {
            world3.createExampleWhenOpen = false;
            world3.g();
        }
        synchronized (f80036i) {
            while (true) {
                try {
                    List<Lb.j> list = f80036i;
                    if (i10 < list.size()) {
                        Lb.j jVar = list.get(i10);
                        if (jVar != null) {
                            jVar.a();
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        ObjectsPanel.N1();
        synchronized (f80029b) {
            f80028a = null;
        }
        N7.c.D().o0(world);
        K8.a.B(new i());
        N7.c.j0(new j());
    }

    public static boolean P() {
        String jsonElement;
        Context t10 = N7.c.t();
        if (f80030c == null) {
            return false;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/tsc.scn");
        if (file.exists() && !file.delete()) {
            return false;
        }
        try {
            JsonElement x10 = f80030c.x(t10);
            if (x10 != null && (jsonElement = x10.toString()) != null && !jsonElement.isEmpty() && X7.a.h(file, jsonElement)) {
                File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/currentScene.scn");
                File file3 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + f80030c.folder + "/" + f80030c.fileName);
                if (file.exists() && C13696a.a(file, file2)) {
                    if (C13696a.a(file, file3)) {
                        return true;
                    }
                }
            }
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
            if (file.exists()) {
                file.delete();
            }
        }
        return false;
    }

    public static boolean Q(Context context) {
        Boolean bool = Boolean.TRUE;
        return R(bool, bool, context);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:12|(2:14|(8:19|20|(2:22|(2:26|(3:30|31|32)(1:29)))|37|(0)|30|31|32)(1:18))|38|20|(0)|37|(0)|30|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a0, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a1, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e A[Catch: Exception -> 0x0053, TryCatch #1 {Exception -> 0x0053, blocks: (B:6:0x0008, B:8:0x000c, B:10:0x0010, B:12:0x0014, B:14:0x0023, B:16:0x003e, B:20:0x0058, B:22:0x005e, B:24:0x006d, B:35:0x00a1, B:31:0x008b), top: B:5:0x0008, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0087 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean R(Boolean saveWorld, Boolean saveTemp, Context context) {
        boolean z10;
        boolean z11;
        if (context == null) {
            return false;
        }
        try {
            World world = f80030c;
            if (world != null && world.folder != null && world.fileName != null) {
                String jsonElement = world.x(context).toString();
                if (saveWorld.booleanValue()) {
                    X7.a aVar = W7.b.f27305e;
                    World world2 = f80030c;
                    X7.a.e(world2.folder, world2.fileName, jsonElement, context);
                    World world3 = f80030c;
                    World h10 = World.h(X7.a.u(world3.folder, world3.fileName, context));
                    if (h10 == null || h10.q().size() != f80030c.q().size()) {
                        z10 = false;
                        if (saveTemp.booleanValue()) {
                            X7.a aVar2 = W7.b.f27305e;
                            X7.a.e("_EDITOR", "currentScene.scn", jsonElement, context);
                            World h11 = World.h(X7.a.u("_EDITOR", "currentScene.scn", context));
                            if (h11 == null || h11.q().size() != f80030c.q().size()) {
                                z11 = false;
                                if (!z10 && z11) {
                                    return true;
                                }
                                Toast.makeText(context, new C3867a("Save failed integrity check", "O salvamento n\u00e3o passou no check de integridade").toString(), 1).show();
                                return false;
                            }
                        }
                        z11 = true;
                        if (!z10) {
                        }
                        Toast.makeText(context, new C3867a("Save failed integrity check", "O salvamento n\u00e3o passou no check de integridade").toString(), 1).show();
                        return false;
                    }
                }
                z10 = true;
                if (saveTemp.booleanValue()) {
                }
                z11 = true;
                if (!z10) {
                }
                Toast.makeText(context, new C3867a("Save failed integrity check", "O salvamento n\u00e3o passou no check de integridade").toString(), 1).show();
                return false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public static boolean S(World world, String folder, String name, Context context, boolean root) {
        boolean z10;
        if (context != null && world != null) {
            try {
                JsonElement x10 = world.x(context);
                if (x10 != null) {
                    String jsonElement = x10.toString();
                    z10 = !root ? X7.a.d(folder, name, jsonElement) : X7.a.k(folder, name, jsonElement);
                } else {
                    z10 = false;
                }
                if (z10) {
                    return true;
                }
                N7.c.w0(new C3867a("Save failed integrity check", "O salvamento n\u00e3o passou no check de integridade").toString(), true);
                return false;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static boolean T(World world, File file, Context context) {
        return U(world, Tc.b.u(file.getAbsolutePath()), Tc.b.v(file.getAbsolutePath()), context, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean U(World world, String folder, String name, Context context, boolean root) {
        boolean z10;
        boolean z11;
        if (context != null && world != null) {
            try {
                String jsonElement = world.x(context).toString();
                if (root) {
                    X7.a.k(folder, name, jsonElement);
                } else {
                    X7.a.e(folder, name, jsonElement, context);
                }
                World h10 = !root ? World.h(X7.a.u(folder, name, context)) : World.h(X7.a.B(folder, name, context));
                if (h10 != null) {
                    if (h10.q().size() == world.q().size()) {
                        z11 = false;
                        for (int i10 = 0; i10 < h10.q().size(); i10++) {
                            if (!h10.q().get(i10).H(world.q().get(i10))) {
                                z11 = true;
                            }
                        }
                    } else {
                        z11 = true;
                    }
                    if (!z11) {
                        z10 = true;
                        if (!z10) {
                            return true;
                        }
                        try {
                            Toast.makeText(context, new C3867a("Save failed integrity check", "O salvamento n\u00e3o passou no check de integridade").toString(), 1).show();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        return false;
                    }
                }
                z10 = false;
                if (!z10) {
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return false;
    }

    public static void V() {
        X();
        W();
    }

    public static void W() {
        World world = f80030c;
        if (world == null || !world.f80012c) {
            return;
        }
        boolean P10 = P();
        Lb.g gVar = f80030c.f80013d;
        if (gVar != null) {
            if (P10) {
                gVar.onSuccess();
            } else {
                gVar.a();
            }
        }
        f80030c.f80012c = false;
    }

    public static void X() {
        boolean z10;
        Lb.e[] eVarArr;
        Object obj = f80029b;
        synchronized (obj) {
            Lb.e eVar = f80028a;
            z10 = eVar != null;
            eVarArr = f80037j;
            eVarArr[0] = eVar;
        }
        if (!z10) {
            f80031d.set(0);
            f80032e.set(0);
            return;
        }
        Context t10 = N7.c.t();
        Lb.e eVar2 = eVarArr[0];
        if (eVar2.f11672c) {
            int i10 = eVar2.f11676g + 1;
            eVar2.f11676g = i10;
            if (i10 == 2) {
                N7.c.j0(new c(t10));
                return;
            }
            return;
        }
        eVar2.f11672c = true;
        Lb.d dVar = eVar2.f11671b;
        if (dVar != Lb.d.Sync) {
            if (dVar == Lb.d.Async) {
                Thread thread = new Thread(new b(eVar2, t10));
                thread.setPriority(10);
                thread.start();
                return;
            }
            return;
        }
        String s10 = X7.a.s(eVar2.f11670a, t10);
        if (s10 == null || s10.isEmpty()) {
            World onFailed = f80035h.onFailed();
            if (onFailed != null) {
                World.c f10 = onFailed.f();
                f80031d.set(f10.f80025a);
                f80032e.set(0);
                onFailed.u(f10, q(), false);
                O(onFailed, eVar2.f11677h);
            }
            synchronized (obj) {
                f80028a = null;
            }
            return;
        }
        World h10 = World.h(s10);
        if (h10 != null) {
            if (eVar2.f11673d) {
                h10.folder = eVar2.f11674e;
                h10.fileName = eVar2.f11675f;
            }
            World.c f11 = h10.f();
            f80031d.set(f11.f80025a);
            f80032e.set(0);
            h10.u(f11, q(), false);
            O(h10, eVar2.f11677h);
            f80035h.onSuccess();
            return;
        }
        World onFailed2 = f80035h.onFailed();
        if (onFailed2 != null) {
            World.c f12 = onFailed2.f();
            f80031d.set(f12.f80025a);
            f80032e.set(0);
            onFailed2.u(f12, q(), false);
            O(onFailed2, eVar2.f11677h);
        } else {
            System.out.println("Failed to load world file " + eVar2.f11670a);
        }
        synchronized (obj) {
            f80028a = null;
        }
    }

    public static void g(Lb.j worldListener) {
        List<Lb.j> list = f80036i;
        synchronized (list) {
            list.add(worldListener);
        }
    }

    public static void h() {
        K8.a.f10984o.k();
        World world = f80030c;
        if (world != null) {
            world.J();
        }
        com.itsmagic.engine.Engines.Engine.World.b.o();
        f80028a = null;
        f80030c = null;
        f80036i.clear();
    }

    public static void i(Lb.c event) {
        K8.a.I(new RunnableC1372a(event));
    }

    public static Component j(Component.e type) {
        try {
            List<GameObject> list = f80030c.f80011b;
            for (int i10 = 0; i10 < list.size(); i10++) {
                Component l10 = l(type, list.get(i10));
                if (l10 != null) {
                    return l10;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static <T extends Component> T k(Class type) {
        try {
            List<Component> h10 = R8.f.h(type);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                T t10 = (T) h10.get(i10);
                GameObject gameObject = t10.f79250n;
                if ((gameObject == null || !gameObject.Y0()) && t10.isHierarchyActive()) {
                    return t10;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Component l(Component.e type, GameObject parent) {
        for (int i10 = 0; i10 < parent.N(); i10++) {
            Component L10 = parent.L(i10);
            if (L10.isHierarchyActive() && L10.getType() == type) {
                return L10;
            }
        }
        for (int i11 = 0; i11 < parent.D(); i11++) {
            Component l10 = l(type, parent.C(i11));
            if (l10 != null) {
                return l10;
            }
        }
        return null;
    }

    public static <T extends JAVARuntime.Component> T m(Class cls) {
        try {
            List<Component> h10 = R8.f.h(cls);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                Component component = h10.get(i10);
                GameObject gameObject = component.f79250n;
                if ((gameObject == null || !gameObject.Y0()) && component.isHierarchyActive()) {
                    return (T) component.toJAVARuntime();
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static <T extends Component> T n(Class type) {
        try {
            List<Component> h10 = R8.f.h(type);
            if (h10.isEmpty()) {
                return null;
            }
            for (int i10 = 0; i10 < h10.size(); i10++) {
                T t10 = (T) h10.get(i10);
                GameObject gameObject = t10.f79250n;
                if (gameObject == null || !gameObject.Y0()) {
                    return t10;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Component o(Component.e classReference, GameObject parent) {
        Component c02 = parent.c0(classReference);
        if (c02 != null) {
            return c02;
        }
        for (int i10 = 0; i10 < parent.D(); i10++) {
            Component o10 = o(classReference, parent.C(i10));
            if (o10 != null) {
                return o10;
            }
        }
        return null;
    }

    public static <T extends JAVARuntime.Component> T p(Class cls) {
        try {
            List<Component> h10 = R8.f.h(cls);
            if (h10.isEmpty()) {
                return null;
            }
            for (int i10 = 0; i10 < h10.size(); i10++) {
                Component component = h10.get(i10);
                GameObject gameObject = component.f79250n;
                if (gameObject == null || !gameObject.Y0()) {
                    return (T) component.toJAVARuntime();
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Lb.a q() {
        return new h();
    }

    public static List<GameObject> r() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (f80030c != null) {
            for (int i10 = 0; i10 < f80030c.q().size(); i10++) {
                GameObject gameObject = f80030c.q().get(i10);
                if (gameObject != null && !gameObject.isGarbage() && !gameObject.isGarbage() && gameObject.dontDestroyOnLoad) {
                    steppedArrayList.add(gameObject);
                }
            }
        }
        return steppedArrayList;
    }

    public static int s() {
        return f80031d.get();
    }

    public static String t() {
        String bVar;
        Ac.b bVar2 = f80034g;
        synchronized (bVar2) {
            bVar = bVar2.toString();
        }
        return bVar;
    }

    public static float u() {
        if (z()) {
            return 1.0f;
        }
        float s10 = s();
        return (v() / s10) + ((1.0f / s10) * x());
    }

    public static int v() {
        return f80032e.get();
    }

    public static String w() {
        synchronized (f80029b) {
            try {
                Lb.e eVar = f80028a;
                if (eVar == null) {
                    return null;
                }
                if (eVar.f11670a.equals("_EDITOR/currentScene.scn")) {
                    return "latest world";
                }
                return f80028a.f11670a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static float x() {
        return f80033f.get();
    }

    public static boolean y() {
        World world = f80030c;
        if (world != null) {
            return world.isArea;
        }
        return false;
    }

    public static boolean z() {
        boolean z10;
        synchronized (f80029b) {
            z10 = f80028a == null;
        }
        return z10;
    }
}
