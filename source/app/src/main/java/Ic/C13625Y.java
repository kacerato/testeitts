package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13625Y extends AbstractC13650h1 {

    public static final String f91845g = "GreaterThan";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13625Y();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13625Y.class;
        }

        @Override
        public String c() {
            return "GreaterThan";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13625Y.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Greater Than";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13625Y() {
        super("Greater Than");
        this.serializedNodeType = "GreaterThan";
    }

    @Override
    public String H(String a10, String b10) {
        return a10 + " > " + b10;
    }
}
