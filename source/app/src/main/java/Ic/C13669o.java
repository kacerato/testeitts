package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13669o extends ShaderGraphNode {

    public static final String f91967e = "Clamp";

    public final ShaderGraphSlot[] f91968c;

    public final ShaderGraphSlot[] f91969d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13669o();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13669o.class;
        }

        @Override
        public String c() {
            return "Clamp";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13669o.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return "Clamp";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13669o() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91968c = new ShaderGraphSlot[]{new ShaderGraphSlot("In", c10), new ShaderGraphSlot("Min", c10), new ShaderGraphSlot("Max", c10)};
        this.f91969d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = "Clamp";
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return resolver.b(this, 0);
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context);
        String g10 = context.g(this, 0, stage, D10);
        String g11 = context.g(this, 1, stage, D10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("clamp.glsl"), "@OUT@", context.c(this, 0, stage, D10)), "@A@", g10), "@MIN@", g11), "@MAX@", context.g(this, 2, stage, D10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91968c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91969d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Clamp";
    }
}
