package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13633c extends AbstractC13653i1 {

    public static final String f91869g = "Arccosine";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13633c();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13633c.class;
        }

        @Override
        public String c() {
            return "Arccosine";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13633c.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Arccosine";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13633c() {
        super("Arccosine", "acos");
        this.serializedNodeType = "Arccosine";
    }
}
