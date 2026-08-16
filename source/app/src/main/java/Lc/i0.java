package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class i0 extends AbstractC13820a {

    public static final String f96282i = "VectorZYZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new i0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return i0.class;
        }

        @Override
        public String c() {
            return "VectorZYZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, i0.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZYZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public i0() {
        super("VectorZYZ", "Vector ZYZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zyz");
    }
}
