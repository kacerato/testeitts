package Xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.H;

public class f extends Wa.a {

    public static final String f28096l = "VectorXX";

    public class a implements ga.p {
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
            return "VectorXX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "Vector/Number2 Converters";
        }

        @Override
        public String f() {
            return "Vector XX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public f() {
        super("VectorXX", "Vector XX", H.FLOAT2, "xx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XX);
    }
}
