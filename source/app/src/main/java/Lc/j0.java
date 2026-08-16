package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class j0 extends AbstractC13820a {

    public static final String f96284i = "VectorZZW";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new j0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return j0.class;
        }

        @Override
        public String c() {
            return "VectorZZW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, j0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZZW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public j0() {
        super("VectorZZW", "Vector ZZW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zzw");
    }
}
