package Ha;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.o;
import ga.p;

public class e extends Fa.d {

    public static final String f8323k = "LessThan";

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
            return "LessThan";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Less Than";
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
        super("Less Than");
        this.serializedNodeType = "LessThan";
    }

    @Override
    public boolean H0(float a10, float b10) {
        return a10 < b10;
    }

    @Override
    public String J0(String a10, String b10) {
        return a10 + " < " + b10;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LESS_THAN);
    }
}
