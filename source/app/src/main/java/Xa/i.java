package Xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.H;

public class i extends Wa.a {

    public static final String f28099l = "VectorYW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return i.class;
        }

        @Override
        public String c() {
            return "VectorYW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, i.class);
        }

        @Override
        public String e() {
            return "Vector/Number2 Converters";
        }

        @Override
        public String f() {
            return "Vector YW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public i() {
        super("VectorYW", "Vector YW", H.FLOAT2, "yw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YW);
    }
}
