package ca;

import JAVARuntime.AtomicFloat;
import android.util.Log;
import b4.C3844b;
import com.itsmagic.engine.Activities.Editor.Interface.PanelsController;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12894h;
import g9.C13301a;
import hb.C13440c;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import lb.C14068e;
import oc.C14497a;
import org.ITsMagic.ModelImporter.NativeModelImporter;
import q6.f;
import q6.g;
import rc.C15169a;

public class c {

    public static final AtomicBoolean f34482a = new AtomicBoolean();

    public static final List<InterfaceC4164a> f34483b = new SteppedArrayList(50);

    public static final List<Runnable> f34484c = new SteppedArrayList(50);

    public static final List<InterfaceC4164a> f34485d = new SteppedArrayList(50);

    public static final List<InterfaceC4164a> f34486e = new SteppedArrayList(50);

    public static final C14068e f34487f = new C14068e();

    public static final AtomicFloat f34488g = new AtomicFloat();

    public static final List<Component> f34489h = new SteppedArrayList(1000);

    public static int f34490i;

    public static final List<Runnable> f34491j;

    public static g f34492k;

    public static final Runnable f34493l;

    public class a implements Runnable {
        /* JADX WARN: Code restructure failed: missing block: B:119:0x021e, code lost:
        
            r4 = q6.f.O1(ca.c.z(r5));
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x0226, code lost:
        
            r5.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:134:0x0232, code lost:
        
            r5 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:135:0x0233, code lost:
        
            r5.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:136:0x0230, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x024d, code lost:
        
            throw r3;
         */
        /* JADX WARN: Finally extract failed */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            AtomicFloat atomicFloat;
            float k10;
            g O12;
            boolean z10;
            PanelsController D10;
            try {
                try {
                    try {
                        f.A1();
                        c.f34487f.n();
                        g unused = c.f34492k = f.O1("Total");
                        if (c.f34492k != null) {
                            c.f34492k.l(true);
                        }
                        O12 = f.O1("buffersRunnable");
                        try {
                            if (c.f34491j.isEmpty()) {
                                int unused2 = c.f34490i = 0;
                            } else {
                                Runnable runnable = (Runnable) c.f34491j.get(c.f34490i);
                                O12 = f.O1(c.z(runnable));
                                try {
                                    runnable.run();
                                    f.M1(O12);
                                    c.m();
                                    if (c.f34490i >= c.f34491j.size()) {
                                        int unused3 = c.f34490i = 0;
                                    }
                                } finally {
                                }
                            }
                            f.M1(O12);
                            O12 = f.O1("AsyncPathFinder.update");
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    } finally {
                        try {
                            c.f34487f.g();
                            c.f34488g.set(c.f34487f.k());
                        } catch (Throwable unused4) {
                        }
                        f.M1(c.f34492k);
                        f.D1(c.f34487f.k());
                        g unused5 = c.f34492k = null;
                        c.f34482a.set(false);
                    }
                } catch (OutOfMemoryError e10) {
                    e10.printStackTrace();
                    TextOutputActivity.h(e10);
                    c.f34487f.g();
                    atomicFloat = c.f34488g;
                    k10 = c.f34487f.k();
                }
            } catch (Throwable unused6) {
            }
            try {
                C13301a.c();
                f.M1(O12);
                O12 = f.O1("GameObjectManager.lpUpdate");
                try {
                    C13440c.c();
                    f.M1(O12);
                    O12 = f.O1("LODVertexManager.lpUpdate");
                    try {
                        Fb.b.b();
                        f.M1(O12);
                        O12 = f.O1("MaterialManager.lpUpdate");
                        try {
                            C12894h.n();
                            f.M1(O12);
                            O12 = f.O1("VertexManager.lpUpdate");
                            try {
                                Fb.c.w();
                                f.M1(O12);
                                O12 = f.O1("Input.lpUpdate");
                                try {
                                    C15169a.s();
                                    f.M1(O12);
                                    O12 = f.O1("ChunkController.lpUpdate");
                                    try {
                                        D9.a.m();
                                        f.M1(O12);
                                        O12 = f.O1("NMGenerator.lpUpdate");
                                        try {
                                            ab.c.n();
                                            f.M1(O12);
                                            O12 = f.O1("MaterialShaderManager.lowTaskUpdate");
                                            try {
                                                Vb.a.H();
                                                f.M1(O12);
                                                O12 = f.O1("FileSoundManager.lowTaskUpdate");
                                                try {
                                                    Hc.c.t();
                                                    f.M1(O12);
                                                    O12 = f.O1("BackgroundTaskManager.lpUpdate");
                                                    try {
                                                        C3844b.i();
                                                        f.M1(O12);
                                                        O12 = f.O1("PanelsController.lpTaskUpdate");
                                                        try {
                                                            try {
                                                                if (N7.c.M() && (D10 = N7.c.D()) != null) {
                                                                    D10.c0();
                                                                }
                                                            } catch (Exception e11) {
                                                                e11.printStackTrace();
                                                            }
                                                            O12 = f.O1("ConvexManager.lpUpdate");
                                                            try {
                                                                Eb.b.b();
                                                                f.M1(O12);
                                                                O12 = f.O1("CollisionManager.lpUpdate");
                                                                try {
                                                                    Db.b.b();
                                                                    f.M1(O12);
                                                                    O12 = f.O1("SceneVFXManager.lpUpdate");
                                                                    try {
                                                                        C14497a.o();
                                                                        f.M1(O12);
                                                                        O12 = f.O1("appendTasks");
                                                                        try {
                                                                            synchronized (c.f34485d) {
                                                                                try {
                                                                                    if (!c.f34485d.isEmpty()) {
                                                                                        c.u(c.f34483b, c.f34485d);
                                                                                        c.f34485d.clear();
                                                                                    }
                                                                                } finally {
                                                                                }
                                                                            }
                                                                            f.M1(O12);
                                                                            O12 = f.O1("removeTasks");
                                                                            try {
                                                                                synchronized (c.f34486e) {
                                                                                    try {
                                                                                        if (!c.f34486e.isEmpty()) {
                                                                                            c.B(c.f34483b, c.f34486e);
                                                                                            c.f34486e.clear();
                                                                                        }
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                f.M1(O12);
                                                                                O12 = f.O1("LPTask execution");
                                                                                try {
                                                                                    int size = c.f34483b.size();
                                                                                    for (int i10 = 0; i10 < size; i10++) {
                                                                                        InterfaceC4164a interfaceC4164a = (InterfaceC4164a) c.f34483b.get(i10);
                                                                                        O12 = f.O1(c.y(interfaceC4164a));
                                                                                        try {
                                                                                            interfaceC4164a.a();
                                                                                        } catch (Exception e12) {
                                                                                            e12.printStackTrace();
                                                                                        }
                                                                                    }
                                                                                    f.M1(O12);
                                                                                    O12 = f.O1("singleShotTask");
                                                                                    try {
                                                                                        synchronized (c.f34484c) {
                                                                                            z10 = !c.f34484c.isEmpty();
                                                                                        }
                                                                                    } catch (Throwable th3) {
                                                                                        throw th3;
                                                                                    }
                                                                                    while (true) {
                                                                                        if (!z10) {
                                                                                            break;
                                                                                        }
                                                                                        synchronized (c.f34484c) {
                                                                                            try {
                                                                                                if (c.f34484c.isEmpty()) {
                                                                                                    break;
                                                                                                } else {
                                                                                                    Runnable runnable2 = (Runnable) c.f34484c.remove(c.f34484c.size() - 1);
                                                                                                }
                                                                                            } finally {
                                                                                            }
                                                                                            throw th3;
                                                                                        }
                                                                                    }
                                                                                    f.M1(O12);
                                                                                    O12 = f.O1("lowTaskComponents");
                                                                                    for (int i11 = 0; i11 < c.f34489h.size(); i11++) {
                                                                                        try {
                                                                                            Component component = (Component) c.f34489h.get(i11);
                                                                                            O12 = f.O1(c.w(component));
                                                                                            try {
                                                                                                GameObject gameObject = component.f79250n;
                                                                                                component.lowTaskUpdate(gameObject, gameObject != null && gameObject.Y0());
                                                                                            } catch (Throwable th4) {
                                                                                                try {
                                                                                                    Log.e("LPTaskController", "Component[" + component.getClass().getSimpleName() + "] Thrown exceptions at lowTaskUpdate");
                                                                                                    th4.printStackTrace();
                                                                                                } finally {
                                                                                                }
                                                                                            }
                                                                                            f.M1(O12);
                                                                                        } catch (Throwable th5) {
                                                                                            throw th5;
                                                                                        }
                                                                                    }
                                                                                    c.f34487f.g();
                                                                                    atomicFloat = c.f34488g;
                                                                                    k10 = c.f34487f.k();
                                                                                    atomicFloat.set(k10);
                                                                                    f.M1(c.f34492k);
                                                                                    f.D1(c.f34487f.k());
                                                                                    g unused7 = c.f34492k = null;
                                                                                    c.f34482a.set(false);
                                                                                    return;
                                                                                } catch (Throwable th6) {
                                                                                    throw th6;
                                                                                } finally {
                                                                                }
                                                                                synchronized (c.f34484c) {
                                                                                    z10 = !c.f34484c.isEmpty();
                                                                                }
                                                                            } finally {
                                                                            }
                                                                        } finally {
                                                                        }
                                                                    } finally {
                                                                    }
                                                                } finally {
                                                                }
                                                            } finally {
                                                            }
                                                        } finally {
                                                        }
                                                    } finally {
                                                    }
                                                } finally {
                                                }
                                            } finally {
                                            }
                                        } finally {
                                        }
                                    } finally {
                                    }
                                } finally {
                                }
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        }
    }

    static {
        f34490i = 0;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        f34491j = steppedArrayList;
        f34490i = 0;
        steppedArrayList.add(new Runnable() {
            @Override
            public final void run() {
                NativeModelImporter.lpUpdate();
            }
        });
        f34493l = new a();
    }

    public static void A() {
        f34483b.clear();
        List<InterfaceC4164a> list = f34485d;
        synchronized (list) {
            list.clear();
        }
        List<InterfaceC4164a> list2 = f34486e;
        synchronized (list2) {
            list2.clear();
        }
    }

    public static <T> void B(List<T> destination, List<?> itemsToRemove) {
        for (int size = destination.size() - 1; size >= 0; size--) {
            if (v(itemsToRemove, destination.get(size))) {
                destination.remove(size);
            }
        }
    }

    public static void C(InterfaceC4164a lpTask) {
        List<InterfaceC4164a> list = f34486e;
        synchronized (list) {
            list.add(lpTask);
        }
    }

    public static void D(Runnable runnable) {
        List<Runnable> list = f34484c;
        synchronized (list) {
            list.add(runnable);
        }
    }

    public static void E() {
        if (f34482a.compareAndSet(false, true)) {
            R8.f.i(f34489h);
            O9.b.d(f34493l);
        }
    }

    public static int m() {
        int i10 = f34490i;
        f34490i = i10 + 1;
        return i10;
    }

    public static void t(InterfaceC4164a lpTask) {
        List<InterfaceC4164a> list = f34485d;
        synchronized (list) {
            list.add(lpTask);
        }
    }

    public static <T> void u(List<T> destination, List<? extends T> source) {
        if (destination instanceof SteppedArrayList) {
            ((SteppedArrayList) destination).ensureCapacity(destination.size() + source.size());
        }
        for (int i10 = 0; i10 < source.size(); i10++) {
            destination.add(source.get(i10));
        }
    }

    public static boolean v(List<?> list, Object target) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Object obj = list.get(i10);
            if (obj == target) {
                return true;
            }
            if (obj != null && obj.equals(target)) {
                return true;
            }
        }
        return false;
    }

    public static String w(Component component) {
        if (component == null) {
            return "null component";
        }
        String displayableTitle = component.getDisplayableTitle();
        if (displayableTitle == null || displayableTitle.isEmpty()) {
            displayableTitle = component.getTitle();
        }
        if (displayableTitle == null || displayableTitle.isEmpty()) {
            displayableTitle = component.getClass().getSimpleName();
        }
        return displayableTitle.isEmpty() ? component.getClass().getName() : displayableTitle;
    }

    public static float x() {
        float floatValue;
        AtomicFloat atomicFloat = f34488g;
        synchronized (atomicFloat) {
            floatValue = atomicFloat.floatValue();
        }
        return floatValue;
    }

    public static String y(Object value) {
        if (value == null) {
            return "null";
        }
        String simpleName = value.getClass().getSimpleName();
        return simpleName.isEmpty() ? value.getClass().getName() : simpleName;
    }

    public static String z(Runnable runnable) {
        return y(runnable);
    }
}
