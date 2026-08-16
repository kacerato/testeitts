package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class L extends AbstractC13820a {

    public static final String f96251i = "VectorYXX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new L();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return L.class;
        }

        @Override
        public String c() {
            return "VectorYXX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, L.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YXX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public L() {
        super("VectorYXX", "Vector YXX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yxx");
    }
}
