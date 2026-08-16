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

public class C16287D extends NoCodeNode implements ga.F {

    public static final String f130819h = "SetRotation";

    public static final int f130820i = 0;

    public static final int f130821j = 1;

    public final NoCodeSlot[] f130822g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Rotation", H.QUATERNION).c(Lang.l(Lang.T.NOCODE_SLOT_ROTATION))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C16287D();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16287D.class;
        }

        @Override
        public String c() {
            return C16287D.f130819h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16287D.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Set Rotation";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C16287D() {
        this.serializedNodeType = f130819h;
    }

    private GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f130822g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130822g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Rotation";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "float4(0, 0, 0, 1)" : "";
    }

    @Override
    public void m0() {
        Quaternion quaternion = null;
        try {
            GameObject G02 = G0();
            if (!C13317e.J(G02)) {
                t();
            } else {
                quaternion = f(Q(this.f130822g[1]));
                G02.J0().x3(quaternion);
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
        return Lang.l(Lang.T.NOCODE_SET_ROTATION);
    }
}
