package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class C14094s extends AbstractC13820a {

    public static final String f96296i = "VectorXWY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14094s();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14094s.class;
        }

        @Override
        public String c() {
            return "VectorXWY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14094s.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector XWY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C14094s() {
        super("VectorXWY", "Vector XWY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "xwy");
    }
}
