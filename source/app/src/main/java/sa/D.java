package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class D extends AbstractC15244a {

    public final String[] f109304l;

    public final String[] f109305m;

    public D(String serializedName, String title, String valueLabel, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, ga.H.COLOR);
        this.f109304l = runtimeAliases;
        this.f109305m = serializedAliases;
    }

    @Override
    public Object G0(Material material) {
        return J.d(material, this.f109304l, this.f109305m);
    }
}
