package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13624X extends AbstractC13650h1 {

    public static final String f91841g = "GreaterOrEqual";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13624X();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13624X.class;
        }

        @Override
        public String c() {
            return "GreaterOrEqual";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13624X.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Greater Or Equal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13624X() {
        super("Greater Or Equal");
        this.serializedNodeType = "GreaterOrEqual";
    }

    @Override
    public String H(String a10, String b10) {
        return a10 + " >= " + b10;
    }
}
