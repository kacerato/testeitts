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

public class C16285B extends NoCodeNode implements ga.F {

    public static final String f130811h = "SetGlobalScale";

    public static final int f130812i = 0;

    public static final int f130813j = 1;

    public final NoCodeSlot[] f130814g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Global Scale", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_GLOBAL_SCALE))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C16285B();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16285B.class;
        }

        @Override
        public String c() {
            return C16285B.f130811h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16285B.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Set Global Scale";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C16285B() {
        this.serializedNodeType = f130811h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130814g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Global Scale";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "float3(1, 1, 1)" : "";
    }

    @Override
    public void m0() {
        Vector3 vector3 = null;
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f130814g[0]);
            if (!C13317e.J(b10)) {
                t();
            } else {
                vector3 = h(Q(this.f130814g[1]));
                b10.J0().j3(vector3);
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
        return Lang.l(Lang.T.NOCODE_SET_GLOBAL_SCALE);
    }
}
