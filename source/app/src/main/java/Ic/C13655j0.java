package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13655j0 extends AbstractC13650h1 {

    public static final String f91933g = "LessOrEqual";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13655j0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13655j0.class;
        }

        @Override
        public String c() {
            return "LessOrEqual";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13655j0.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Less Or Equal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13655j0() {
        super("Less Or Equal");
        this.serializedNodeType = "LessOrEqual";
    }

    @Override
    public String H(String a10, String b10) {
        return a10 + " <= " + b10;
    }
}
