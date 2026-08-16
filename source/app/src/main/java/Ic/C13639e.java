package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13639e extends AbstractC13653i1 {

    public static final String f91883g = "Arctangent";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13639e();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13639e.class;
        }

        @Override
        public String c() {
            return "Arctangent";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13639e.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Arctangent";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13639e() {
        super("Arctangent", "atan");
        this.serializedNodeType = "Arctangent";
    }
}
