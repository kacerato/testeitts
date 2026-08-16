package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class h0 extends AbstractC13820a {

    public static final String f96280i = "VectorZYY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new h0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return h0.class;
        }

        @Override
        public String c() {
            return "VectorZYY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, h0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZYY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public h0() {
        super("VectorZYY", "Vector ZYY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zyy");
    }
}
