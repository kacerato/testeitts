package ib;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;

public final class C13600g {

    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f91670a = new a();

    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f91671b = new b();

    public static final ThreadLocal<Vector3> f91672c = new c();

    public static final ThreadLocal<Quaternion> f91673d = new d();

    public static final ThreadLocal<Vector3> f91674e = new e();

    public class a extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class b extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class c extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class d extends ThreadLocal<Quaternion> {
        @Override
        public Quaternion initialValue() {
            return new Quaternion();
        }
    }

    public class e extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3(1.0f);
        }
    }

    public static com.itsmagic.engine.Engines.Engine.Vector.f a(GameObject gameObject) {
        return b(gameObject, new com.itsmagic.engine.Engines.Engine.Vector.f());
    }

    public static com.itsmagic.engine.Engines.Engine.Vector.f b(GameObject gameObject, com.itsmagic.engine.Engines.Engine.Vector.f out) {
        Transform transform;
        if (out == null) {
            throw new NullPointerException("out can't be null");
        }
        if (gameObject == null || (transform = gameObject.transform) == null) {
            out.G();
            return out;
        }
        GameObject gameObject2 = gameObject.f79294k;
        if (transform.V1() || C13317e.H(gameObject) || gameObject2 == null || gameObject2.transform == null) {
            out.G();
        } else {
            b(gameObject2, out);
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = f91670a.get();
        j(gameObject.transform, fVar);
        out.L(fVar, out);
        return out;
    }

    public static float[] c(GameObject gameObject, float[] out) {
        if (out == null) {
            out = new float[16];
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = f91671b.get();
        b(gameObject, fVar);
        fVar.o(out);
        return out;
    }

    public static com.itsmagic.engine.Engines.Engine.Vector.f d(GameObject gameObject) {
        return e(gameObject, new com.itsmagic.engine.Engines.Engine.Vector.f());
    }

    public static com.itsmagic.engine.Engines.Engine.Vector.f e(GameObject gameObject, com.itsmagic.engine.Engines.Engine.Vector.f out) {
        Transform transform;
        if (out == null) {
            throw new NullPointerException("out can't be null");
        }
        if (gameObject != null && (transform = gameObject.transform) != null) {
            return g(transform, out);
        }
        out.G();
        return out;
    }

    public static com.itsmagic.engine.Engines.Engine.Vector.f f(Transform transform) {
        return g(transform, new com.itsmagic.engine.Engines.Engine.Vector.f());
    }

    public static com.itsmagic.engine.Engines.Engine.Vector.f g(Transform transform, com.itsmagic.engine.Engines.Engine.Vector.f out) {
        if (out == null) {
            throw new NullPointerException("out can't be null");
        }
        if (transform == null) {
            out.G();
            return out;
        }
        j(transform, out);
        return out;
    }

    public static float[] h(GameObject gameObject, float[] out) {
        if (out == null) {
            out = new float[16];
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = f91670a.get();
        e(gameObject, fVar);
        fVar.o(out);
        return out;
    }

    public static float[] i(Transform transform, float[] out) {
        if (out == null) {
            out = new float[16];
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = f91670a.get();
        g(transform, fVar);
        fVar.o(out);
        return out;
    }

    public static void j(Transform transform, com.itsmagic.engine.Engines.Engine.Vector.f out) {
        Vector3 vector3 = f91672c.get();
        Quaternion quaternion = f91673d.get();
        Vector3 vector32 = f91674e.get();
        transform.a1(vector3);
        transform.i1(quaternion);
        transform.r1(vector32);
        out.Z0(vector3, quaternion, vector32);
    }
}
