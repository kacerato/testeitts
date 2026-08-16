package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class H0 extends AbstractC13650h1 {

    public static final String f91729g = "NotEqual";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new H0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return H0.class;
        }

        @Override
        public String c() {
            return "NotEqual";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, H0.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Not Equal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public H0() {
        super("Not Equal");
        this.serializedNodeType = "NotEqual";
    }

    @Override
    public String H(String a10, String b10) {
        return "abs(" + a10 + " - " + b10 + ") >= 0.0001";
    }
}
