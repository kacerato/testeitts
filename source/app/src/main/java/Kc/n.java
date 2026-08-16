package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class n extends AbstractC13820a {

    public static final String f95061i = "VectorZX";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new n();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return n.class;
        }

        @Override
        public String c() {
            return "VectorZX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, n.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector ZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public n() {
        super("VectorZX", "Vector ZX", C.FLOAT2, "zx");
    }
}
