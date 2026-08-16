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

public class C16284A extends NoCodeNode implements ga.F {

    public static final String f130807h = "SetGlobalRotation";

    public static final int f130808i = 0;

    public static final int f130809j = 1;

    public final NoCodeSlot[] f130810g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Global Rotation", H.QUATERNION).c(Lang.l(Lang.T.NOCODE_SLOT_GLOBAL_ROTATION))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C16284A();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16284A.class;
        }

        @Override
        public String c() {
            return C16284A.f130807h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16284A.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Set Global Rotation";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C16284A() {
        this.serializedNodeType = f130807h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130810g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Global Rotation";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "float4(0, 0, 0, 1)" : "";
    }

    @Override
    public void m0() {
        Quaternion quaternion = null;
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f130810g[0]);
            if (!C13317e.J(b10)) {
                t();
            } else {
                quaternion = f(Q(this.f130810g[1]));
                b10.J0().i3(quaternion);
            }
        } finally {
            if (quaternion != null) {
                q0(quaternion);
            }
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_GLOBAL_ROTATION);
    }
}
