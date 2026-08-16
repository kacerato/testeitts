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
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

public class a extends NoCodeNode implements F {

    public static final String f2468i = "TraceRay";

    public static final e f2469j;

    public static final int f2470k = 0;

    public static final int f2471l = 1;

    public static final int f2472m = 2;

    public static final int f2473n = 0;

    public static final int f2474o = 1;

    public static final int f2475p = 2;

    public static final int f2476q = 3;

    public static final int f2477r = 4;

    public static final int f2478s = 5;

    public static final int f2479t = 6;

    public static final int f2480u = 7;

    public static final int f2481v = 8;

    public static final int f2482w = 9;

    public final NoCodeSlot[] f2483g;

    public final NoCodeSlot[] f2484h;

    public class C0082a implements p {
        @Override
        public NoCodeNode a() {
            return new a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return a.class;
        }

        @Override
        public String c() {
            return a.f2468i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Actions/Ray";
        }

        @Override
        public String f() {
            return "Trace Ray (P)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        e eVar = new e();
        f2469j = eVar;
        eVar.n(false);
        o.a(new C0082a());
    }

    public a() {
        H h10 = H.FLOAT3;
        NoCodeSlot c10 = new NoCodeSlot("Position", h10).c(Lang.l(Lang.T.NOCODE_SLOT_POSITION));
        NoCodeSlot c11 = new NoCodeSlot("Direction", H.DIRECTION).c(Lang.l(Lang.T.NOCODE_SLOT_DIRECTION));
        H h11 = H.NUMBER;
        NoCodeSlot noCodeSlot = new NoCodeSlot("Distance", h11);
        Ac.b bVar = Lang.T.NOCODE_SLOT_DISTANCE;
        this.f2483g = new NoCodeSlot[]{c10, c11, noCodeSlot.c(Lang.l(bVar))};
        H h12 = H.BRANCH;
        NoCodeSlot c12 = new NoCodeSlot("On Hit", h12).c(Lang.l(Lang.T.NOCODE_SLOT_ON_HIT));
        NoCodeSlot c13 = new NoCodeSlot("No Hit", h12).c(Lang.l(Lang.T.NOCODE_SLOT_NO_HIT));
        H h13 = H.GAME_OBJECT;
        this.f2484h = new NoCodeSlot[]{c12, c13, new NoCodeSlot("Object", h13).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Collider Object", h13).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER_OBJECT)), new NoCodeSlot(Collider.f73199i3, H.COMPONENT_COLLIDER).c(Lang.l(Lang.T.NOCODE_SLOT_COLLIDER)), new NoCodeSlot("Point", h10).c(Lang.l(Lang.T.NOCODE_SLOT_POINT)), new NoCodeSlot("Face Normal", h10).c(Lang.l(Lang.T.NOCODE_SLOT_FACE_NORMAL)), new NoCodeSlot("Normal", h10).c(Lang.l(Lang.T.NOCODE_SLOT_NORMAL)), new NoCodeSlot("Distance", h11).c(Lang.l(bVar)), new NoCodeSlot("UV Coord", H.FLOAT2).c(Lang.l(Lang.T.NOCODE_SLOT_UV_COORD))};
        this.serializedNodeType = f2468i;
    }

    public static Vector2 H0(Vector2 value) {
        if (value != null) {
            return value.clone();
        }
        return null;
    }

    public static Vector3 I0(Vector3 value) {
        if (value != null) {
            return value.m1249clone();
        }
        return null;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f2483g;
    }

    public final void G0() {
        y0(this.f2484h[2], null);
        y0(this.f2484h[3], null);
        y0(this.f2484h[4], null);
        y0(this.f2484h[5], null);
        y0(this.f2484h[6], null);
        y0(this.f2484h[7], null);
        y0(this.f2484h[8], Float.valueOf(0.0f));
        y0(this.f2484h[9], null);
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f2484h;
    }

    public final void J0(Vector3 out) {
        if (!L0(1)) {
            m.o0(Q(this.f2483g[1]), out);
            return;
        }
        NoCodeData noCodeData = this.f79021a;
        GameObject h02 = noCodeData != null ? noCodeData.h0() : null;
        if (C13317e.J(h02)) {
            h02.J0().a0(out);
        } else {
            out.set(0.0f, 0.0f, 1.0f);
        }
    }

    public final void K0(Vector3 out) {
        if (!L0(0)) {
            m.o0(Q(this.f2483g[0]), out);
            return;
        }
        NoCodeData noCodeData = this.f79021a;
        GameObject h02 = noCodeData != null ? noCodeData.h0() : null;
        if (C13317e.J(h02)) {
            h02.J0().u0(out);
        } else {
            out.set(0.0f);
        }
    }

    public final boolean L0(int inputIndex) {
        if (this.f79021a == null || inputIndex < 0) {
            return true;
        }
        return D(inputIndex) == null && this.f79021a.Q(B(), inputIndex) == null;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Trace Ray (P)";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 1 ? "forward" : inputIndex == 2 ? "0" : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0123  */
    /* JADX WARN: Type inference failed for: r3v8, types: [aa.e] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v7, types: [aa.c, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode, Ca.a] */
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
        float max;
        try {
            vector3 = (Vector3) e(Vector3.class);
            try {
                vector32 = (Vector3) e(Vector3.class);
                try {
                    K0(vector3);
                    J0(vector32);
                    max = Math.max(0.0f, m.V(Q(this.f2483g[2])));
                    dVar = (d) e(d.class);
                    try {
                        dVar.f31957b = vector3;
                        dVar.f31958c = vector32;
                        r62 = (C3595c) e(C3595c.class);
                    } catch (Throwable th3) {
                        th = th3;
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
                } catch (Throwable th4) {
                    th = th4;
                    dVar = null;
                    r62 = 0;
                }
                try {
                    r62.f31953b = dVar;
                    r62.f31954c = max;
                    r62.f31955d = null;
                    C3593a z10 = f2469j.z(r62, true);
                    if (z10 == null) {
                        G0();
                        u(this.f2484h[1]);
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
                    y0(this.f2484h[2], z10.getGameObject());
                    y0(this.f2484h[3], z10.e());
                    y0(this.f2484h[4], z10.d() != null ? z10.d().toJAVARuntime() : null);
                    y0(this.f2484h[5], I0(z10.i()));
                    y0(this.f2484h[6], I0(z10.f()));
                    y0(this.f2484h[7], I0(z10.h()));
                    y0(this.f2484h[8], Float.valueOf(z10.getDistance()));
                    y0(this.f2484h[9], H0(z10.p()));
                    u(this.f2484h[0]);
                    q0(r62);
                    q0(dVar);
                    if (vector32 != null) {
                        q0(vector32);
                    }
                    if (vector3 != null) {
                        q0(vector3);
                    }
                } catch (Throwable th5) {
                    th2 = th5;
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
            } catch (Throwable th6) {
                th = th6;
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
        } catch (Throwable th7) {
            th = th7;
            vector3 = null;
            dVar = null;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_TRACE_RAY);
    }
}
