package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class B extends AbstractC15245b {

    public final String[] f109301l;

    public final String[] f109302m;

    public B(String serializedName, String title, String valueLabel, String displayableValueLabel, String defaultValue, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, displayableValueLabel, ga.H.BOOLEAN, defaultValue);
        this.f109301l = runtimeAliases;
        this.f109302m = serializedAliases;
    }

    @Override
    public void G0(Material material, Object value) {
        J.r(material, this.f109301l, this.f109302m, ga.m.O(value));
    }
}
