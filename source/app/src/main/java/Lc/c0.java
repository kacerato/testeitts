package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class c0 extends AbstractC13820a {

    public static final String f96270i = "VectorZXX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new c0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return c0.class;
        }

        @Override
        public String c() {
            return "VectorZXX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, c0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public c0() {
        super("VectorZXX", "Vector ZXX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zxx");
    }
}
