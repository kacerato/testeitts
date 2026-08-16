package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class r extends AbstractC13820a {

    public static final String f96295i = "VectorXWX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new r();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return r.class;
        }

        @Override
        public String c() {
            return "VectorXWX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, r.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector XWX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public r() {
        super("VectorXWX", "Vector XWX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "xwx");
    }
}
