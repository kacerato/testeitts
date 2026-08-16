package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class l extends AbstractC13820a {

    public static final String f95059i = "VectorYZ";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new l();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return l.class;
        }

        @Override
        public String c() {
            return "VectorYZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, l.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector YZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public l() {
        super("VectorYZ", "Vector YZ", C.FLOAT2, "yz");
    }
}
