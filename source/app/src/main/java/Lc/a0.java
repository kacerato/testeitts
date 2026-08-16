package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class a0 extends AbstractC13820a {

    public static final String f96266i = "VectorZWZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new a0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return a0.class;
        }

        @Override
        public String c() {
            return "VectorZWZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, a0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public a0() {
        super("VectorZWZ", "Vector ZWZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zwz");
    }
}
