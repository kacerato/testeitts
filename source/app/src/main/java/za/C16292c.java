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

public class C16292c extends NoCodeNode implements ga.F {

    public static final String f130865i = "GetDown";

    public static final int f130866j = 0;

    public static final int f130867k = 0;

    public final NoCodeSlot[] f130868g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f130869h = {new NoCodeSlot("Down", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_DOWN))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C16292c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16292c.class;
        }

        @Override
        public String c() {
            return C16292c.f130865i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16292c.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Get Down";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C16292c() {
        this.serializedNodeType = f130865i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130868g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f130869h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Down";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130868g[0]);
        Vector3 vector3 = (Vector3) e(Vector3.class);
        if (C13317e.J(b10)) {
            b10.J0().Q(vector3);
        } else {
            vector3.set(0.0f, -1.0f, 0.0f);
        }
        y0(this.f130869h[0], vector3);
        u(this.f130869h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_DOWN);
    }
}
