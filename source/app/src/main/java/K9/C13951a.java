package k9;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import h9.InterfaceC13435a;

public class C13951a {

    public static final ThreadLocal<f> f94985a = new C1841a();

    public static final ThreadLocal<f> f94986b = new b();

    public static final ThreadLocal<f> f94987c = new c();

    public class C1841a extends ThreadLocal<f> {
        @Override
        public f initialValue() {
            return new f();
        }
    }

    public class b extends ThreadLocal<f> {
        @Override
        public f initialValue() {
            return new f();
        }
    }

    public class c extends ThreadLocal<f> {
        @Override
        public f initialValue() {
            return new f();
        }
    }

    public static void a(Vector3 out, GameObject gameObject) {
        f fVar = f94985a.get();
        Component i02 = gameObject.i0(InterfaceC13435a.class);
        if (i02 != null) {
            fVar.Q0(i02.f79250n.transform, false, true, false);
            fVar.E();
            fVar.o0(gameObject.transform.e0(), gameObject.transform.f0(), gameObject.transform.g0(), out);
            out.normalizeLocal();
        }
    }

    public static void b(Vector3 out, GameObject gameObject) {
        f fVar = f94985a.get();
        f fVar2 = f94986b.get();
        f fVar3 = f94987c.get();
        Component i02 = gameObject.i0(InterfaceC13435a.class);
        if (i02 != null) {
            fVar.Q0(i02.f79250n.transform, true, true, false);
            fVar.E();
            gameObject.transform.p0(fVar2);
            fVar.m0(fVar2, fVar3);
            fVar3.D1(out);
        }
    }
}
