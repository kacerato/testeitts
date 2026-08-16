package ga;

import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;

public class C13303A implements D {

    public final NoCodeData f88179a;

    public C13303A(NoCodeData data) {
        this.f88179a = data;
    }

    @Override
    public NoCodeData a() {
        return this.f88179a;
    }

    @Override
    public H b(NoCodeNode node, int inputIndex) {
        NoCodeSlot noCodeSlot;
        if (node == null) {
            return H.NUMBER;
        }
        NoCodeData noCodeData = this.f88179a;
        NoCodeNodeConnection Q10 = noCodeData != null ? noCodeData.Q(node.B(), inputIndex) : null;
        if (Q10 == null) {
            NoCodeSlot[] F10 = node.F();
            return (F10 == null || inputIndex < 0 || inputIndex >= F10.length || (noCodeSlot = F10[inputIndex]) == null) ? H.NUMBER : noCodeSlot.type;
        }
        NoCodeNode V10 = this.f88179a.V(Q10.fromNodeId);
        return V10 == null ? H.NUMBER : V10.t0(Q10.fromSlot, this);
    }
}
