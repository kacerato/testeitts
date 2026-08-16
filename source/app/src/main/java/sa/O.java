package sa;

import com.itsmagic.engine.Engines.Engine.Material.Material;

public abstract class O extends AbstractC15244a {
    public O(String serializedName, String title) {
        super(serializedName, title, "UV Source", ga.H.UV_SOURCE);
    }

    @Override
    public Object G0(Material material) {
        String[] strArr = F.f109309b;
        return J.e(material, strArr, strArr, cc.e.class, cc.e.Vertex);
    }
}
