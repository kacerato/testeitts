package com.itsmagic.engine.Engines.Engine.World;

import I5.c;
import Ic.N;
import JAVARuntime.AtomicFloat;
import Mb.b;
import com.google.gson.JsonSyntaxException;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import gb.C13315c;
import gb.C13317e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

public class b {

    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f80049a = new a();

    public static final List<h> f80050b = new LinkedList();

    public class a extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class RunnableC1373b implements Runnable {

        public final Mb.a f80051b;

        public class a implements h {
            public a() {
            }

            @Override
            public void execute() {
                Mb.a aVar = RunnableC1373b.this.f80051b;
                if (aVar.f14841b == null && aVar.f14843d) {
                    ObjectsPanel.C1(aVar.f14840a, aVar.f14842c);
                } else {
                    ObjectsPanel.B1(aVar.f14840a);
                }
            }
        }

        public RunnableC1373b(final Mb.a val$dic) {
            this.f80051b = val$dic;
        }

        @Override
        public void run() {
            GameObject T10;
            try {
                Mb.a aVar = this.f80051b;
                GameObject gameObject = aVar.f14840a;
                if (gameObject != null) {
                    GameObject gameObject2 = aVar.f14841b;
                    if (gameObject2 == null) {
                        if (aVar.f14843d) {
                            List<GameObject> q10 = com.itsmagic.engine.Engines.Engine.World.a.f80030c.q();
                            Mb.a aVar2 = this.f80051b;
                            q10.add(aVar2.f14842c, aVar2.f14840a);
                        } else {
                            com.itsmagic.engine.Engines.Engine.World.a.f80030c.q().add(this.f80051b.f14840a);
                        }
                    } else if (aVar.f14844e) {
                        gameObject2.s(gameObject);
                    } else if (aVar.f14843d) {
                        C13317e.c(gameObject2, gameObject, aVar.f14842c, 0);
                    } else {
                        C13317e.b(gameObject2, gameObject, 0);
                    }
                    Mb.a aVar3 = this.f80051b;
                    GameObject gameObject3 = aVar3.f14840a;
                    gameObject3.f79294k = aVar3.f14841b;
                    gameObject3.transform.setGameObject(gameObject3);
                    this.f80051b.f14840a.transform.Z();
                    this.f80051b.f14840a.S1();
                    this.f80051b.f14840a.Z1();
                    this.f80051b.f14840a.r1();
                    Mb.a aVar4 = this.f80051b;
                    GameObject gameObject4 = aVar4.f14840a;
                    GameObject gameObject5 = aVar4.f14841b;
                    gameObject4.t1(gameObject5 != null ? gameObject5.isEnabled() : true);
                    this.f80051b.f14840a.v();
                    if (this.f80051b.f14844e) {
                        return;
                    }
                    b.f80050b.add(new a());
                    return;
                }
                Mb.b bVar = aVar.f14846g;
                if (bVar != null) {
                    try {
                        b.a aVar5 = bVar.f14850d;
                        if (aVar5 == b.a.OBJ) {
                            String str = bVar.f14849c;
                            if (str == null) {
                                str = com.itsmagic.engine.Core.Components.ProjectController.a.q();
                            }
                            T10 = new GameObject(this.f80051b.f14846g.f14848b, new Transform(new Vector3(0.0f, 3.0f, 0.0f)), new ModelRenderer(this.f80051b.f14846g.f14847a, str));
                        } else {
                            T10 = aVar5 == b.a.PREFAB ? GameObject.T(X7.a.r(bVar.f14847a), false, true) : null;
                        }
                        if (T10 != null) {
                            if (T10.f79294k == null) {
                                com.itsmagic.engine.Engines.Engine.World.a.f80030c.q().add(T10);
                            }
                            T10.S1();
                            T10.Z1();
                            T10.transform.setGameObject(T10);
                            T10.transform.Z();
                            T10.r1();
                            GameObject gameObject6 = T10.f79294k;
                            T10.t1(gameObject6 != null ? gameObject6.isEnabled() : true);
                            T10.v();
                            try {
                                T10.transform.p3(Cursor3D.f71511K.m1249clone());
                            } catch (Exception unused) {
                            }
                            ObjectsPanel.B1(T10);
                            if (this.f80051b.f14846g.f14852f) {
                                W7.b.f27308h.h(T10);
                            }
                        }
                    } catch (JsonSyntaxException e10) {
                        e10.printStackTrace();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        public final GameObject f80053b;

        public final GameObject f80054c;

        public final boolean f80055d;

        public class a implements Runnable {

            public final GameObject f80056b;

            public a(final GameObject val$moveObject) {
                this.f80056b = val$moveObject;
            }

            @Override
            public void run() {
                W7.b.f27308h.h(this.f80056b);
            }
        }

        public class C1374b implements h {

            public final GameObject f80058a;

            public final GameObject f80059b;

            public final GameObject f80060c;

            public C1374b(final GameObject val$moveObject, final GameObject val$moveFromParent, final GameObject val$moveToParent) {
                this.f80058a = val$moveObject;
                this.f80059b = val$moveFromParent;
                this.f80060c = val$moveToParent;
            }

            @Override
            public void execute() {
                ObjectsPanel.X1(this.f80058a, this.f80059b, this.f80060c);
            }
        }

        public c(final GameObject val$gameObject, final GameObject val$parent, final boolean val$dontChangePositions) {
            this.f80053b = val$gameObject;
            this.f80054c = val$parent;
            this.f80055d = val$dontChangePositions;
        }

        @Override
        public void run() {
            try {
                GameObject gameObject = this.f80053b;
                GameObject gameObject2 = gameObject.f79294k;
                GameObject gameObject3 = this.f80054c;
                gameObject.w();
                if (gameObject2 != null) {
                    gameObject2.z0().remove(gameObject);
                } else {
                    com.itsmagic.engine.Engines.Engine.World.a.f80030c.q().remove(gameObject);
                }
                if (gameObject3 != null) {
                    if (gameObject3.transform != null && gameObject.transform != null && !this.f80055d && !C13317e.H(gameObject3)) {
                        com.itsmagic.engine.Engines.Engine.Vector.f fVar = (com.itsmagic.engine.Engines.Engine.Vector.f) b.f80049a.get();
                        Transform.E(fVar, gameObject, gameObject3);
                        gameObject.transform.c3(fVar);
                    }
                    gameObject3.z0().add(gameObject);
                } else {
                    com.itsmagic.engine.Engines.Engine.World.a.f80030c.q().add(gameObject);
                    if (!this.f80055d) {
                        Transform transform = gameObject.transform;
                        transform.p3(transform.u0((Vector3) JP.acquire(Vector3.class)));
                        Transform transform2 = gameObject.transform;
                        transform2.x3(transform2.B0());
                        Transform transform3 = gameObject.transform;
                        transform3.setScale(transform3.J0());
                        gameObject.transform.Z();
                    }
                }
                gameObject.f79294k = gameObject3;
                gameObject.transform.Z();
                gameObject.v();
                gameObject.t1(gameObject3 != null ? gameObject3.isEnabled() : true);
                gameObject.v();
                GameObject gameObject4 = W7.b.f27309i.f31909a.f31910a;
                if (gameObject4 != null && gameObject4 == gameObject) {
                    N7.c.j0(new a(gameObject));
                }
                b.f80050b.add(new C1374b(gameObject, gameObject2, gameObject3));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class d implements Runnable {

        public final GameObject f80062b;

        public class a implements h {
            public a() {
            }

            @Override
            public void execute() {
                ObjectsPanel.S1(d.this.f80062b);
            }
        }

        public d(final GameObject val$o) {
            this.f80062b = val$o;
        }

        @Override
        public void run() {
            try {
                if (C13317e.J(this.f80062b.f79294k)) {
                    this.f80062b.f79294k.z0().remove(this.f80062b);
                    this.f80062b.f79294k.E0().remove(this.f80062b);
                } else {
                    com.itsmagic.engine.Engines.Engine.World.a.f80030c.q().remove(this.f80062b);
                    K8.a.D(this.f80062b);
                }
                if (!this.f80062b.f79297n) {
                    b.f80050b.add(new a());
                }
                this.f80062b.Y1();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class e implements c.b {

        public final N f80064a;

        public final AtomicBoolean f80065b;

        public final AtomicFloat f80066c;

        public final AtomicInteger f80067d;

        public final AtomicInteger f80068e;

        public e(final N val$message, final AtomicBoolean val$finished, final AtomicFloat val$totalStepLoaded, final AtomicInteger val$totalLoaded, final AtomicInteger val$totalLoading) {
            this.f80064a = val$message;
            this.f80065b = val$finished;
            this.f80066c = val$totalStepLoaded;
            this.f80067d = val$totalLoaded;
            this.f80068e = val$totalLoading;
        }

        @Override
        public float a() {
            if (finished()) {
                return 1.0f;
            }
            float d10 = d();
            return (b() / d10) + ((1.0f / d10) * c());
        }

        @Override
        public int b() {
            return this.f80067d.get();
        }

        @Override
        public float c() {
            return this.f80066c.get();
        }

        @Override
        public int d() {
            return this.f80068e.get();
        }

        @Override
        public boolean finished() {
            return this.f80065b.get();
        }

        @Override
        public String getMessage() {
            return (String) this.f80064a.b();
        }
    }

    public class f implements Runnable {

        public final String f80069b;

        public final g f80070c;

        public final N f80071d;

        public final AtomicInteger f80072e;

        public final AtomicFloat f80073f;

        public final AtomicInteger f80074g;

        public final AtomicBoolean f80075h;

        public class a implements Lb.a {
            public a() {
            }

            @Override
            public void b(String t10) {
                g gVar = f.this.f80070c;
                if (gVar != null) {
                    gVar.b(t10);
                }
                f.this.f80071d.e(t10);
            }

            @Override
            public void c() {
                f.this.f80074g.incrementAndGet();
            }

            @Override
            public void d(float v10) {
                f.this.f80073f.set(v10);
            }

            @Override
            public void e() {
                f.this.f80072e.incrementAndGet();
                f.this.f80073f.set(0.0f);
            }
        }

        public class C1375b implements Consumer<Component> {

            public final Lb.a f80077b;

            public final World.c f80078c;

            public C1375b(final Lb.a val$awll, final World.c val$bundle) {
                this.f80077b = val$awll;
                this.f80078c = val$bundle;
            }

            @Override
            public void accept(Component component) {
                String str;
                try {
                    component.loadAsync(this.f80077b);
                    if (component.hasMaterialForAsyncLoad()) {
                        List<Material> materialsForAsyncLoad = component.getMaterialsForAsyncLoad();
                        for (Material material : materialsForAsyncLoad) {
                            for (int i10 = 0; i10 < material.B().size(); i10++) {
                                SerializableShaderEntry serializableShaderEntry = material.B().get(i10);
                                if (serializableShaderEntry.type.equals(SerializableShaderEntry.f81152f) && (str = serializableShaderEntry.data) != null && !str.isEmpty()) {
                                    try {
                                        serializableShaderEntry.f81158a = SerializableShaderEntry.u(serializableShaderEntry);
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                            }
                        }
                        synchronized (this.f80078c.f80027c) {
                            this.f80078c.f80027c.addAll(materialsForAsyncLoad);
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }

        public f(final String val$ipp, final g val$listener, final N val$message, final AtomicInteger val$totalLoaded, final AtomicFloat val$totalStepLoaded, final AtomicInteger val$totalLoading, final AtomicBoolean val$finished) {
            this.f80069b = val$ipp;
            this.f80070c = val$listener;
            this.f80071d = val$message;
            this.f80072e = val$totalLoaded;
            this.f80073f = val$totalStepLoaded;
            this.f80074g = val$totalLoading;
            this.f80075h = val$finished;
        }

        @Override
        public void run() {
            String str;
            try {
                str = X7.a.s(this.f80069b, N7.c.t());
            } catch (Exception e10) {
                e10.printStackTrace();
                str = null;
            }
            if (str == null || str.isEmpty()) {
                return;
            }
            GameObject T10 = GameObject.T(str, false, true);
            if (T10 != null) {
                T10.E1(Tc.b.w(this.f80069b, true));
                World.c cVar = new World.c();
                a aVar = new a();
                T10.P(cVar.f80026b);
                this.f80074g.set(cVar.f80025a);
                this.f80072e.set(0);
                cVar.f80026b.forEach(new C1375b(aVar, cVar));
                Iterator<Material> it = cVar.f80027c.iterator();
                while (it.hasNext()) {
                    it.next().f78883c = false;
                }
                T10.Q1();
                this.f80075h.set(true);
            }
            g gVar = this.f80070c;
            if (gVar != null) {
                gVar.a(T10);
            }
        }
    }

    public interface g {
        void a(GameObject object);

        void b(String t10);

        void onUpdate();
    }

    public interface h {
        void execute();
    }

    public static void c(GameObject o10) {
        K8.a.B(new d(o10));
    }

    public static void d(Mb.a dic) {
        K8.a.I(new RunnableC1373b(dic));
    }

    public static void e(GameObject gameObject) {
        d(new Mb.a(gameObject, null));
    }

    public static void f(GameObject gameObject, GameObject parent) {
        if (gameObject == parent) {
            throw new RuntimeException("Parent can't be the same object");
        }
        d(new Mb.a(gameObject, parent));
    }

    public static void g(GameObject gameObject, GameObject parent, boolean changeMatrix) {
        if (gameObject == parent) {
            throw new RuntimeException("Parent can't be the same object");
        }
        Mb.a aVar = new Mb.a(gameObject, parent);
        aVar.f14845f = changeMatrix;
        d(aVar);
    }

    public static void h(GameObject gameObject, GameObject parent) {
        if (gameObject == parent) {
            throw new RuntimeException("Parent can't be the same object");
        }
        if (parent == null) {
            throw new NullPointerException("Parent can't be null for ghost objects");
        }
        gameObject.f79297n = true;
        Mb.a aVar = new Mb.a(gameObject, parent);
        aVar.f14844e = true;
        d(aVar);
    }

    public static void i(String ipp, boolean showPanel, g listener) {
        AtomicInteger atomicInteger = new AtomicInteger();
        AtomicInteger atomicInteger2 = new AtomicInteger();
        AtomicFloat atomicFloat = new AtomicFloat();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        N n10 = new N();
        if (showPanel) {
            I5.c.r1(new e(n10, atomicBoolean, atomicFloat, atomicInteger2, atomicInteger));
        }
        Thread thread = new Thread(new f(ipp, listener, n10, atomicInteger2, atomicFloat, atomicInteger, atomicBoolean));
        thread.setPriority(10);
        thread.start();
    }

    public static void j() {
        if (f80050b.size() <= 4) {
            int i10 = 0;
            while (true) {
                List<h> list = f80050b;
                if (i10 >= list.size()) {
                    break;
                }
                h hVar = list.get(i10);
                if (hVar != null) {
                    hVar.execute();
                }
                i10++;
            }
        } else {
            ObjectsPanel.N1();
        }
        f80050b.clear();
    }

    public static void k(GameObject gameObject, GameObject parent) {
        if (gameObject == parent) {
            throw new RuntimeException("Parent can't be the same object");
        }
        l(gameObject, parent, false);
    }

    public static void l(GameObject gameObject, GameObject parent, boolean dontChangePositions) {
        if (gameObject == parent) {
            throw new RuntimeException("Parent can't be the same object");
        }
        K8.a.I(new c(gameObject, parent, dontChangePositions));
    }

    public static GameObject m() {
        return n(null);
    }

    public static GameObject n(GameObject parent) {
        GameObject gameObject = new GameObject("== GROUP ==");
        gameObject.groupSettings = new C13315c();
        gameObject.objectsPanelColor = new ColorINT("#ffffa69e");
        gameObject.optionsEditor.i(true);
        gameObject.transform.k3(true);
        f(gameObject, parent);
        return gameObject;
    }

    public static void o() {
    }
}
