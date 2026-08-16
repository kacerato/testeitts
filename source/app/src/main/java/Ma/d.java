package Ma;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class d extends Ma.a {

    public static final String f14838k = "CustomEventNumber";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return d.f14838k;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Events/Custom";
        }

        @Override
        public String f() {
            return "Custom Event Number";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public d() {
        super(f14838k, "Custom Event Number", "Arg", H.NUMBER);
    }

    @Override
    public Object K0(Object... args) {
        if (args == null || args.length != 1) {
            return null;
        }
        Object obj = args[0];
        if ((obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
            return Float.valueOf(m.V(obj));
        }
        if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
            return null;
        }
        String trim = String.valueOf(obj).trim();
        if (trim.isEmpty()) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(trim));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CUSTOM_EVENT_NUMBER);
    }
}
