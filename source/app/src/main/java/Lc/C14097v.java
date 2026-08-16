package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class C14097v extends AbstractC13820a {

    public static final String f96299i = "VectorXXX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14097v();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14097v.class;
        }

        @Override
        public String c() {
            return "VectorXXX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14097v.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector XXX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C14097v() {
        super("VectorXXX", "Vector XXX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "xxx");
    }
}
