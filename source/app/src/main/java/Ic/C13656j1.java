package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13656j1 extends AbstractC13653i1 {

    public static final String f91934g = "Sin";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13656j1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13656j1.class;
        }

        @Override
        public String c() {
            return "Sin";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13656j1.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Sin";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13656j1() {
        super("Sin", "sin");
        this.serializedNodeType = "Sin";
    }
}
