package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class A extends Fa.b {

    public static final String f24105k = "Pow";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new A();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return A.class;
        }

        @Override
        public String c() {
            return "Pow";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, A.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Pow";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public A() {
        super("Pow", "pow");
        this.serializedNodeType = "Pow";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_POW);
    }
}
