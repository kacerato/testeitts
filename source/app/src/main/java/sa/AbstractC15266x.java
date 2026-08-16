package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;
import ec.EnumC13053a;

public abstract class AbstractC15266x extends AbstractC15244a {
    public AbstractC15266x(String serializedName, String title) {
        super(serializedName, title, "Blending Mode", ga.H.BLENDING_MODE);
    }

    @Override
    public Object G0(Material material) {
        String[] strArr = F.f109308a;
        return J.e(material, strArr, strArr, EnumC13053a.class, EnumC13053a.OPAQUE);
    }
}
