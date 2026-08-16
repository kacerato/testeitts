package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class H extends AbstractC15244a {

    public final String[] f109319l;

    public final String[] f109320m;

    public H(String serializedName, String title, String valueLabel, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, ga.H.NUMBER);
        this.f109319l = runtimeAliases;
        this.f109320m = serializedAliases;
    }

    @Override
    public Object G0(Material material) {
        return J.i(material, this.f109319l, this.f109320m);
    }
}
