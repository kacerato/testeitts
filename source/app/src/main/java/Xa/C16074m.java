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

public class C16074m extends NoCodeNode implements F {

    public static final String f128080h = "SetStatic";

    public static final int f128081i = 0;

    public static final int f128082j = 1;

    public final NoCodeSlot[] f128083g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Static", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_STATIC))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16074m();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16074m.class;
        }

        @Override
        public String c() {
            return C16074m.f128080h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16074m.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Set Static";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16074m() {
        this.serializedNodeType = f128080h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128083g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Static";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "false" : "";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f128083g[0]);
            if (C13317e.J(b10)) {
                b10.J0().P3(ga.m.O(Q(this.f128083g[1])));
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_STATIC);
    }
}
