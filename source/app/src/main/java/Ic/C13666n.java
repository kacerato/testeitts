package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13666n extends ShaderGraphNode {

    public static final String f91958e = "Clamp01";

    public final ShaderGraphSlot[] f91959c;

    public final ShaderGraphSlot[] f91960d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13666n();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13666n.class;
        }

        @Override
        public String c() {
            return "Clamp01";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13666n.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return "Clamp01";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13666n() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91959c = new ShaderGraphSlot[]{new ShaderGraphSlot("In", c10)};
        this.f91960d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = "Clamp01";
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return resolver.b(this, 0);
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("clamp01.glsl"), "@OUT@", context.c(this, 0, stage, D10)), "@A@", context.g(this, 0, stage, D10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91959c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91960d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Clamp01";
    }
}
