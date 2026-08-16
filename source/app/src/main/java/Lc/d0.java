package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class d0 extends AbstractC13820a {

    public static final String f96272i = "VectorZXY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new d0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return d0.class;
        }

        @Override
        public String c() {
            return "VectorZXY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, d0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public d0() {
        super("VectorZXY", "Vector ZXY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zxy");
    }
}
