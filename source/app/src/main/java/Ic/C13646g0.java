package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13646g0 extends ShaderGraphNode {

    public static final String f91903e = "Length";

    public final ShaderGraphSlot[] f91904c = {new ShaderGraphSlot("In", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC)};

    public final ShaderGraphSlot[] f91905d = {new ShaderGraphSlot("Out", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13646g0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13646g0.class;
        }

        @Override
        public String c() {
            return "Length";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13646g0.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Length";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13646g0() {
        this.serializedNodeType = "Length";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("length.glsl"), "@OUT@", context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)), "@A@", context.g(this, 0, stage, ((com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context).b(this, 0))));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91904c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91905d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Length";
    }
}
