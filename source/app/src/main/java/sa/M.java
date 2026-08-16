package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class M extends AbstractC15244a {

    public final String[] f109351l;

    public final String[] f109352m;

    public M(String serializedName, String title, String valueLabel, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, ga.H.TEXTURE);
        this.f109351l = runtimeAliases;
        this.f109352m = serializedAliases;
    }

    @Override
    public Object G0(Material material) {
        return J.m(material, this.f109351l, this.f109352m);
    }
}
