package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class O extends AbstractC13820a {

    public static final String f96254i = "VectorYYW";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new O();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return O.class;
        }

        @Override
        public String c() {
            return "VectorYYW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, O.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YYW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public O() {
        super("VectorYYW", "Vector YYW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yyw");
    }
}
