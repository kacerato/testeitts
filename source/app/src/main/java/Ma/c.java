package Ma;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Custom.BaseCustomEventNode;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;

public class c extends BaseCustomEventNode {

    public static final String f14836i = "CustomEvent";

    public final NoCodeSlot[] f14837h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return c.f14836i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Events/Custom";
        }

        @Override
        public String f() {
            return "Custom Event";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public c() {
        super(f14836i, "Custom Event");
        this.f14837h = new NoCodeSlot[]{new NoCodeSlot("Then", H.BRANCH).c(Lang.l(Lang.T.NOCODE_SLOT_THEN))};
    }

    @Override
    public void I0(Object... args) {
        if (args == null || args.length <= 0) {
            u(this.f14837h[0]);
        }
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f14837h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CUSTOM_EVENT);
    }
}
