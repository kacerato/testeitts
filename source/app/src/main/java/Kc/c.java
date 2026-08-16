package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class c extends AbstractC13820a {

    public static final String f95041i = "VectorWY";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new c();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return "VectorWY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector WY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public c() {
        super("VectorWY", "Vector WY", C.FLOAT2, "wy");
    }
}
