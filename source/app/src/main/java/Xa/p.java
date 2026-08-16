package Xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.H;

public class p extends Wa.a {

    public static final String f28106l = "VectorZZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new p();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return p.class;
        }

        @Override
        public String c() {
            return "VectorZZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, p.class);
        }

        @Override
        public String e() {
            return "Vector/Number2 Converters";
        }

        @Override
        public String f() {
            return "Vector ZZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public p() {
        super("VectorZZ", "Vector ZZ", H.FLOAT2, "zz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZZ);
    }
}
