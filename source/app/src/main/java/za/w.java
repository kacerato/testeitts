package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import gb.C13317e;

public class w extends NoCodeNode implements ga.F {

    public static final String f130959h = "PositionSway";

    public static final int f130960i = 0;

    public static final int f130961j = 1;

    public static final int f130962k = 2;

    public final NoCodeSlot[] f130963g;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new w();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return w.class;
        }

        @Override
        public String c() {
            return w.f130959h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, w.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Position Sway";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public w() {
        H h10 = H.GAME_OBJECT;
        this.f130963g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Target", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TARGET)), new NoCodeSlot("Damping", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_DAMPING))};
        this.serializedNodeType = f130959h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130963g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Position Sway";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : inputIndex == 2 ? "8" : "";
    }

    @Override
    public void m0() {
        Vector3 vector3;
        Throwable th2;
        Vector3 vector32;
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f130963g[0]);
            GameObject b11 = Aa.b.b(this, this.f79021a, this.f130963g[1]);
            if (C13317e.J(b10) && C13317e.J(b11)) {
                float b12 = Ic.A.b(K8.d.b()) * Math.max(0.0f, Ic.A.b(ga.m.V(Q(this.f130963g[2]))));
                vector3 = (Vector3) e(Vector3.class);
                try {
                    vector32 = (Vector3) e(Vector3.class);
                    try {
                        b10.J0().u0(vector3);
                        b11.J0().u0(vector32);
                        vector3.blendLocal(vector32, b12);
                        b10.J0().h3(vector3);
                        q0(vector3);
                        if (vector32 != null) {
                            q0(vector32);
                        }
                        t();
                        return;
                    } catch (Throwable th3) {
                        th2 = th3;
                        if (vector3 != null) {
                            q0(vector3);
                        }
                        if (vector32 != null) {
                            q0(vector32);
                        }
                        t();
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    vector32 = null;
                }
            }
            t();
        } catch (Throwable th5) {
            vector3 = null;
            th2 = th5;
            vector32 = null;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_POSITION_SWAY);
    }
}
