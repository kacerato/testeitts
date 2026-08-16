package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class Y extends Wa.a {

    public static final String f29906l = "VectorZWX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new Y();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return Y.class;
        }

        @Override
        public String c() {
            return "VectorZWX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, Y.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public Y() {
        super("VectorZWX", "Vector ZWX", ga.H.FLOAT3, "zwx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZWX);
    }
}
