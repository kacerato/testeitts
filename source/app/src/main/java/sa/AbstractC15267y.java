package sa;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import ec.EnumC13053a;

public abstract class AbstractC15267y extends AbstractC15245b {
    public AbstractC15267y(String serializedName, String title) {
        super(serializedName, title, "Blending Mode", Lang.l(Lang.T.NOCODE_SLOT_BLENDING_MODE), ga.H.BLENDING_MODE, EnumC13053a.OPAQUE.name());
    }

    @Override
    public void G0(Material material, Object value) {
        String[] strArr = F.f109308a;
        J.t(material, strArr, strArr, ga.m.N(value));
    }
}
