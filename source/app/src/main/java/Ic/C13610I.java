package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13610I extends AbstractC13653i1 {

    public static final String f91732g = "Floor";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13610I();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13610I.class;
        }

        @Override
        public String c() {
            return "Floor";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13610I.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Floor";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13610I() {
        super("Floor", "floor");
        this.serializedNodeType = "Floor";
    }

    @Override
    public boolean y() {
        return false;
    }
}
