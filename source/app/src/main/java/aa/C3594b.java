package aa;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class C3594b {

    public static final float f31934a = 1.0E-5f;

    public static final ThreadLocal<Vector3> f31935b = new j();

    public static final ThreadLocal<Vector3> f31936c = new k();

    public static final ThreadLocal<Vector3> f31937d = new l();

    public static final ThreadLocal<Vector3> f31938e = new m();

    public static final ThreadLocal<Vector3> f31939f = new n();

    public static final ThreadLocal<Vector3> f31940g = new o();

    public static final ThreadLocal<Vector3> f31941h = new p();

    public static final ThreadLocal<Vector3> f31942i = new q();

    public static final ThreadLocal<Vector2> f31943j = new r();

    public static final ThreadLocal<Vector2> f31944k = new a();

    public static final ThreadLocal<Vector2> f31945l = new C0853b();

    public static final ThreadLocal<Vector2> f31946m = new c();

    public static final ThreadLocal<Vector2> f31947n = new d();

    public static final ThreadLocal<Vector3> f31948o = new e();

    public static final ThreadLocal<Vector3> f31949p = new f();

    public static final ThreadLocal<Vector3> f31950q = new g();

    public static final ThreadLocal<Vector3> f31951r = new h();

    public static final ThreadLocal<Vector3> f31952s = new i();

    public class a extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class C0853b extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class c extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class d extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class e extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class f extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class g extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class h extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class i extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class j extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class k extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class l extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class m extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class n extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class o extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class p extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class q extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class r extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public static Vector2 a(Vector3 v02, Vector3 v12, Vector3 v22, Vector3 point, Vector2 uv0, Vector2 uv1, Vector2 uv2) {
        return b(v02, v12, v22, point, uv0, uv1, uv2, new Vector2());
    }

    public static Vector2 b(Vector3 v02, Vector3 v12, Vector3 v22, Vector3 point, Vector2 uv0, Vector2 uv1, Vector2 uv2, Vector2 out) {
        Vector3 sub = v02.sub(point, f31935b.get());
        Vector3 sub2 = v12.sub(point, f31936c.get());
        Vector3 sub3 = v22.sub(point, f31937d.get());
        float lengthF = Vector3.crossProduct(v02.sub(v12, f31938e.get()), v02.sub(v22, f31939f.get())).lengthF();
        out.x0(uv0.f0(Vector3.crossProduct(sub2, sub3, f31940g.get()).lengthF() / lengthF, f31943j.get()).k(uv1.f0(Vector3.crossProduct(sub3, sub, f31941h.get()).lengthF() / lengthF, f31944k.get()), f31945l.get()).k(uv2.f0(Vector3.crossProduct(sub, sub2, f31942i.get()).lengthF() / lengthF, f31946m.get()), f31947n.get()));
        return out;
    }

    public static Vector3 c(Vector3 v02, Vector3 v12, Vector3 v22, Vector3 point, Vector3 uv0, Vector3 uv1, Vector3 uv2) {
        return d(v02, v12, v22, point, uv0, uv1, uv2, new Vector3());
    }

    public static Vector3 d(Vector3 v02, Vector3 v12, Vector3 v22, Vector3 point, Vector3 uv0, Vector3 uv1, Vector3 uv2, Vector3 out) {
        Vector3 sub = v02.sub(point, f31935b.get());
        Vector3 sub2 = v12.sub(point, f31936c.get());
        Vector3 sub3 = v22.sub(point, f31937d.get());
        float lengthF = Vector3.crossProduct(v02.sub(v12, f31938e.get()), v02.sub(v22, f31939f.get())).lengthF();
        out.set(uv0.mul(Vector3.crossProduct(sub2, sub3, f31940g.get()).lengthF() / lengthF, f31952s.get()).add(uv1.mul(Vector3.crossProduct(sub3, sub, f31941h.get()).lengthF() / lengthF, f31948o.get()), f31950q.get()).add(uv2.mul(Vector3.crossProduct(sub, sub2, f31942i.get()).lengthF() / lengthF, f31949p.get()), f31951r.get()));
        return out;
    }

    public static float e(C3595c r10, Vector3 v02, Vector3 v12, Vector3 v22) {
        Vector3 sub = v12.sub(v02);
        Vector3 sub2 = v22.sub(v02);
        Vector3 cross = r10.f31953b.f31958c.cross(sub2);
        float dot = sub.dot(cross);
        if (Math.abs(dot) < 1.0E-5f) {
            return Float.NEGATIVE_INFINITY;
        }
        float f10 = (float) (1.0d / dot);
        Vector3 sub3 = r10.f31953b.f31957b.sub(v02);
        float dot2 = sub3.dot(cross) * f10;
        if (dot2 >= 0.0f && dot2 <= 1.0f) {
            Vector3 cross2 = sub3.cross(sub);
            float dot3 = r10.f31953b.f31958c.dot(cross2) * f10;
            if (dot3 >= 0.0f && dot2 + dot3 <= 1.0f) {
                return sub2.dot(cross2) * f10;
            }
        }
        return Float.NEGATIVE_INFINITY;
    }

    public static float f(C3595c r10, Vector3 v02, Vector3 v12, Vector3 v22, Vector3 tmp1, Vector3 tmp2, Vector3 tmp3, Vector3 tmp4) {
        Vector3 sub = v12.sub(v02, tmp1);
        Vector3 sub2 = v22.sub(v02, tmp2);
        Vector3 cross = r10.f31953b.f31958c.cross(sub2, tmp3);
        float dot = sub.dot(cross);
        if (Math.abs(dot) < 1.0E-5f) {
            return Float.NEGATIVE_INFINITY;
        }
        float f10 = (float) (1.0d / dot);
        Vector3 sub3 = r10.f31953b.f31957b.sub(v02, tmp4);
        float dot2 = sub3.dot(cross) * f10;
        if (dot2 >= 0.0f && dot2 <= 1.0f) {
            Vector3 cross2 = sub3.cross(sub);
            float dot3 = r10.f31953b.f31958c.dot(cross2) * f10;
            if (dot3 >= 0.0f && dot2 + dot3 <= 1.0f) {
                return sub2.dot(cross2) * f10;
            }
        }
        return Float.NEGATIVE_INFINITY;
    }

    public static float g(C3595c r10, Vector3 v02, Vector3 v12, Vector3 v22, Vector3 tmp1, Vector3 tmp2, Vector3 tmp3, Vector3 tmp4, Vector3 tuv) {
        Vector3 sub = v12.sub(v02, tmp1);
        Vector3 sub2 = v22.sub(v02, tmp2);
        Vector3 cross = r10.f31953b.f31958c.cross(sub2, tmp3);
        float dot = sub.dot(cross);
        if (Math.abs(dot) < 1.0E-5f) {
            return Float.NEGATIVE_INFINITY;
        }
        float f10 = (float) (1.0d / dot);
        Vector3 sub3 = r10.f31953b.f31957b.sub(v02, tmp4);
        float dot2 = sub3.dot(cross) * f10;
        if (dot2 >= 0.0f && dot2 <= 1.0f) {
            Vector3 cross2 = sub3.cross(sub);
            float dot3 = r10.f31953b.f31958c.dot(cross2) * f10;
            if (dot3 >= 0.0f && dot2 + dot3 <= 1.0f) {
                float dot4 = sub2.dot(cross2) * f10;
                tuv.set(dot4, dot2, dot3);
                return dot4;
            }
        }
        return Float.NEGATIVE_INFINITY;
    }

    public static float h(boolean backfaceCulling, C3595c r10, Vector3 v02, Vector3 v12, Vector3 v22, Vector3 tmp1, Vector3 tmp2, Vector3 tmp3, Vector3 tmp4) {
        Vector3 sub = v12.sub(v02, tmp1);
        Vector3 sub2 = v22.sub(v02, tmp2);
        Vector3 cross = r10.f31953b.f31958c.cross(sub2, tmp3);
        float dot = sub.dot(cross);
        if (backfaceCulling) {
            if (dot < 1.0E-5f) {
                return Float.NEGATIVE_INFINITY;
            }
        } else if (Math.abs(dot) < 1.0E-5f) {
            return Float.NEGATIVE_INFINITY;
        }
        float f10 = (float) (1.0d / dot);
        Vector3 sub3 = r10.f31953b.f31957b.sub(v02, tmp4);
        float dot2 = sub3.dot(cross) * f10;
        if (dot2 >= 0.0f && dot2 <= 1.0f) {
            Vector3 cross2 = sub3.cross(sub);
            float dot3 = r10.f31953b.f31958c.dot(cross2) * f10;
            if (dot3 >= 0.0f && dot2 + dot3 <= 1.0f) {
                return sub2.dot(cross2) * f10;
            }
        }
        return Float.NEGATIVE_INFINITY;
    }
}
