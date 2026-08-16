package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class Q extends AbstractC13820a {

    public static final String f96256i = "VectorYYY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new Q();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return Q.class;
        }

        @Override
        public String c() {
            return "VectorYYY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, Q.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YYY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public Q() {
        super("VectorYYY", "Vector YYY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yyy");
    }
}
