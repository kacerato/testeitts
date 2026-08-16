package sa;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13308d;
import ga.EnumC13304B;
import java.util.Iterator;

public abstract class AbstractC15245b extends NoCodeNode implements ga.F {

    public static final int f109373j = 0;

    public static final int f109374k = 1;

    public final String f109375g;

    public final String f109376h;

    public final NoCodeSlot[] f109377i;

    public AbstractC15245b(String serializedName, String title, String valueLabel, String displayableValueLabel, ga.H valueType, String defaultValueExpression) {
        this.serializedNodeType = serializedName;
        this.f109375g = title;
        this.f109376h = defaultValueExpression == null ? "" : defaultValueExpression;
        this.f109377i = new NoCodeSlot[]{new NoCodeSlot("Material", ga.H.MATERIAL, Lang.l(Lang.T.NOCODE_SLOT_MATERIAL)), new NoCodeSlot(valueLabel, valueType, displayableValueLabel)};
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f109377i;
    }

    public abstract void G0(Material material, Object value);

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f109375g;
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? this.f109376h : "";
    }

    @Override
    public void m0() {
        try {
            Object Q10 = Q(this.f109377i[1]);
            Material b02 = ga.m.b0(Q(this.f109377i[0]));
            if (b02 != null) {
                G0(b02, Q10);
                return;
            }
            Iterator<Material> it = J.j(this.f79021a).iterator();
            while (it.hasNext()) {
                G0(it.next(), Q10);
            }
        } finally {
            t();
        }
    }
}
