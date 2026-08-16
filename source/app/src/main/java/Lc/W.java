package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class W extends AbstractC13820a {

    public static final String f96261i = "VectorYZZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new W();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return W.class;
        }

        @Override
        public String c() {
            return "VectorYZZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, W.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public W() {
        super("VectorYZZ", "Vector YZZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yzz");
    }
}
