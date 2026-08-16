package ic;

import androidx.exifinterface.media.ExifInterface;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public abstract class AbstractC13650h1 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.e {

    public static final String f91916f = "0.0001";

    public final String f91917c;

    public final ShaderGraphSlot[] f91918d;

    public final ShaderGraphSlot[] f91919e;

    public AbstractC13650h1(String title) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91918d = new ShaderGraphSlot[]{new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10)};
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.BRANCH;
        this.f91919e = new ShaderGraphSlot[]{new ShaderGraphSlot("True", c11), new ShaderGraphSlot("False", c11)};
        this.f91917c = title;
    }

    public abstract String H(String a10, String b10);

    @Override
    public String c(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        return H(context.g(this, 0, stage, c10), context.g(this, 1, stage, c10));
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91918d;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91919e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return this.f91917c;
    }

    @Override
    public boolean y() {
        return false;
    }
}
