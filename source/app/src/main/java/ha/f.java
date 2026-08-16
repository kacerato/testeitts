package Ha;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.o;
import ga.p;

public class f extends Fa.d {

    public static final String f8324k = "NotEqual";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f.class;
        }

        @Override
        public String c() {
            return "NotEqual";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Not Equal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public f() {
        super("Not Equal");
        this.serializedNodeType = "NotEqual";
    }

    @Override
    public boolean G0(boolean current, boolean componentResult) {
        return current || componentResult;
    }

    @Override
    public boolean H0(float a10, float b10) {
        return Math.abs(a10 - b10) >= 1.0E-4f;
    }

    @Override
    public String J0(String a10, String b10) {
        return "abs(" + a10 + " - " + b10 + ") >= 0.0001";
    }

    @Override
    public boolean K0() {
        return false;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_NOT_EQUAL);
    }
}
