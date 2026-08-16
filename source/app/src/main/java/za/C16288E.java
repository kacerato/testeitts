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

public class C16288E extends NoCodeNode implements ga.F {

    public static final String f130823h = "SetScale";

    public static final int f130824i = 0;

    public static final int f130825j = 1;

    public final NoCodeSlot[] f130826g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Scale", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_SCALE))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C16288E();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16288E.class;
        }

        @Override
        public String c() {
            return C16288E.f130823h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16288E.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Set Scale";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C16288E() {
        this.serializedNodeType = f130823h;
    }

    private GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f130826g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130826g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Scale";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "float3(1, 1, 1)" : "";
    }

    @Override
    public void m0() {
        Vector3 vector3 = null;
        try {
            GameObject G02 = G0();
            if (!C13317e.J(G02)) {
                t();
            } else {
                vector3 = h(Q(this.f130826g[1]));
                G02.J0().setScale(vector3);
            }
        } finally {
            if (vector3 != null) {
                q0(vector3);
            }
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_SCALE);
    }
}
