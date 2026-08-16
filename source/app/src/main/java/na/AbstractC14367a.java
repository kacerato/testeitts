package na;

import com.ardor3d.util.export.xml.XMLExporter;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;

public abstract class AbstractC14367a extends NoCodeNode {

    public static final int f97901h = 0;

    public final NoCodeSlot[] f97902g = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public AbstractC14367a(String serializedName) {
        this.serializedNodeType = serializedName;
    }

    public abstract float G0(float hour);

    public abstract String H0();

    @Override
    public NoCodeSlot[] J() {
        return this.f97902g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return H0();
    }

    @Override
    public void m0() {
        Float g10 = C14368b.g();
        y0(this.f97902g[0], Float.valueOf(g10 != null ? G0(g10.floatValue()) : 0.0f));
        u(this.f97902g[0]);
    }
}
