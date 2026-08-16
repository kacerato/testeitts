package ic;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphInputDefault;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13676q0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91982e = "MapRange";

    public final ShaderGraphSlot[] f91983c;

    public final ShaderGraphSlot[] f91984d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13676q0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13676q0.class;
        }

        @Override
        public String c() {
            return C13676q0.f91982e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13676q0.class);
        }

        @Override
        public String e() {
            return "Math/Range";
        }

        @Override
        public String f() {
            return "Map Range";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13676q0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91983c = new ShaderGraphSlot[]{new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, c10), new ShaderGraphSlot("From Min", c10), new ShaderGraphSlot("From Max", c10), new ShaderGraphSlot("To Min", c10), new ShaderGraphSlot("To Max", c10)};
        this.f91984d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91982e;
        F(ShaderGraphInputDefault.g(0, 0.0f));
        F(ShaderGraphInputDefault.g(1, 0.0f));
        F(ShaderGraphInputDefault.g(2, 1.0f));
        F(ShaderGraphInputDefault.g(3, 0.0f));
        F(ShaderGraphInputDefault.g(4, 1.0f));
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b10 = resolver.b(this, 0);
        for (int i10 = 1; i10 < this.f91983c.length; i10++) {
            b10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.f(b10, resolver.b(this, i10));
        }
        return b10;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        return (inputIndex == 2 || inputIndex == 4) ? "1.0" : "0.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context);
        String g10 = context.g(this, 0, stage, D10);
        String g11 = context.g(this, 1, stage, D10);
        String g12 = context.g(this, 2, stage, D10);
        String g13 = context.g(this, 3, stage, D10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("map_range.glsl"), "@OUT@", context.c(this, 0, stage, D10)), "@VALUE@", g10), "@FROM_MIN@", g11), "@FROM_MAX@", g12), "@TO_MIN@", g13), "@TO_MAX@", context.g(this, 4, stage, D10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91983c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91984d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Map Range";
    }
}
