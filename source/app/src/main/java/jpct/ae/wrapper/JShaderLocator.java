package jpct.ae.wrapper;

import android.content.res.AssetManager;
import android.content.res.Resources;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.ShaderLocator;
import java.io.IOException;

@BA.ShortName("JpctShaderLocator")
public class JShaderLocator extends AbsObjectWrapper<ShaderLocator> {
    public void Initialize() {
        setObject(new ShaderLocator());
    }

    public void Initialize2(AssetManager assetManager) {
        setObject(new ShaderLocator(assetManager));
    }

    public void Initialize3(Resources resources, int i10) {
        setObject(new ShaderLocator(resources, i10));
    }

    public String getShaderCode(String str) throws IOException {
        return ((ShaderLocator) getObject()).getShaderCode(str);
    }
}
