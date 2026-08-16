package xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class C16065d extends NoCodeNode implements F {

    public static final String f128040i = "GetName";

    public static final int f128041j = 0;

    public static final int f128042k = 0;

    public final NoCodeSlot[] f128043g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f128044h = {new NoCodeSlot("Text", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_TEXT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16065d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16065d.class;
        }

        @Override
        public String c() {
            return C16065d.f128040i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16065d.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Get Name";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16065d() {
        this.serializedNodeType = f128040i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128043g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f128044h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Name";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        NoCodeData noCodeData;
        Object Q10 = Q(this.f128043g[0]);
        GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
        if (!C13317e.J(gameObject) && (noCodeData = this.f79021a) != null) {
            gameObject = noCodeData.h0();
        }
        y0(this.f128044h[0], (!C13317e.J(gameObject) || gameObject.getName() == null) ? "" : gameObject.getName());
        u(this.f128044h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_NAME);
    }
}
