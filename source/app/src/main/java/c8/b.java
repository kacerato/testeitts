package c8;

import Ic.C2630i;
import JAVARuntime.Runnable;
import Lb.k;
import android.app.Activity;
import android.content.Context;
import b8.g;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import da.C12894h;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import rc.C15169a;
import wb.C15981c;
import yb.C16165b;

public class b {

    public static volatile boolean f34432a = false;

    public static volatile boolean f34433b = false;

    public static volatile boolean f34434c = false;

    public static volatile boolean f34435d;

    public static volatile boolean f34436e;

    public static volatile boolean f34437f;

    public static volatile boolean f34438g;

    public static volatile String f34439h;

    public static InterfaceC4162a f34443l;

    public static final AtomicBoolean f34440i = new AtomicBoolean();

    public static final AtomicBoolean f34441j = new AtomicBoolean();

    public static final List<f> f34442k = new SteppedArrayList();

    public static final List<c8.d> f34444m = Collections.synchronizedList(new LinkedList());

    public class a implements g {

        public class C0898a implements Runnable {
            public C0898a() {
            }

            @Override
            public void run() {
                World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
                if (world == null || world.f80011b == null) {
                    return;
                }
                for (int i10 = 0; i10 < com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.size(); i10++) {
                    b.n(com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.get(i10));
                }
            }
        }

        public class C0899b implements Runnable {

            public class C0900a implements Runnable {
                public C0900a() {
                }

                @Override
                public void run() {
                    World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
                    if (world == null || world.f80011b == null) {
                        return;
                    }
                    for (int i10 = 0; i10 < com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.size(); i10++) {
                        b.s(com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.get(i10));
                    }
                }
            }

            public C0899b() {
            }

            @Override
            public void run() {
                b.f34435d = true;
                b.f34436e = true;
                b.f34437f = true;
                b.f34438g = false;
                InterfaceC4162a interfaceC4162a = b.f34443l;
                if (interfaceC4162a != null) {
                    interfaceC4162a.onStart();
                }
                LinkedList linkedList = new LinkedList();
                for (int i10 = 0; i10 < b.f34444m.size(); i10++) {
                    c8.d dVar = (c8.d) b.f34444m.get(i10);
                    if (dVar != null && !dVar.b()) {
                        linkedList.add(dVar);
                    }
                }
                b.f34444m.removeAll(linkedList);
                linkedList.clear();
                b.h();
                K8.a.I(new C0900a());
            }
        }

        @Override
        public void a(Activity act) {
            C12735c.a("GAME_STARTED");
            K8.a.I(new C0898a());
            K8.a.h(2, new C0899b());
        }

        @Override
        public void b(Activity act) {
        }
    }

    public class RunnableC0901b implements Runnable {
        @Override
        public void run() {
            synchronized (b.f34442k) {
                for (int i10 = 0; i10 < b.f34442k.size(); i10++) {
                    try {
                        ((f) b.f34442k.get(i10)).a();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public class c implements Runnable {
        @Override
        public void run() {
            C15169a.f108812u.M();
            C16165b.r();
            C15981c.j();
            C12894h.p();
            Fb.c.x();
            b.v();
            K8.d.h(1.0f);
            j.l0();
        }
    }

    public class d implements Runnable {

        public class a implements a.k {

            public class C0902a implements Runnable {

                public class C0903a implements g {
                    public C0903a() {
                    }

                    @Override
                    public void a(Activity activity) {
                    }

                    @Override
                    public void b(Activity activity) {
                    }
                }

                public C0902a() {
                }

                @Override
                public void run() {
                    W7.b.f27308h.f(N7.c.o(), new C0903a());
                }
            }

            public a() {
            }

            @Override
            public World onFailed() {
                b.f34439h = null;
                return null;
            }

            @Override
            public void onSuccess() {
                b.f34439h = null;
                b.p();
                K8.a.h(10, new C0902a());
            }
        }

        public class C0904b implements a.k {
            public C0904b() {
            }

            @Override
            public World onFailed() {
                return null;
            }

            @Override
            public void onSuccess() {
                b.p();
            }
        }

        @Override
        public void run() {
            try {
                b.f34440i.set(false);
                if (b.f34439h != null) {
                    com.itsmagic.engine.Engines.Engine.World.a.K(b.f34439h, true, new a());
                } else {
                    com.itsmagic.engine.Engines.Engine.World.a.J("_EDITOR", "currentScene.scn", false, new C0904b(), true);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                b.v();
            }
        }
    }

    public class e implements Runnable {

        public class a implements Runnable {

            public class C0905a implements Runnable {

                public final GameObject f34453b;

                public C0905a(final GameObject val$obj) {
                    this.f34453b = val$obj;
                }

                @Override
                public void run() {
                    W7.b.f27308h.h(this.f34453b);
                }
            }

            public a() {
            }

            @Override
            public void run() {
                GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
                if (gameObject != null) {
                    try {
                        N7.c.j0(new C0905a(k.h(gameObject.getGuid().l(), com.itsmagic.engine.Engines.Engine.World.a.f80030c)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }

        @Override
        public void run() {
            K8.a.h(10, new a());
        }
    }

    public interface f {
        void a();

        void b();
    }

    public static void g(f callbacks) {
        if (callbacks == null) {
            throw new NullPointerException("callback can't be null");
        }
        List<f> list = f34442k;
        synchronized (list) {
            list.add(callbacks);
        }
    }

    public static void h() {
        N7.c.j0(new RunnableC0901b());
    }

    public static boolean i() {
        return f34433b;
    }

    public static boolean j() {
        return f34432a || f34433b;
    }

    public static boolean k() {
        return f34432a && !f34433b;
    }

    public static boolean l() {
        return (f34432a || f34433b || f34435d) ? false : true;
    }

    public static void m(Context context) {
        C12735c.a("GAME_PAUSED");
        f34435d = true;
        int i10 = 0;
        f34436e = false;
        f34437f = true;
        f34438g = true;
        InterfaceC4162a interfaceC4162a = f34443l;
        if (interfaceC4162a != null) {
            interfaceC4162a.a();
        }
        LinkedList linkedList = new LinkedList();
        while (true) {
            List<c8.d> list = f34444m;
            if (i10 >= list.size()) {
                list.removeAll(linkedList);
                linkedList.clear();
                return;
            } else {
                c8.d dVar = list.get(i10);
                if (dVar != null && !dVar.a()) {
                    linkedList.add(dVar);
                }
                i10++;
            }
        }
    }

    public static void n(GameObject object) {
        if (object == null) {
            return;
        }
        int N10 = object.N();
        for (int i10 = 0; i10 < N10; i10++) {
            Component L10 = object.L(i10);
            if (L10 != null) {
                L10.beforeGameStarts();
            }
        }
        int D10 = object.D();
        for (int i11 = 0; i11 < D10; i11++) {
            n(object.C(i11));
        }
    }

    public static void o() {
        if (f34433b) {
            u(N7.c.t());
        } else {
            if (!f34432a || f34435d) {
                return;
            }
            u(N7.c.t());
        }
    }

    public static void p() {
        N7.c.j0(new e());
    }

    public static void q(c8.d listener) {
        f34444m.add(listener);
    }

    public static void r(f callbacks) {
        if (callbacks == null) {
            throw new NullPointerException("callback can't be null");
        }
        List<f> list = f34442k;
        synchronized (list) {
            list.remove(callbacks);
        }
    }

    public static void s(GameObject object) {
        if (object == null) {
            return;
        }
        int N10 = object.N();
        for (int i10 = 0; i10 < N10; i10++) {
            Component L10 = object.L(i10);
            if (L10 != null) {
                L10.onGameStarted();
            }
        }
        int D10 = object.D();
        for (int i11 = 0; i11 < D10; i11++) {
            s(object.C(i11));
        }
    }

    public static void t(Activity context) {
        if (f34432a || f34433b) {
            return;
        }
        W7.b.f27308h.f(context, new a());
    }

    public static void u(Context context) {
        List<c8.d> list;
        N7.c.o0();
        if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
            N7.c.v0("Please wait for the world to finish loading");
            return;
        }
        C12735c.a("GAME_STOPPED");
        f34435d = true;
        int i10 = 0;
        f34436e = false;
        f34437f = true;
        f34438g = false;
        f34434c = false;
        K8.a.I(new c());
        C2630i.u();
        InterfaceC4162a interfaceC4162a = f34443l;
        if (interfaceC4162a != null) {
            interfaceC4162a.c();
        }
        LinkedList linkedList = new LinkedList();
        int i11 = 0;
        while (true) {
            list = f34444m;
            if (i11 >= list.size()) {
                break;
            }
            c8.d dVar = list.get(i11);
            if (dVar != null && !dVar.c()) {
                linkedList.add(dVar);
            }
            i11++;
        }
        list.removeAll(linkedList);
        linkedList.clear();
        synchronized (f34442k) {
            while (true) {
                try {
                    List<f> list2 = f34442k;
                    if (i10 < list2.size()) {
                        list2.get(i10).b();
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void v() {
        K8.a.B(new d());
    }

    public static void w(Context context) {
        C12735c.a("GAME_UNPAUSED");
        f34435d = true;
        f34436e = true;
        f34437f = true;
        int i10 = 0;
        f34438g = false;
        InterfaceC4162a interfaceC4162a = f34443l;
        if (interfaceC4162a != null) {
            interfaceC4162a.b();
        }
        LinkedList linkedList = new LinkedList();
        while (true) {
            List<c8.d> list = f34444m;
            if (i10 >= list.size()) {
                list.removeAll(linkedList);
                linkedList.clear();
                return;
            } else {
                c8.d dVar = list.get(i10);
                if (dVar != null && !dVar.d()) {
                    linkedList.add(dVar);
                }
                i10++;
            }
        }
    }
}
