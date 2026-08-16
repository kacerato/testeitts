package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class Z extends AbstractC13820a {

    public static final String f96264i = "VectorZWY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new Z();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return Z.class;
        }

        @Override
        public String c() {
            return "VectorZWY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, Z.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public Z() {
        super("VectorZWY", "Vector ZWY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zwy");
    }
}
