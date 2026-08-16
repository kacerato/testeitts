package Ma;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;

public class b extends Ma.a {

    public static final String f14835k = "CustomEventBool";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f14835k;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Events/Custom";
        }

        @Override
        public String f() {
            return "Custom Event Bool";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        super(f14835k, "Custom Event Bool", "Arg", H.BOOLEAN);
    }

    @Override
    public Object K0(Object... args) {
        if (args == null || args.length != 1) {
            return null;
        }
        Object obj = args[0];
        if (obj instanceof Boolean) {
            return obj;
        }
        return null;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CUSTOM_EVENT_BOOL);
    }
}
