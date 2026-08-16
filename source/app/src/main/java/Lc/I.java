package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class I extends AbstractC13820a {

    public static final String f96248i = "VectorYWY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new I();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return I.class;
        }

        @Override
        public String c() {
            return "VectorYWY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, I.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YWY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public I() {
        super("VectorYWY", "Vector YWY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "ywy");
    }
}
