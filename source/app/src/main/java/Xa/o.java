package Xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.H;

public class o extends Wa.a {

    public static final String f28105l = "VectorZY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new o();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return o.class;
        }

        @Override
        public String c() {
            return "VectorZY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, o.class);
        }

        @Override
        public String e() {
            return "Vector/Number2 Converters";
        }

        @Override
        public String f() {
            return "Vector ZY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public o() {
        super("VectorZY", "Vector ZY", H.FLOAT2, "zy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZY);
    }
}
