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

public class C16072k extends NoCodeNode implements F {

    public static final String f128072h = "SetName";

    public static final int f128073i = 0;

    public static final int f128074j = 1;

    public final NoCodeSlot[] f128075g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16072k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16072k.class;
        }

        @Override
        public String c() {
            return C16072k.f128072h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16072k.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Set Name";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16072k() {
        this.serializedNodeType = f128072h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128075g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Name";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        try {
            if (this.f79021a == null) {
                t();
                return;
            }
            Object Q10 = Q(this.f128075g[0]);
            GameObject gameObject = Q10 instanceof GameObject ? (GameObject) Q10 : null;
            if (!C13317e.J(gameObject)) {
                gameObject = this.f79021a.h0();
            }
            if (!C13317e.J(gameObject)) {
                t();
                return;
            }
            Object Q11 = Q(this.f128075g[1]);
            gameObject.E1(Q11 != null ? String.valueOf(Q11) : "");
            t();
        } catch (Throwable th2) {
            t();
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_NAME);
    }
}
