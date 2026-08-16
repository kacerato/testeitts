package ka;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import j9.C13813a;

public abstract class AbstractC13954c extends NoCodeNode implements F {

    public static final int f94999j = 0;

    public static final int f95000k = 0;

    public final NoCodeSlot[] f95001g = {new NoCodeSlot("Contact", H.CONTACT).c(Lang.l(Lang.T.NOCODE_SLOT_CONTACT))};

    public final NoCodeSlot[] f95002h;

    public final String f95003i;

    public AbstractC13954c(String serializedName, String title, String outputName, String displayableOutputName, H outputType) {
        this.serializedNodeType = serializedName;
        this.f95003i = title;
        this.f95002h = new NoCodeSlot[]{new NoCodeSlot(outputName, outputType, displayableOutputName)};
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f95001g;
    }

    public abstract Object G0(C13813a.C1794a contact);

    @Override
    public NoCodeSlot[] J() {
        return this.f95002h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f95003i;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        y0(this.f95002h[0], G0(ga.m.S(Q(this.f95001g[0]))));
        u(this.f95002h[0]);
    }
}
