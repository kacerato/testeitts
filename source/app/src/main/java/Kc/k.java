package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class k extends AbstractC13820a {

    public static final String f95058i = "VectorYY";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new k();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return k.class;
        }

        @Override
        public String c() {
            return "VectorYY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, k.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector YY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public k() {
        super("VectorYY", "Vector YY", C.FLOAT2, "yy");
    }
}
