package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class I extends Wa.a {

    public static final String f29891l = "VectorYWY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new I();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return I.class;
        }

        @Override
        public String c() {
            return "VectorYWY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, I.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YWY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public I() {
        super("VectorYWY", "Vector YWY", ga.H.FLOAT3, "ywy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YWY);
    }
}
