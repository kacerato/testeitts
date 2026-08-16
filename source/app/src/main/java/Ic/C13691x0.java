package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13691x0 extends AbstractC13644f1 {

    public static final String f92034g = "Modulo";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13691x0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13691x0.class;
        }

        @Override
        public String c() {
            return "Modulo";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13691x0.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Modulo";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13691x0() {
        super("Modulo", "mod");
        this.serializedNodeType = "Modulo";
    }

    @Override
    public boolean y() {
        return false;
    }
}
