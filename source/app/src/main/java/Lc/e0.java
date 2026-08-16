package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class e0 extends AbstractC13820a {

    public static final String f96274i = "VectorZXZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new e0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return e0.class;
        }

        @Override
        public String c() {
            return "VectorZXZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, e0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public e0() {
        super("VectorZXZ", "Vector ZXZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zxz");
    }
}
