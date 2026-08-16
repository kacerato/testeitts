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

public class C16286C extends NoCodeNode implements ga.F {

    public static final String f130815h = "SetPosition";

    public static final int f130816i = 0;

    public static final int f130817j = 1;

    public final NoCodeSlot[] f130818g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Position", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_POSITION))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C16286C();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16286C.class;
        }

        @Override
        public String c() {
            return C16286C.f130815h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16286C.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Set Position";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C16286C() {
        this.serializedNodeType = f130815h;
    }

    private GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f130818g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130818g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Position";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "float3(0, 0, 0)" : "";
    }

    @Override
    public void m0() {
        Vector3 vector3 = null;
        try {
            GameObject G02 = G0();
            if (!C13317e.J(G02)) {
                t();
            } else {
                vector3 = h(Q(this.f130818g[1]));
                G02.J0().p3(vector3);
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
        return Lang.l(Lang.T.NOCODE_SET_POSITION);
    }
}
