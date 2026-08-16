package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class K extends AbstractC13820a {

    public static final String f96250i = "VectorYXW";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new K();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return K.class;
        }

        @Override
        public String c() {
            return "VectorYXW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, K.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YXW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public K() {
        super("VectorYXW", "Vector YXW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yxw");
    }
}
