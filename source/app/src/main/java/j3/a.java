package J3;

import Ic.N;
import N7.c;
import Tc.b;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.math.Quaternion;
import gb.C13317e;
import hb.C13440c;
import java.io.File;
import java.util.Iterator;
import z8.C16273a;

public class a {

    public static final N<GameObject> f10188a = new N<>();

    public static final N<String> f10189b = new N<>();

    public class RunnableC0246a implements Runnable {

        public final GameObject f10190b;

        public class RunnableC0247a implements Runnable {
            public RunnableC0247a() {
            }

            @Override
            public void run() {
                A5.a.z1(RunnableC0246a.this.f10190b);
            }
        }

        public RunnableC0246a(final GameObject val$currentObject) {
            this.f10190b = val$currentObject;
        }

        @Override
        public void run() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 = 0; i10 < this.f10190b.N(); i10++) {
                Component L10 = this.f10190b.L(i10);
                if (L10.getType() == Component.e.ObjectLink) {
                    steppedArrayList.add(L10);
                }
                if (L10.getType() == Component.e.PrefabLink) {
                    steppedArrayList.add(L10);
                }
            }
            Iterator<T> it = steppedArrayList.iterator();
            while (it.hasNext()) {
                this.f10190b.u1((Component) it.next());
            }
            this.f10190b.transform.setPosition(9999.0f);
            this.f10190b.transform.setScale(1.0f);
            this.f10190b.transform.z3(Quaternion.IDENTITY);
            this.f10190b.Q1();
            Panel3DView.y1(new Vector3(9999.0f), 7.0f);
            c.j0(new RunnableC0247a());
        }
    }

    public static void a(GameObject editingPrefab, String file) {
        GameObject clone = editingPrefab.clone();
        f10188a.e(clone);
        f10189b.e(file);
        Panel3DView.a2();
        K8.a.I(new RunnableC0246a(clone));
    }

    public static GameObject b() {
        return f10188a.b();
    }

    public static String c() {
        return f10189b.b();
    }

    public static boolean d() {
        return C13317e.J(f10188a.b());
    }

    public static void e() {
        GameObject clone = f10188a.b().clone();
        PrefabLink prefabLink = (PrefabLink) clone.c0(Component.e.PrefabLink);
        if (prefabLink != null) {
            prefabLink.setFile(f10189b.b());
        } else {
            PrefabLink prefabLink2 = new PrefabLink();
            prefabLink2.setFile(f10189b.b());
            clone.r(prefabLink2);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.R());
        sb2.append("/");
        N<String> n10 = f10189b;
        sb2.append(b.O(n10.b()));
        sb2.append(".meta/");
        File file = new File(sb2.toString());
        if (file.exists()) {
            C16273a.d(file);
        }
        X7.a.b(n10.b(), clone.x1().toString(), c.t());
        C13440c.d(n10.b());
    }

    public static void f() {
        N<GameObject> n10 = f10188a;
        if (n10.b() != null) {
            n10.b().destroy();
        }
        n10.e(null);
        f10189b.e(null);
        A5.a.z1(W7.b.f27309i.f31909a.f31910a);
        ObjectsPanel.Z1();
        Panel3DView.P1();
    }
}
