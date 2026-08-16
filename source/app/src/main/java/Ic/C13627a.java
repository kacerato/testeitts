package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13627a extends AbstractC13653i1 {

    public static final String f91855g = "Abs";

    public class C1774a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13627a();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13627a.class;
        }

        @Override
        public String c() {
            return "Abs";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13627a.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Abs";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new C1774a());
    }

    public C13627a() {
        super("Abs", "abs");
        this.serializedNodeType = "Abs";
    }

    @Override
    public boolean y() {
        return false;
    }
}
