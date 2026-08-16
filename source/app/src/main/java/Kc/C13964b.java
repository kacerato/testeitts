package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import jc.AbstractC13820a;

public class C13964b extends AbstractC13820a {

    public static final String f95040i = "VectorWX";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new C13964b();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13964b.class;
        }

        @Override
        public String c() {
            return "VectorWX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13964b.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector WX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13964b() {
        super("VectorWX", "Vector WX", C.FLOAT2, "wx");
    }
}
