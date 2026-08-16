package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class S extends AbstractC13820a {

    public static final String f96257i = "VectorYYZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new S();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return S.class;
        }

        @Override
        public String c() {
            return "VectorYYZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, S.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YYZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public S() {
        super("VectorYYZ", "Vector YYZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yyz");
    }
}
