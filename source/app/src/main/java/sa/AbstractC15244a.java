package sa;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13308d;
import ga.EnumC13304B;
import java.util.Iterator;

public abstract class AbstractC15244a extends NoCodeNode implements ga.F {

    public static final int f109367j = 0;

    public static final int f109368k = 0;

    public final String f109369g;

    public final NoCodeSlot[] f109370h;

    public final NoCodeSlot[] f109371i;

    public AbstractC15244a(String serializedName, String title, String valueLabel, ga.H valueType) {
        this.serializedNodeType = serializedName;
        this.f109369g = title;
        this.f109370h = new NoCodeSlot[]{new NoCodeSlot("Material", ga.H.MATERIAL).c(Lang.l(Lang.T.NOCODE_SLOT_MATERIAL))};
        this.f109371i = new NoCodeSlot[]{new NoCodeSlot(valueLabel, valueType).c(valueLabel)};
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f109370h;
    }

    public abstract Object G0(Material material);

    public final Object H0() {
        Iterator<Material> it = J.j(this.f79021a).iterator();
        while (it.hasNext()) {
            Object G02 = G0(it.next());
            if (G02 != null) {
                return G02;
            }
        }
        return null;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f109371i;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f109369g;
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        Material b02 = ga.m.b0(Q(this.f109370h[0]));
        Object G02 = b02 != null ? G0(b02) : H0();
        if (G02 == null) {
            G02 = ga.m.f(this.f109371i[0].type, this.f79021a.h0());
        }
        y0(this.f109371i[0], G02);
        u(this.f109371i[0]);
    }
}
