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

public class n extends NoCodeNode implements ga.F {

    public static final String f130912i = "GetScale";

    public static final int f130913j = 0;

    public static final int f130914k = 0;

    public final NoCodeSlot[] f130915g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f130916h = {new NoCodeSlot("Scale", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_SCALE))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new n();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return n.class;
        }

        @Override
        public String c() {
            return n.f130912i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, n.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Get Scale";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public n() {
        this.serializedNodeType = f130912i;
    }

    private GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f130915g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130915g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130916h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Scale";
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
            G02.J0().r1(vector3);
        } else {
            vector3.set(1.0f);
        }
        y0(this.f130916h[0], vector3);
        u(this.f130916h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_SCALE);
    }
}
