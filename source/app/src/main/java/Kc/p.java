package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class p extends AbstractC13820a {

    public static final String f95063i = "VectorZZ";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new p();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return p.class;
        }

        @Override
        public String c() {
            return "VectorZZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, p.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector ZZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public p() {
        super("VectorZZ", "Vector ZZ", C.FLOAT2, "zz");
    }
}
