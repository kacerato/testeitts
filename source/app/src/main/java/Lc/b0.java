package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class b0 extends AbstractC13820a {

    public static final String f96268i = "VectorZXW";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new b0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return b0.class;
        }

        @Override
        public String c() {
            return "VectorZXW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, b0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public b0() {
        super("VectorZXW", "Vector ZXW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zxw");
    }
}
