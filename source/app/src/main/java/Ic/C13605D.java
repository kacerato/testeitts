package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13605D extends AbstractC13650h1 {

    public static final String f91699g = "Equal";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13605D();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13605D.class;
        }

        @Override
        public String c() {
            return "Equal";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13605D.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Equal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13605D() {
        super("Equal");
        this.serializedNodeType = "Equal";
    }

    @Override
    public String H(String a10, String b10) {
        return "abs(" + a10 + " - " + b10 + ") < 0.0001";
    }
}
