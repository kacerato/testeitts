package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class A0 extends AbstractC13653i1 {

    public static final String f91677g = "NaturalLog";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new A0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return A0.class;
        }

        @Override
        public String c() {
            return "NaturalLog";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, A0.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Natural Log";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public A0() {
        super("Natural Log", "log");
        this.serializedNodeType = "NaturalLog";
    }
}
