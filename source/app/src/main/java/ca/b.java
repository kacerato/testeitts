package Ca;

import aa.C3593a;
import aa.C3595c;
import aa.d;
import aa.e;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

public class b extends NoCodeNode implements F {

    public static final String f2485i = "TraceRayObject";

    public static final e f2486j;

    public static final int f2487k = 0;

    public static final int f2488l = 1;

    public static final int f2489m = 2;

    public static final int f2490n = 0;

    public static final int f2491o = 1;

    public static final int f2492p = 2;

    public static final int f2493q = 3;

    public static final int f2494r = 4;

    public static final int f2495s = 5;

    public static final int f2496t = 6;

    public static final int f2497u = 7;

    public static final int f2498v = 8;

    public static final int f2499w = 9;

    public final NoCodeSlot[] f2500g;

    public final NoCodeSlot[] f2501h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f2485i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Actions/Ray";
        }

        @Override
        public String f() {
            return "Trace Ray (O)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        e eVar = new e();
        f2486j = eVar;
        eVar.n(false);
        o.a(new a());
    }

    public b() {
        H h10 = H.GAME_OBJECT;
        NoCodeSlot noCodeSlot = new NoCodeSlot("Object", h10);
        Ac.b bVar = Lang.T.NOCODE_SLOT_OBJECT;
        NoCodeSlot c10 = noCodeSlot.c(Lang.l(bVar));
        NoCodeSlot c11 = new NoCodeSlot("Direction", H.DIRECTION).c(Lang.l(Lang.T.NOCODE_SLOT_DIRECTION));
        H h11 = H.NUMBER;
        NoCodeSlot noCodeSlot2 = new NoCodeSlot("Distance", h11);
        Ac.b bVar2 = Lang.T.NOCODE_SLOT_DISTANCE;
        this.f2500g = new NoCodeSlot[]{c10, c11, noCodeSlot2.c(Lang.l(bVar2))};
        H h12 = H.BRANCH;
        NoCodeSlot c12 = new NoCodeSlot("On Hit", h12).c(Lang.l(Lang.T.NOCODE_SLOT_ON_HIT));
        NoCodeSlot c13 = new NoCodeSlot("No Hit", h12).c(Lang.l(Lang.T.NOCODE_SLOT_NO_HIT));
        NoCodeSlot c14 = new NoCodeSlot("Object", h10).c(Lang.l(bVar));
        NoCodeSlot c15 = new NoCodeSlot("Collider Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER_OBJECT));
        NoCodeSlot c16 = new NoCodeSlot(Collider.f73199i3, H.COMPONENT_COLLIDER).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER));
        H h13 = H.FLOAT3;
        this.f2501h = new NoCodeSlot[]{c12, c13, c14, c15, c16, new NoCodeSlot("Point", h13).c(Lang.l(Lang.T.NOCODE_SLOT_POINT)), new NoCodeSlot("Face Normal", h13).c(Lang.l(Lang.T.NOCODE_SLOT_FACE_NORMAL)), new NoCodeSlot("Normal", h13).c(Lang.l(Lang.T.NOCODE_SLOT_NORMAL)), new NoCodeSlot("Distance", h11).c(Lang.l(bVar2)), new NoCodeSlot("UV Coord", H.FLOAT2).c(Lang.l(Lang.T.NOCODE_SLOT_UV_COORD))};
        this.serializedNodeType = f2485i;
    }

    private void G0() {
        y0(this.f2501h[2], null);
        y0(this.f2501h[3], null);
        y0(this.f2501h[4], null);
        y0(this.f2501h[5], null);
        y0(this.f2501h[6], null);
        y0(this.f2501h[7], null);
        y0(this.f2501h[8], Float.valueOf(0.0f));
        y0(this.f2501h[9], null);
    }

    private static Vector2 H0(Vector2 value) {
        if (value != null) {
            return value.clone();
        }
        return null;
    }

    private static Vector3 I0(Vector3 value) {
        if (value != null) {
            return value.m1249clone();
        }
        return null;
    }

    private GameObject L0() {
        NoCodeData noCodeData;
        GameObject A10 = C13308d.A(Q(this.f2500g[0]));
        return (C13317e.J(A10) || (noCodeData = this.f79021a) == null) ? A10 : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f2500g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f2501h;
    }

    public final void J0(GameObject targetObject, Vector3 out) {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null && noCodeData.Q(B(), 1) != null) {
            m.o0(Q(this.f2500g[1]), out);
        } else {
            NoCodeInputDefault D10 = D(1);
            m.A(D10 != null ? D10.stringValue : a(1, H.DIRECTION), targetObject, out);
        }
    }

    public final void K0(GameObject targetObject, Vector3 out) {
        if (C13317e.J(targetObject)) {
            targetObject.J0().u0(out);
        } else {
            out.set(0.0f);
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Trace Ray (O)";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "forward" : inputIndex == 2 ? "0" : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0127  */
    /* JADX WARN: Type inference failed for: r2v9, types: [aa.e] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v7, types: [aa.c, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode, Ca.b] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m0() {
        Vector3 vector3;
        d dVar;
        ?? r62;
        Throwable th2;
        Vector3 vector32;
        GameObject L02;
        float max;
        try {
            L02 = L0();
            vector3 = (Vector3) e(Vector3.class);
        } catch (Throwable th3) {
            th = th3;
            vector3 = null;
            dVar = null;
        }
        try {
            vector32 = (Vector3) e(Vector3.class);
            try {
                K0(L02, vector3);
                J0(L02, vector32);
                max = Math.max(0.0f, m.V(Q(this.f2500g[2])));
                dVar = (d) e(d.class);
                try {
                    dVar.f31957b = vector3;
                    dVar.f31958c = vector32;
                    r62 = (C3595c) e(C3595c.class);
                } catch (Throwable th4) {
                    th = th4;
                    r62 = 0;
                    th2 = th;
                    if (r62 != 0) {
                        q0(r62);
                    }
                    if (dVar != null) {
                        q0(dVar);
                    }
                    if (vector32 != null) {
                        q0(vector32);
                    }
                    if (vector3 != null) {
                        q0(vector3);
                    }
                    throw th2;
                }
            } catch (Throwable th5) {
                th = th5;
                dVar = null;
                r62 = 0;
            }
            try {
                r62.f31953b = dVar;
                r62.f31954c = max;
                r62.f31955d = null;
                C3593a z10 = f2486j.z(r62, true);
                if (z10 == null) {
                    G0();
                    u(this.f2501h[1]);
                    q0(r62);
                    q0(dVar);
                    if (vector32 != null) {
                        q0(vector32);
                    }
                    if (vector3 != null) {
                        q0(vector3);
                        return;
                    }
                    return;
                }
                y0(this.f2501h[2], z10.getGameObject());
                y0(this.f2501h[3], z10.e());
                y0(this.f2501h[4], z10.d() != null ? z10.d().toJAVARuntime() : null);
                y0(this.f2501h[5], I0(z10.i()));
                y0(this.f2501h[6], I0(z10.f()));
                y0(this.f2501h[7], I0(z10.h()));
                y0(this.f2501h[8], Float.valueOf(z10.getDistance()));
                y0(this.f2501h[9], H0(z10.p()));
                u(this.f2501h[0]);
                q0(r62);
                q0(dVar);
                if (vector32 != null) {
                    q0(vector32);
                }
                if (vector3 != null) {
                    q0(vector3);
                }
            } catch (Throwable th6) {
                th2 = th6;
                if (r62 != 0) {
                }
                if (dVar != null) {
                }
                if (vector32 != null) {
                }
                if (vector3 != null) {
                }
                throw th2;
            }
        } catch (Throwable th7) {
            th = th7;
            dVar = null;
            r62 = dVar;
            th2 = th;
            vector32 = r62;
            if (r62 != 0) {
            }
            if (dVar != null) {
            }
            if (vector32 != null) {
            }
            if (vector3 != null) {
            }
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_TRACE_RAY_OBJECT);
    }
}
