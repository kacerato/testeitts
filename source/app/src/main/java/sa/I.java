package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class I extends AbstractC15245b {

    public final String[] f109321l;

    public final String[] f109322m;

    public I(String serializedName, String title, String valueLabel, String displayableValueLabel, String defaultValue, String[] runtimeAliases, String[] serializedAliases) {
        super(serializedName, title, valueLabel, displayableValueLabel, ga.H.NUMBER, defaultValue);
        this.f109321l = runtimeAliases;
        this.f109322m = serializedAliases;
    }

    @Override
    public void G0(Material material, Object value) {
        J.v(material, this.f109321l, this.f109322m, ga.m.V(value));
    }
}
