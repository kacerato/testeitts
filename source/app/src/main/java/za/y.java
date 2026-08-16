package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import gb.C13317e;

public class y extends NoCodeNode implements ga.F {

    public static final String f130968h = "RotationSway";

    public static final int f130969i = 0;

    public static final int f130970j = 1;

    public static final int f130971k = 2;

    public final NoCodeSlot[] f130972g;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new y();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return y.class;
        }

        @Override
        public String c() {
            return y.f130968h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, y.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Rotation Sway";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public y() {
        H h10 = H.GAME_OBJECT;
        this.f130972g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Target", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TARGET)), new NoCodeSlot("Damping", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_DAMPING))};
        this.serializedNodeType = f130968h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130972g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Rotation Sway";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : inputIndex == 2 ? "8" : "";
    }

    @Override
    public void m0() {
        Quaternion quaternion;
        Throwable th2;
        Quaternion quaternion2;
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f130972g[0]);
            GameObject b11 = Aa.b.b(this, this.f79021a, this.f130972g[1]);
            if (C13317e.J(b10) && C13317e.J(b11)) {
                float b12 = Ic.A.b(K8.d.b()) * Math.max(0.0f, Ic.A.b(ga.m.V(Q(this.f130972g[2]))));
                quaternion = (Quaternion) e(Quaternion.class);
                try {
                    quaternion2 = (Quaternion) e(Quaternion.class);
                    try {
                        b10.J0().C0(quaternion);
                        b11.J0().C0(quaternion2);
                        quaternion.f(quaternion2, b12);
                        b10.J0().i3(quaternion);
                        q0(quaternion);
                        if (quaternion2 != null) {
                            q0(quaternion2);
                        }
                        t();
                        return;
                    } catch (Throwable th3) {
                        th2 = th3;
                        if (quaternion != null) {
                            q0(quaternion);
                        }
                        if (quaternion2 != null) {
                            q0(quaternion2);
                        }
                        t();
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    quaternion2 = null;
                }
            }
            t();
        } catch (Throwable th5) {
            quaternion = null;
            th2 = th5;
            quaternion2 = null;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ROTATION_SWAY);
    }
}
