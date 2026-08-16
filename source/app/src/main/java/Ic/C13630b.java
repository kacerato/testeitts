package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13630b extends AbstractC13647g1 {

    public static final String f91862g = "Add";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13630b();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13630b.class;
        }

        @Override
        public String c() {
            return "Add";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13630b.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Add";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13630b() {
        super("Add", "+");
        this.serializedNodeType = "Add";
    }

    @Override
    public boolean y() {
        return false;
    }
}
