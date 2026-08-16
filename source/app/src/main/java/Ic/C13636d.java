package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13636d extends AbstractC13653i1 {

    public static final String f91876g = "Arcsine";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13636d();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13636d.class;
        }

        @Override
        public String c() {
            return "Arcsine";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13636d.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Arcsine";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13636d() {
        super("Arcsine", "asin");
        this.serializedNodeType = "Arcsine";
    }
}
