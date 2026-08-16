package Cc;

import R8.f;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Threading.ThreadAffinity;
import com.itsmagic.engine.Engines.Engine.World.Settings.PhysicsSettings;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.jme3.bullet.PhysicsSoftSpace;
import com.jme3.bullet.PhysicsSpace;
import h9.InterfaceC13435a;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;
import p6.g;

public class c {

    public static final Object f2503k;

    public int f2505b;

    public PhysicsSpace f2506c;

    public volatile Thread f2508e;

    public volatile World f2509f;

    public int f2504a = -1;

    public final Object f2507d = new Object();

    public final AtomicInteger f2510g = new AtomicInteger();

    public final AtomicInteger f2511h = new AtomicInteger();

    public final AtomicBoolean f2512i = new AtomicBoolean();

    public final Runnable f2513j = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            c.this.f2506c = new PhysicsSoftSpace(PhysicsSpace.BroadphaseType.DBVT);
            c.this.f2506c.addOngoingCollisionListener(new Cc.b());
            c.this.f2506c.setMaxSubSteps(0);
            while (true) {
                int i10 = c.this.f2510g.get();
                if (i10 <= c.this.f2511h.get()) {
                    LockSupport.park(this);
                } else {
                    try {
                        c cVar = c.this;
                        cVar.h(cVar.f2509f);
                        c.this.f2511h.set(i10);
                        synchronized (c.this.f2507d) {
                            c.this.f2507d.notifyAll();
                        }
                    } catch (Throwable th2) {
                        c.this.f2511h.set(i10);
                        synchronized (c.this.f2507d) {
                            c.this.f2507d.notifyAll();
                            throw th2;
                        }
                    }
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            K8.a.f10964L.e(Thread.currentThread());
            ThreadAffinity.e(ThreadAffinity.a.LITTLE, ThreadAffinity.a.MEDIUM);
            c.this.f2513j.run();
        }
    }

    static {
        System.loadLibrary("bulletjme");
        f2503k = new Object();
    }

    public void g() {
        if (this.f2508e != null) {
            return;
        }
        Thread thread = new Thread(new b());
        thread.setName("Physics-0");
        thread.setPriority(10);
        this.f2508e = thread;
        thread.start();
    }

    public final void h(World world) {
        if (!c8.b.j() || c8.b.i() || world == null) {
            return;
        }
        List<Component> h10 = f.h(InterfaceC13435a.class);
        float b10 = K8.d.b();
        if (b10 < 1.0f && b10 > 0.0f) {
            float E10 = Nc.b.E(0.0f, b10, 0.046f);
            PhysicsSettings r10 = world.r();
            g L12 = p6.d.E1() ? p6.d.L1("Sync") : null;
            for (int i10 = 0; i10 < h10.size(); i10++) {
                try {
                    InterfaceC13435a interfaceC13435a = (InterfaceC13435a) ((Component) h10.get(i10));
                    if (interfaceC13435a.isActiveForPhysics()) {
                        interfaceC13435a.updatePhysics();
                    } else {
                        interfaceC13435a.disabledUpdatePhysics();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            p6.d.J1(L12);
            g L13 = p6.d.E1() ? p6.d.L1("Physics simulation") : null;
            synchronized (f2503k) {
                try {
                    this.f2506c.setSolverNumIterations(r10.c());
                    this.f2506c.update(E10);
                } catch (Error | Exception e11) {
                    J4.d.E1();
                    J4.d.c2(e11);
                    e11.printStackTrace();
                }
            }
            p6.d.J1(L13);
        }
        synchronized (f2503k) {
            try {
                g L14 = p6.d.E1() ? p6.d.L1("Distribute") : null;
                for (int i11 = 0; i11 < h10.size(); i11++) {
                    try {
                        InterfaceC13435a interfaceC13435a2 = (InterfaceC13435a) ((Component) h10.get(i11));
                        if (interfaceC13435a2.isActiveForPhysics()) {
                            interfaceC13435a2.beforeCollisionEvents();
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
                this.f2506c.distributeEvents();
                for (int i12 = 0; i12 < h10.size(); i12++) {
                    InterfaceC13435a interfaceC13435a3 = (InterfaceC13435a) ((Component) h10.get(i12));
                    if (interfaceC13435a3.isActiveForPhysics()) {
                        interfaceC13435a3.onPhysicsGetTransformations();
                    }
                }
                p6.d.J1(L14);
            } finally {
            }
        }
    }

    public void i() {
        if (!c8.b.j() || c8.b.i()) {
            return;
        }
        List<Component> h10 = f.h(InterfaceC13435a.class);
        for (int i10 = 0; i10 < h10.size(); i10++) {
            InterfaceC13435a interfaceC13435a = (InterfaceC13435a) ((Component) h10.get(i10));
            if (interfaceC13435a.isActiveForPhysics()) {
                interfaceC13435a.resyncOnFrame();
            }
        }
    }

    public void j(World world) {
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            this.f2509f = world;
            this.f2512i.set(true);
            this.f2510g.incrementAndGet();
            Thread thread = this.f2508e;
            if (thread != null) {
                LockSupport.unpark(thread);
            }
        }
    }

    public void k() {
        if (this.f2512i.get()) {
            int i10 = this.f2510g.get();
            boolean z10 = false;
            while (true) {
                if (this.f2511h.get() >= i10) {
                    break;
                }
                synchronized (this.f2507d) {
                    if (this.f2511h.get() >= i10) {
                        break;
                    }
                    try {
                        this.f2507d.wait();
                    } catch (InterruptedException unused) {
                        z10 = true;
                    }
                }
            }
            this.f2512i.set(false);
            if (z10) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
