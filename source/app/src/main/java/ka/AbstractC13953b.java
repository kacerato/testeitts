package ka;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import j9.C13813a;

public abstract class AbstractC13953b extends NoCodeNode implements F {

    public static final int f94994j = 0;

    public static final int f94995k = 0;

    public final NoCodeSlot[] f94996g = {new NoCodeSlot("Collision", H.COLLISION).c(Lang.l(Lang.T.NOCODE_SLOT_COLLISION))};

    public final NoCodeSlot[] f94997h;

    public final String f94998i;

    public AbstractC13953b(String serializedName, String title, String outputName, String displayableOutputName, H outputType) {
        this.serializedNodeType = serializedName;
        this.f94998i = title;
        this.f94997h = new NoCodeSlot[]{new NoCodeSlot(outputName, outputType).c(displayableOutputName)};
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f94996g;
    }

    public abstract Object G0(C13813a collision);

    @Override
    public NoCodeSlot[] J() {
        return this.f94997h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f94998i;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        y0(this.f94997h[0], G0(ga.m.P(Q(this.f94996g[0]))));
        u(this.f94997h[0]);
    }
}
