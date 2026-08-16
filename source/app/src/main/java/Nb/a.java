package Nb;

import JAVARuntime.GraphicsSettings;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import java.io.Serializable;

public class a implements Serializable {

    public GraphicsSettings f15874b;

    public void a(BuildDictionary dictionary) {
    }

    public GraphicsSettings b() {
        GraphicsSettings graphicsSettings = this.f15874b;
        if (graphicsSettings != null) {
            return graphicsSettings;
        }
        GraphicsSettings graphicsSettings2 = new GraphicsSettings(this);
        this.f15874b = graphicsSettings2;
        return graphicsSettings2;
    }
}
