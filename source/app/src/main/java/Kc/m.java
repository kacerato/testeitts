package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class m extends AbstractC13820a {

    public static final String f95060i = "VectorZW";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new m();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return m.class;
        }

        @Override
        public String c() {
            return "VectorZW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, m.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector ZW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public m() {
        super("VectorZW", "Vector ZW", C.FLOAT2, "zw");
    }
}
