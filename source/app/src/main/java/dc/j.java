package dc;

import cc.C4171b;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;

public class j extends C12906d {
    public j(String shaderName, ShaderBinder shaderBinder, C4171b forwardPass, Material material) {
        this(shaderName, shaderBinder, forwardPass, material, true);
    }

    public j(String shaderName, ShaderBinder shaderBinder, C4171b forwardPass, Material material, boolean autoBuildVariance) {
        super(shaderName, shaderBinder, forwardPass, material, autoBuildVariance);
    }
}
