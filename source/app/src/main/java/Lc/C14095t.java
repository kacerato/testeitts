package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class C14095t extends AbstractC13820a {

    public static final String f96297i = "VectorXWZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14095t();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14095t.class;
        }

        @Override
        public String c() {
            return "VectorXWZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14095t.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector XWZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C14095t() {
        super("VectorXWZ", "Vector XWZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "xwz");
    }
}
