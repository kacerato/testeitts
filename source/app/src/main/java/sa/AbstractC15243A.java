package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class AbstractC15243A extends AbstractC15244a {

    public final String[] f109299l;

    public final String[] f109300m;

    public AbstractC15243A(String serializedName, String title, String valueLabel, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, ga.H.BOOLEAN);
        this.f109299l = runtimeAliases;
        this.f109300m = serializedAliases;
    }

    @Override
    public Object G0(Material material) {
        return J.b(material, this.f109299l, this.f109300m);
    }
}
