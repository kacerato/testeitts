package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13658k0 extends AbstractC13650h1 {

    public static final String f91938g = "LessThan";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13658k0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13658k0.class;
        }

        @Override
        public String c() {
            return "LessThan";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13658k0.class);
        }

        @Override
        public String e() {
            return "Compare";
        }

        @Override
        public String f() {
            return "Less Than";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13658k0() {
        super("Less Than");
        this.serializedNodeType = "LessThan";
    }

    @Override
    public String H(String a10, String b10) {
        return a10 + " < " + b10;
    }
}
