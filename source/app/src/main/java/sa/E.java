package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class E extends AbstractC15245b {

    public final String[] f109306l;

    public final String[] f109307m;

    public E(String serializedName, String title, String valueLabel, String displayableValueLabel, String defaultValue, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, displayableValueLabel, ga.H.COLOR, defaultValue);
        this.f109306l = runtimeAliases;
        this.f109307m = serializedAliases;
    }

    @Override
    public void G0(Material material, Object value) {
        J.s(material, this.f109306l, this.f109307m, ga.m.Q(value));
    }
}
