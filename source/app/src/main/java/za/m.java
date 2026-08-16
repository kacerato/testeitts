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

public class m extends NoCodeNode implements ga.F {

    public static final String f130907i = "GetRotation";

    public static final int f130908j = 0;

    public static final int f130909k = 0;

    public final NoCodeSlot[] f130910g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f130911h = {new NoCodeSlot("Rotation", H.QUATERNION).c(Lang.l(Lang.T.NOCODE_SLOT_ROTATION))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new m();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return m.class;
        }

        @Override
        public String c() {
            return m.f130907i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, m.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Get Rotation";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public m() {
        this.serializedNodeType = f130907i;
    }

    private GameObject G0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f130910g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        return (C13317e.J(gameObject) || (noCodeData = this.f79021a) == null) ? gameObject : noCodeData.h0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130910g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130911h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Rotation";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject G02 = G0();
        y0(this.f130911h[0], C13317e.J(G02) ? G02.J0().h1() : new Quaternion());
        u(this.f130911h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_ROTATION);
    }
}
