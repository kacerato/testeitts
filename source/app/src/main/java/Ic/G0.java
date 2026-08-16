package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class G0 extends AbstractC13653i1 {

    public static final String f91723g = "Normalize";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new G0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return G0.class;
        }

        @Override
        public String c() {
            return "Normalize";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, G0.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Normalize";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public G0() {
        super("Normalize", "normalize");
        this.serializedNodeType = "Normalize";
    }
}
