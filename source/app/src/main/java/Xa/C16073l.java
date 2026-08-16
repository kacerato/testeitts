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

public class C16073l extends NoCodeNode implements F {

    public static final String f128076h = "SetObjectEnabled";

    public static final int f128077i = 0;

    public static final int f128078j = 1;

    public final NoCodeSlot[] f128079g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Enabled", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_ENABLED))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C16073l();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16073l.class;
        }

        @Override
        public String c() {
            return C16073l.f128076h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16073l.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Properties";
        }

        @Override
        public String f() {
            return "Set Object Enabled";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C16073l() {
        this.serializedNodeType = f128076h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f128079g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Object Enabled";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "true" : "";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f128079g[0]);
            if (C13317e.J(b10)) {
                b10.setEnabled(ga.m.O(Q(this.f128079g[1])));
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_OBJECT_ENABLED);
    }
}
