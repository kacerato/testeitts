package ic;

import androidx.exifinterface.media.ExifInterface;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public abstract class AbstractC13647g1 extends ShaderGraphNode {

    public final String f91906c;

    public final String f91907d;

    public final ShaderGraphSlot[] f91908e;

    public final ShaderGraphSlot[] f91909f;

    public AbstractC13647g1(String title, String op) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91908e = new ShaderGraphSlot[]{new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10)};
        this.f91909f = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.f91906c = title;
        this.f91907d = op;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.f(resolver.b(this, 0), resolver.b(this, 1));
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context);
        String g10 = context.g(this, 0, stage, D10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("binary_op.glsl"), "@OUT@", context.c(this, 0, stage, D10)), "@A@", g10), "@B@", context.g(this, 1, stage, D10)), "@OP@", this.f91907d));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91908e;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91909f;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return this.f91906c;
    }
}
