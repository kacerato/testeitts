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

public class G extends NoCodeNode implements ga.F {

    public static final String f130841m = "TeleportTo";

    public static final int f130842n = 0;

    public static final int f130843o = 1;

    public static final int f130844p = 2;

    public final NoCodeSlot[] f130845g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Position", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_POSITION)), new NoCodeSlot("Seconds", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SECONDS))};

    public transient GameObject f130846h;

    public transient Vector3 f130847i;

    public transient Vector3 f130848j;

    public transient float f130849k;

    public transient float f130850l;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new G();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return G.class;
        }

        @Override
        public String c() {
            return G.f130841m;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, G.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Teleport To";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public G() {
        this.serializedNodeType = f130841m;
    }

    @Override
    public void E0() {
        if (d0()) {
            if (C13317e.J(this.f130846h) && this.f130847i != null && this.f130848j != null) {
                if (this.f130849k > 0.0f) {
                    float b10 = this.f130850l + K8.d.b();
                    this.f130850l = b10;
                    float f10 = b10 / this.f130849k;
                    float f11 = f10 >= 0.0f ? f10 : 0.0f;
                    if (f11 > 1.0f) {
                        f11 = 1.0f;
                    }
                    Vector3 m1249clone = this.f130847i.m1249clone();
                    m1249clone.lerpLocal(this.f130848j, f11);
                    this.f130846h.J0().h3(m1249clone);
                    if (f11 >= 1.0f) {
                        t();
                        return;
                    }
                    return;
                }
            }
            t();
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130845g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Teleport To";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "float3(0, 0, 0)" : inputIndex == 2 ? "0" : "";
    }

    @Override
    public void j0() {
        this.f130846h = null;
        this.f130847i = null;
        this.f130848j = null;
        this.f130849k = 0.0f;
        this.f130850l = 0.0f;
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130845g[0]);
        Vector3 h10 = h(Q(this.f130845g[1]));
        float max = Math.max(0.0f, ga.m.V(Q(this.f130845g[2])));
        if (!C13317e.J(b10)) {
            q0(h10);
            t();
            return;
        }
        if (max <= 0.0f) {
            b10.J0().h3(h10);
            q0(h10);
            t();
        } else {
            this.f130846h = b10;
            this.f130847i = b10.J0().t0();
            this.f130848j = h10.m1249clone();
            this.f130849k = max;
            this.f130850l = 0.0f;
            q0(h10);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_TELEPORT_TO);
    }
}
