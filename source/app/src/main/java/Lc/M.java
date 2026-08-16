package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class M extends AbstractC13820a {

    public static final String f96252i = "VectorYXY";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new M();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return M.class;
        }

        @Override
        public String c() {
            return "VectorYXY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, M.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YXY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public M() {
        super("VectorYXY", "Vector YXY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yxy");
    }
}
