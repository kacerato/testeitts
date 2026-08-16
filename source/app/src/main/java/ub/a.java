package Ub;

import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import t3.C15377a;

public class a {

    public static final List<GizmoElement> f25944a = new SteppedArrayList(100);

    public static final List<GizmoElement> f25945b = new SteppedArrayList(100);

    public static final List<GizmoElement> f25946c = new SteppedArrayList(100);

    public static final AtomicBoolean f25947d = new AtomicBoolean(true);

    public static long f25948e = 0;

    public static void a(GizmoElement gizmoObject) {
        K8.a.G();
        if (Camera.isAnyEditorCameraRendering()) {
            if (C15377a.f109719g.booleanValue() || f25947d.get()) {
                if (gizmoObject == null) {
                    throw new NullPointerException("gizmo element can't be null");
                }
                f25945b.add(gizmoObject);
            } else {
                if (K8.a.r()) {
                    if (f25948e != K8.a.f10989t) {
                        throw new IllegalStateException("FSQ was locked but not unlock previous frame");
                    }
                    throw new IllegalStateException("Current frame data already binded");
                }
                throw new IllegalStateException("Current frame data already binded: illegal thread:" + Thread.currentThread().getName());
            }
        }
    }

    public static void b() {
        List<GizmoElement> list;
        c.a();
        int i10 = 0;
        while (true) {
            list = f25944a;
            if (i10 >= list.size()) {
                break;
            }
            GizmoElement gizmoElement = list.get(i10);
            if ((gizmoElement instanceof GizmoObject) && gizmoElement.isPooling()) {
                c.l((GizmoObject) gizmoElement);
            }
            i10++;
        }
        list.clear();
        List<GizmoElement> list2 = f25945b;
        if (list2.isEmpty()) {
            return;
        }
        list.addAll(list2);
        list2.clear();
    }

    public static List<GizmoElement> c() {
        return f25944a;
    }

    public static void d() {
        f25947d.set(true);
    }

    public static void e() {
        f25948e = K8.a.f10989t;
        f25947d.set(false);
    }
}
