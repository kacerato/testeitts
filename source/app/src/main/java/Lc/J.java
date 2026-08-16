package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class J extends AbstractC13820a {

    public static final String f96249i = "VectorYWZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new J();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return J.class;
        }

        @Override
        public String c() {
            return "VectorYWZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, J.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YWZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public J() {
        super("VectorYWZ", "Vector YWZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "ywz");
    }
}
