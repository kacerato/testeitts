package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class V extends AbstractC13820a {

    public static final String f96260i = "VectorYZY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new V();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return V.class;
        }

        @Override
        public String c() {
            return "VectorYZY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, V.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public V() {
        super("VectorYZY", "Vector YZY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yzy");
    }
}
