package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class T0 extends AbstractC13644f1 {

    public static final String f91825g = "Pow";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new T0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return T0.class;
        }

        @Override
        public String c() {
            return "Pow";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, T0.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Pow";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public T0() {
        super("Pow", "pow");
        this.serializedNodeType = "Pow";
    }
}
