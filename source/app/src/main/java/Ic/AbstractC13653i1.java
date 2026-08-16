package ic;

import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public abstract class AbstractC13653i1 extends ShaderGraphNode {

    public final String f91926c;

    public final String f91927d;

    public final ShaderGraphSlot[] f91928e;

    public final ShaderGraphSlot[] f91929f;

    public AbstractC13653i1(String title, String func) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91928e = new ShaderGraphSlot[]{new ShaderGraphSlot("In", c10)};
        this.f91929f = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.f91926c = title;
        this.f91927d = func;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return resolver.b(this, 0);
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("unary_func.glsl"), "@OUT@", context.c(this, 0, stage, D10)), "@A@", context.g(this, 0, stage, D10)), "@FUNC@", this.f91927d));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91928e;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91929f;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return this.f91926c;
    }
}
