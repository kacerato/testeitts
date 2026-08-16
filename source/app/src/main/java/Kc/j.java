package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class j extends AbstractC13820a {

    public static final String f95057i = "VectorYX";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new j();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return j.class;
        }

        @Override
        public String c() {
            return "VectorYX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, j.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector YX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public j() {
        super("VectorYX", "Vector YX", C.FLOAT2, "yx");
    }
}
