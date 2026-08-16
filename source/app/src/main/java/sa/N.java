package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class N extends AbstractC15245b {

    public final String[] f109353l;

    public final String[] f109354m;

    public N(String serializedName, String title, String valueLabel, String displayableValueLabel, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, displayableValueLabel, ga.H.TEXTURE, "");
        this.f109353l = runtimeAliases;
        this.f109354m = serializedAliases;
    }

    @Override
    public void G0(Material material, Object value) {
        J.x(material, this.f109353l, this.f109354m, ga.m.j0(value));
    }
}
