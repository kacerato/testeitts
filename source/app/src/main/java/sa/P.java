package sa;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class P extends AbstractC15245b {
    public P(String serializedName, String title) {
        super(serializedName, title, "UV Source", Lang.l(Lang.T.NOCODE_SLOT_UV_SOURCE), ga.H.UV_SOURCE, cc.e.Vertex.name());
    }

    @Override
    public void G0(Material material, Object value) {
        String[] strArr = F.f109309b;
        J.t(material, strArr, strArr, ga.m.k0(value));
    }
}
