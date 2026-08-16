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

public class i extends NoCodeNode implements ga.F {

    public static final String f130891i = "GetLeft";

    public static final int f130892j = 0;

    public static final int f130893k = 0;

    public final NoCodeSlot[] f130894g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f130895h = {new NoCodeSlot("Left", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_LEFT))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return i.class;
        }

        @Override
        public String c() {
            return i.f130891i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, i.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Get Left";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public i() {
        this.serializedNodeType = f130891i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130894g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130895h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Left";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130894g[0]);
        Vector3 vector3 = (Vector3) e(Vector3.class);
        if (C13317e.J(b10)) {
            b10.J0().c2(vector3);
        } else {
            vector3.set(-1.0f, 0.0f, 0.0f);
        }
        y0(this.f130895h[0], vector3);
        u(this.f130895h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_LEFT);
    }
}
