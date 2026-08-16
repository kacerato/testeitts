package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13671o1 extends AbstractC13653i1 {

    public static final String f91971g = "Sqrt";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13671o1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13671o1.class;
        }

        @Override
        public String c() {
            return "Sqrt";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13671o1.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Sqrt";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13671o1() {
        super("Sqrt", "sqrt");
        this.serializedNodeType = "Sqrt";
    }
}
