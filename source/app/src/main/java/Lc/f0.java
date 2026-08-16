package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class f0 extends AbstractC13820a {

    public static final String f96276i = "VectorZYW";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new f0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return f0.class;
        }

        @Override
        public String c() {
            return "VectorZYW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, f0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZYW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public f0() {
        super("VectorZYW", "Vector ZYW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zyw");
    }
}
