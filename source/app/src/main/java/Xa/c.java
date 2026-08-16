package Xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.H;

public class c extends Wa.a {

    public static final String f28093l = "VectorWY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return "VectorWY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Vector/Number2 Converters";
        }

        @Override
        public String f() {
            return "Vector WY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public c() {
        super("VectorWY", "Vector WY", H.FLOAT2, "wy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WY);
    }
}
