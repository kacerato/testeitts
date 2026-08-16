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

public class k extends NoCodeNode implements ga.F {

    public static final String f130897i = "GetPosition";

    public static final int f130898j = 0;

    public static final int f130899k = 0;

    public final NoCodeSlot[] f130900g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f130901h = {new NoCodeSlot("Position", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_POSITION))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return k.class;
        }

        @Override
        public String c() {
            return k.f130897i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, k.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Get Position";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public k() {
        this.serializedNodeType = f130897i;
    }

    private GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f130900g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130900g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130901h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Position";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject G02 = G0();
        Vector3 vector3 = (Vector3) e(Vector3.class);
        if (C13317e.J(G02)) {
            G02.J0().a1(vector3);
            y0(this.f130901h[0], vector3);
            u(this.f130901h[0]);
        } else {
            vector3.set(0.0f);
            y0(this.f130901h[0], vector3);
            u(this.f130901h[0]);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_POSITION);
    }
}
