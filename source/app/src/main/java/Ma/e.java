package Ma;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.C13306b;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class e extends Ma.a {

    public static final String f14839k = "CustomEventText";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f14839k;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Events/Custom";
        }

        @Override
        public String f() {
            return "Custom Event Text";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public e() {
        super(f14839k, "Custom Event Text", "Arg", H.TEXT);
    }

    @Override
    public Object K0(Object... args) {
        if (args == null || args.length != 1) {
            return null;
        }
        Object obj = args[0];
        if ((obj instanceof String) || (obj instanceof CharSequence) || (obj instanceof Boolean)) {
            return m.i0(obj);
        }
        if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof C13306b)) {
            return m.i0(m.M(obj));
        }
        if (obj instanceof Number) {
            return m.i0(Float.valueOf(m.V(obj)));
        }
        return null;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CUSTOM_EVENT_TEXT);
    }
}
