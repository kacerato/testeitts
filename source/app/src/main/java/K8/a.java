package K8;

import Ic.C2622a;
import Ic.N;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import JAVARuntime.Thread;
import Lb.j;
import O9.a;
import Z9.C3441a;
import a8.C3589a;
import android.content.Context;
import android.view.SurfaceView;
import b9.C3856c;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.TransformUpdateController;
import com.itsmagic.engine.Engines.Engine.Settings.GameSettings;
import com.itsmagic.engine.Engines.Engine.Threading.ThreadAffinity;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12894h;
import fc.C13204a;
import gb.C13314b;
import gb.C13317e;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import o6.C14485a;
import ob.C14496a;
import ob.b;
import pb.C14948a;
import rc.C15169a;
import wb.C15981c;
import yb.C16165b;

public abstract class a {

    public static final Vector3 f10953A;

    public static final Vector3 f10954B;

    public static final Vector3 f10955C;

    public static final Vector3 f10956D;

    public static final com.itsmagic.engine.Engines.Engine.Vector.f f10957E;

    public static final com.itsmagic.engine.Engines.Engine.Vector.f f10958F;

    public static final AABB f10959G;

    public static final AABB f10960H;

    public static final ColorINT f10961I;

    public static GizmoObject f10962J = null;

    public static final N<Thread> f10963K;

    public static final N<Thread> f10964L;

    public static final N<Thread> f10965M;

    public static volatile World f10966N = null;

    public static final AtomicBoolean f10967O;

    public static final C2622a f10968P;

    public static final Runnable f10969Q;

    public static final int f10970a = 1;

    public static final int f10971b = 1;

    public static final int f10972c = 10;

    public static final int f10973d = 1;

    public static final List<Object> f10974e;

    public static final List<Object> f10975f;

    public static final List<Object> f10976g;

    public static final Set<Object> f10977h;

    public static final List<Runnable> f10978i;

    public static final List<GameObject> f10979j;

    public static final a.b<Component> f10980k;

    public static int f10981l;

    public static int f10982m;

    public static final Y9.c f10983n;

    public static final Cc.c f10984o;

    public static final Object f10985p;

    public static GameSettings f10986q;

    public static final O8.b f10987r;

    public static int f10988s;

    public static long f10989t;

    public static long f10990u;

    public static int f10991v;

    public static int f10992w;

    public static final AtomicBoolean f10993x;

    public static GameObject f10994y;

    public static final float[] f10995z;

    public class C0366a implements x8.b {
        @Override
        public void a() {
        }

        @Override
        public void b() {
            a.O();
        }
    }

    public class b implements j {
        @Override
        public void a() {
            a.f10989t = 0L;
        }
    }

    public class c implements Runnable {
        @Override
        public void run() {
            N7.c.F().D();
        }
    }

    public class d implements b.a {

        public final Runnable f10996a;

        public d(final Runnable val$r) {
            this.f10996a = val$r;
        }

        @Override
        public boolean run() {
            this.f10996a.run();
            return false;
        }
    }

    public class e implements b.a {

        public final Runnable f10997a;

        public e(final Runnable val$r) {
            this.f10997a = val$r;
        }

        @Override
        public boolean run() {
            this.f10997a.run();
            return false;
        }
    }

    public class f implements a.b<Component> {
        @Override
        public void a(Component component) {
            a.f(component);
        }
    }

    public class g implements Runnable {
        @Override
        public void run() {
            try {
                p6.g L12 = p6.d.E1() ? p6.d.L1("Parallel-update") : null;
                a.A();
                p6.d.J1(L12);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public class h implements Runnable {

        public final GameObject f10998b;

        public h(final GameObject val$ghost) {
            this.f10998b = val$ghost;
        }

        @Override
        public void run() {
            if (C13317e.J(this.f10998b)) {
                for (int i10 = 0; i10 < a.f10979j.size(); i10++) {
                    if (a.f10979j.get(i10) == this.f10998b) {
                        return;
                    }
                }
                GameObject gameObject = this.f10998b;
                gameObject.transform.setGameObject(gameObject);
                a.f10979j.add(this.f10998b);
            }
        }
    }

    public class i implements Runnable {

        public final GameObject f10999b;

        public i(final GameObject val$ghost) {
            this.f10999b = val$ghost;
        }

        @Override
        public void run() {
            if (C13317e.J(this.f10999b)) {
                this.f10999b.K0();
                a.f10979j.remove(this.f10999b);
            }
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new C0366a());
        com.itsmagic.engine.Engines.Engine.World.a.g(new b());
        f10974e = new SteppedArrayList(1024);
        f10975f = new SteppedArrayList(1024);
        f10976g = new SteppedArrayList(1024);
        f10977h = Collections.newSetFromMap(new IdentityHashMap(256));
        f10978i = new SteppedArrayList();
        f10979j = new SteppedArrayList(50);
        f10980k = new f();
        f10981l = 0;
        f10983n = new Y9.c();
        f10984o = new Cc.c();
        f10985p = new Object();
        f10987r = new O8.b();
        f10991v = 0;
        f10993x = new AtomicBoolean();
        f10995z = new float[16];
        f10953A = new Vector3();
        f10954B = new Vector3();
        f10955C = new Vector3();
        f10956D = new Vector3();
        f10957E = new com.itsmagic.engine.Engines.Engine.Vector.f();
        f10958F = new com.itsmagic.engine.Engines.Engine.Vector.f();
        f10959G = new AABB();
        f10960H = new AABB();
        f10961I = new ColorINT(255, 214, 138);
        f10963K = new N<>();
        f10964L = new N<>();
        f10965M = new N<>();
        f10967O = new AtomicBoolean();
        f10968P = new C2622a(1, "updateLatch");
        f10969Q = new g();
    }

    public static void A() {
        R8.f.o(f10980k);
    }

    public static void B(Runnable r10) {
        if (r10 == null) {
            throw new NullPointerException("runnable can't be null");
        }
        List<Object> list = f10976g;
        synchronized (list) {
            list.add(r10);
        }
    }

    public static void C(World world, long frameCount) {
        int y10 = R8.f.y();
        p6.g L12 = p6.d.E1() ? p6.d.L1("Update [" + y10 + "]") : null;
        f10981l += y10;
        for (int i10 = 0; i10 < y10; i10++) {
            try {
                Component x10 = R8.f.x(i10);
                if (C13317e.J(x10.f79250n)) {
                    boolean M12 = C14485a.M1(x10);
                    long nanoTime = M12 ? System.nanoTime() : 0L;
                    p6.g L13 = (!p6.d.E1() || x10.f79250n.R0()) ? null : p6.d.L1(x10.getTitle() + ":REPEAT at " + x10.f79250n.P0());
                    if (x10.isHierarchyActive()) {
                        GameObject gameObject = x10.f79250n;
                        x10.preUpdate(gameObject, gameObject.Y0());
                    } else {
                        GameObject gameObject2 = x10.f79250n;
                        x10.disabledPreUpdate(gameObject2, gameObject2.Y0());
                    }
                    p6.d.J1(L13);
                    if (M12) {
                        C14485a.L1(x10, System.nanoTime() - nanoTime);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        p6.d.J1(L12);
    }

    public static void D(GameObject ghost) {
        B(new i(ghost));
    }

    public static void E(List<GameObject> gameObjects) {
        for (int i10 = 0; i10 < gameObjects.size(); i10++) {
            D(gameObjects.get(i10));
        }
    }

    public static void F() {
        if (Thread.currentThread() != f10963K.b()) {
            throw new RuntimeException("Call from engine thread!");
        }
    }

    public static void G() {
        if (!r()) {
            throw new RuntimeException("Call from render thread!");
        }
    }

    public static void H(Runnable runnable) {
        Qb.a.d();
        f10978i.add(runnable);
    }

    public static void I(Runnable r10) {
        if (r10 == null) {
            throw new NullPointerException("runnable can't be null");
        }
        if (Thread.currentThread() == f10963K.b()) {
            r10.run();
            return;
        }
        List<Object> list = f10976g;
        synchronized (list) {
            list.add(r10);
        }
    }

    public static void J(ob.b r10) {
        if (r10 == null) {
            throw new NullPointerException("runnable can't be null");
        }
        if (Thread.currentThread() != f10963K.b() || r10.f()) {
            List<Object> list = f10976g;
            synchronized (list) {
                list.add(r10);
            }
        }
    }

    public static void K() {
        p6.g L12 = p6.d.E1() ? p6.d.L1("Sync ops") : null;
        Thread.update();
        ca.c.E();
        M9.i.e();
        C14948a.M();
        f10987r.e();
        SGC.update();
        p6.d.J1(L12);
    }

    public static void L(GameObject ghost) {
        B(new h(ghost));
    }

    public static void M(List<GameObject> gameObjects) {
        for (int i10 = 0; i10 < gameObjects.size(); i10++) {
            GameObject gameObject = gameObjects.get(i10);
            if (C13317e.J(gameObject)) {
                L(gameObject);
            }
        }
    }

    public static void N() {
        NativeShortBuffer.surfaceDestroyed();
    }

    public static void O() {
        synchronized (f10985p) {
            f10986q = null;
            l();
            Vb.a.K();
            I(new c());
        }
    }

    public static void P(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            gameObject.L(i10).updateOnSelectedHierarchy();
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            P(gameObject.C(i11));
        }
    }

    public static void Q(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            gameObject.L(i10).updateOnUnselectedHierarchy();
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            Q(gameObject.C(i11));
        }
    }

    public static void e() {
        p6.g L12 = p6.d.E1() ? p6.d.L1("After render") : null;
        P9.a.a();
        p6.d.J1(L12);
        Ob.a.a();
        Ub.a.d();
        C15169a.A();
        C13204a.f();
    }

    public static void f(Component component) {
        p6.g gVar;
        GameObject gameObject;
        try {
            boolean M12 = C14485a.M1(component);
            long nanoTime = M12 ? System.nanoTime() : 0L;
            if (!p6.d.E1() || (gameObject = component.f79250n) == null || gameObject.R0()) {
                gVar = null;
            } else {
                gVar = p6.d.L1(component.getTitle() + ":PARALLEL at " + component.f79250n.P0());
            }
            if (C13317e.J(component.f79250n) && component.f79250n != null) {
                if (component.isHierarchyActive()) {
                    component.parallelUpdate();
                } else {
                    component.parallelDisabledUpdate();
                }
            }
            p6.d.J1(gVar);
            if (M12) {
                C14485a.K1(component, System.nanoTime() - nanoTime);
            }
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
        }
    }

    public static void g(float seconds, Runnable r10) {
        if (r10 == null) {
            throw new NullPointerException("runnable can't be null");
        }
        J(new ob.b(new e(r10), seconds));
    }

    public static void h(int frames, Runnable r10) {
        if (r10 == null) {
            throw new NullPointerException("runnable can't be null");
        }
        J(new ob.b((b.a) new d(r10), frames));
    }

    public static void i(GameObject parent) {
        if (C13317e.J(parent)) {
            try {
                C13314b h10 = C13314b.h(parent, false, false);
                if (h10 == null) {
                    return;
                }
                Transform transform = parent.transform;
                com.itsmagic.engine.Engines.Engine.Vector.f fVar = f10958F;
                transform.p0(fVar);
                AABB aabb = f10959G;
                aabb.f79831xn = h10.f88250b.getX();
                aabb.yn = h10.f88250b.getY();
                aabb.zn = h10.f88250b.getZ();
                aabb.f79830x = h10.f88251c.getX();
                aabb.f79832y = h10.f88251c.getY();
                float z10 = h10.f88251c.getZ();
                aabb.f79833z = z10;
                float f10 = aabb.f79830x;
                float f11 = (aabb.f79831xn + f10) * 0.5f;
                aabb.cx = f11;
                float f12 = aabb.f79832y;
                float f13 = (aabb.yn + f12) * 0.5f;
                aabb.cy = f13;
                float f14 = (aabb.zn + z10) * 0.5f;
                aabb.cz = f14;
                float f15 = f10 - f11;
                float f16 = f12 - f13;
                float f17 = z10 - f14;
                aabb.radius = (float) Math.sqrt((f15 * f15) + (f16 * f16) + (f17 * f17));
                float[] fArr = f10995z;
                float[] o10 = fVar.o(fArr);
                AABB aabb2 = f10960H;
                aabb.e(o10, aabb2);
                Vector3 vector3 = f10953A;
                aabb2.A(vector3);
                Vector3 vector32 = f10954B;
                aabb2.v(vector32);
                Vector3 vector33 = f10955C;
                vector33.set((vector3.getX() + vector32.getX()) * 0.5f, (vector3.getY() + vector32.getY()) * 0.5f, (vector3.getZ() + vector32.getZ()) * 0.5f);
                Vector3 vector34 = f10956D;
                vector34.set(vector32.getX() - vector3.getX(), vector32.getY() - vector3.getY(), vector32.getZ() - vector3.getZ());
                if (f10962J == null) {
                    GizmoObject gizmoObject = new GizmoObject(Vertex.E1(Vertex.v.CUBE, null).x2());
                    f10962J = gizmoObject;
                    gizmoObject.setEnableLight(true);
                    f10962J.setColor(f10961I.e0());
                    f10962J.setRenderMode(GizmoElement.RenderMode.WireFrame);
                }
                com.itsmagic.engine.Engines.Engine.Vector.f fVar2 = f10957E;
                fVar2.a1(vector33, vector34);
                fVar2.o(fArr);
                f10962J.setMatrix(fArr);
                Ub.a.a(f10962J);
            } catch (Exception unused) {
            }
        }
    }

    public static void j() {
        Thread currentThread = Thread.currentThread();
        N<Thread> n10 = f10965M;
        if (currentThread == n10.b()) {
            return;
        }
        ThreadAffinity.d(ThreadAffinity.a.BIG);
        n10.e(currentThread);
    }

    public static int k() {
        return f10991v;
    }

    public static GameSettings l() {
        return m(N7.c.t());
    }

    public static GameSettings m(Context context) {
        synchronized (f10985p) {
            try {
                if (!com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                    if (f10986q == null) {
                        f10986q = new GameSettings();
                    }
                    return f10986q;
                }
                if (f10986q == null) {
                    try {
                        String s10 = X7.a.s("_PROJECT/settings.config", context);
                        if (s10 == null || s10.isEmpty()) {
                            System.out.println("Failed to load game settings: json is empty");
                            f10986q = new GameSettings();
                        } else {
                            f10986q = (GameSettings) X7.a.m().fromJson(s10, GameSettings.class);
                        }
                    } catch (Exception e10) {
                        System.out.println("Failed to load game settings");
                        e10.printStackTrace();
                        f10986q = new GameSettings();
                    }
                    f10986q.i();
                }
                return f10986q;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void n() {
        f10963K.e(Thread.currentThread());
    }

    public static void o(Runnable r10) {
        if (r10 == null) {
            throw new NullPointerException("runnable can't be null");
        }
        List<Object> list = f10976g;
        synchronized (list) {
            list.add(new C14496a(r10));
        }
    }

    public static void p(ob.b r10) {
        if (r10 == null) {
            throw new NullPointerException("runnable can't be null");
        }
        List<Object> list = f10976g;
        synchronized (list) {
            list.add(new C14496a(r10));
        }
    }

    public static boolean q() {
        Thread currentThread = Thread.currentThread();
        if (currentThread == f10963K.b() || currentThread == f10964L.b()) {
            return true;
        }
        return f10993x.get();
    }

    public static boolean r() {
        return Thread.currentThread() == f10963K.b();
    }

    public static boolean s() {
        return f10963K.b() != null;
    }

    public static void t() {
        C16165b.p();
        C15981c.i();
        Fb.c.v();
        ca.c.A();
        Ob.a.b();
        ab.c.m();
        tb.b.d();
        C12894h.m();
        f10988s = -1;
    }

    public static void u(Context context) {
        int c10 = Nc.d.c();
        while (c10 == f10988s) {
            c10 = Nc.d.c();
        }
        f10988s = c10;
    }

    public static void v() {
        List<Runnable> list;
        if (!f10978i.isEmpty()) {
            int i10 = 0;
            while (true) {
                list = f10978i;
                if (i10 >= list.size()) {
                    break;
                }
                list.get(i10).run();
                i10++;
            }
            list.clear();
        }
        World world = f10966N;
        p6.g L12 = p6.d.E1() ? p6.d.L1("Graphics render") : null;
        p6.g L13 = p6.d.E1() ? p6.d.L1("Components draw frame") : null;
        for (int i11 = 0; i11 < R8.f.m(); i11++) {
            R8.f.l(i11).onDrawFrame();
        }
        p6.d.J1(L13);
        p6.g L14 = p6.d.E1() ? p6.d.L1("Render") : null;
        Ob.a.f(world);
        P9.a.t();
        C13204a.e();
        p6.d.J1(L14);
        p6.d.J1(L12);
    }

    public static void w() {
        C13204a.b();
    }

    public static void x(Context context) {
        GameObject gameObject;
        List<Object> list;
        List<Object> list2;
        j();
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        f10966N = world;
        int i10 = 0;
        f10981l = 0;
        f10982m = 0;
        if (f10989t == 0) {
            f10992w = 0;
        }
        if (com.itsmagic.engine.Engines.Engine.World.a.z()) {
            f10992w++;
        }
        synchronized (f10985p) {
            try {
                GameSettings gameSettings = f10986q;
                if (gameSettings != null) {
                    gameSettings.l(world);
                }
            } finally {
            }
        }
        if (c8.b.j()) {
            f10990u++;
        } else {
            f10990u = 0L;
        }
        p6.g L12 = p6.d.E1() ? p6.d.L1("input pre update") : null;
        C15169a.B(context);
        p6.d.J1(L12);
        com.itsmagic.engine.Engines.Engine.World.b.j();
        p6.g L13 = p6.d.E1() ? p6.d.L1("Waiting threads") : null;
        Cc.c cVar = f10984o;
        cVar.k();
        if (f10967O.compareAndSet(true, false)) {
            f10968P.a();
        }
        p6.d.J1(L13);
        p6.g L14 = p6.d.E1() ? p6.d.L1("Physics resync") : null;
        cVar.i();
        p6.d.J1(L14);
        Cc.d.c(world);
        f10991v++;
        f10989t++;
        C3441a.a();
        C3441a.b();
        p6.g L15 = p6.d.E1() ? p6.d.L1("transform flush") : null;
        int j10 = TransformUpdateController.j();
        f10982m = j10;
        if (L15 != null) {
            L15.k(L15.f() + "[" + j10 + "]");
        }
        p6.d.J1(L15);
        p6.g L16 = p6.d.E1() ? p6.d.L1("frame runnables") : null;
        List<Object> list3 = f10976g;
        synchronized (list3) {
            try {
                if (!list3.isEmpty()) {
                    int i11 = 0;
                    while (true) {
                        list2 = f10976g;
                        if (i11 >= list2.size()) {
                            break;
                        }
                        Object obj = list2.get(i11);
                        if (obj instanceof C14496a) {
                            f10977h.add(((C14496a) obj).f98645a);
                        } else {
                            f10974e.add(obj);
                        }
                        i11++;
                    }
                    list2.clear();
                }
            } finally {
            }
        }
        List<Object> list4 = f10975f;
        if (!list4.isEmpty()) {
            f10974e.addAll(list4);
            list4.clear();
        }
        if (!f10974e.isEmpty()) {
            int i12 = 0;
            while (true) {
                list = f10974e;
                if (i10 >= list.size()) {
                    break;
                }
                Object obj2 = list.get(i10);
                if (!(obj2 instanceof Runnable)) {
                    if ((obj2 instanceof ob.b) && !f10977h.remove(obj2)) {
                        ob.b bVar = (ob.b) obj2;
                        if (bVar.f()) {
                            f10975f.add(bVar);
                        }
                        i12++;
                    }
                    i10++;
                } else if (f10977h.remove(obj2)) {
                    i10++;
                } else {
                    ((Runnable) obj2).run();
                    i12++;
                    i10++;
                }
            }
            list.clear();
            i10 = i12;
        }
        f10977h.clear();
        if (L16 != null) {
            L16.k(L16.f() + "[" + i10 + "]");
        }
        R8.d.c();
        p6.d.J1(L16);
        C(world, f10989t);
        GameObject gameObject2 = f10994y;
        C3589a c3589a = W7.b.f27309i;
        if (gameObject2 != c3589a.f31909a.f31910a && (gameObject = f10994y) != null) {
            Q(gameObject);
            f10994y = null;
        }
        GameObject gameObject3 = c3589a.f31909a.f31910a;
        if (gameObject3 != null) {
            P(gameObject3.F0());
            i(c3589a.f31909a.f31910a);
            f10994y = c3589a.f31909a.f31910a;
        }
        if (world != null && f10992w >= 1) {
            f10984o.j(world);
        }
        f10968P.bulkRegister(1);
        f10967O.set(true);
        O9.b.d(f10969Q);
        W7.b.m();
        K();
        p6.g L17 = p6.d.E1() ? p6.d.L1("Graphics pre render") : null;
        Pb.a.e(f10986q);
        Ob.a.e(world);
        C13204a.d();
        p6.d.J1(L17);
    }

    public static void y(int width, int height) {
        Ob.a.c(width, height);
        K8.c.c(width, height);
    }

    public static void z(SurfaceView surfaceView) {
        Thread.currentThread().setName("GL-Thread");
        C3856c.h(N7.c.t());
        C15169a.o();
        Ob.a.d();
        P9.a.p();
        Vertex.P();
        l();
        f10984o.g();
        Vb.a.L();
    }
}
