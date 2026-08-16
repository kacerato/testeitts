package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13660l extends AbstractC13653i1 {

    public static final String f91944g = "Ceil";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13660l();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13660l.class;
        }

        @Override
        public String c() {
            return "Ceil";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13660l.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Ceil";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13660l() {
        super("Ceil", "ceil");
        this.serializedNodeType = "Ceil";
    }

    @Override
    public boolean y() {
        return false;
    }
}
