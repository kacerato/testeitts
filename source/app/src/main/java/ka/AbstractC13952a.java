package ka;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import j9.C13813a;

public abstract class AbstractC13952a extends NoCodeNode implements F {

    public static final int f94988j = 0;

    public static final int f94989k = 1;

    public static final int f94990l = 0;

    public final NoCodeSlot[] f94991g = {new NoCodeSlot("Collision", H.COLLISION).c(Lang.l(Lang.T.NOCODE_SLOT_COLLISION)), new NoCodeSlot("Index", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_INDEX))};

    public final NoCodeSlot[] f94992h;

    public final String f94993i;

    public AbstractC13952a(String serializedName, String title, String outputName, String displayableOutputName, H outputType) {
        this.serializedNodeType = serializedName;
        this.f94993i = title;
        this.f94992h = new NoCodeSlot[]{new NoCodeSlot(outputName, outputType, displayableOutputName)};
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f94991g;
    }

    public abstract Object G0(C13813a collision, int index);

    @Override
    public NoCodeSlot[] J() {
        return this.f94992h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f94993i;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 1 ? "0.0" : "";
    }

    @Override
    public void m0() {
        y0(this.f94992h[0], G0(ga.m.P(Q(this.f94991g[0])), (int) ga.m.V(Q(this.f94991g[1]))));
        u(this.f94992h[0]);
    }
}
