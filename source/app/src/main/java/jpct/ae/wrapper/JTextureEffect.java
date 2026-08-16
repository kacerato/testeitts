package jpct.ae.wrapper;

import android.util.Log;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Texture;

@BA.ShortName("JpctTextureEffect")
public class JTextureEffect extends AbsObjectWrapper<TextureEffect> {
    public void Initialize(BA ba2, String str, boolean z10) {
        if (ba2.subExists((String.valueOf(str) + "_TextureEffect").toLowerCase(BA.cul))) {
            setObject(new TextureEffect(ba2, this, str, z10));
            return;
        }
        Log.e("JPCT", "Sub " + str + "_TextureEffect - Doesn't exist!");
    }

    @BA.Hide
    public void apply(int[] iArr, int[] iArr2) {
        ((TextureEffect) getObject()).apply(iArr, iArr2);
    }

    @BA.Hide
    public boolean containsAlpha() {
        return ((TextureEffect) getObject()).containsAlpha();
    }

    @BA.Hide
    public void init(Texture texture) {
        ((TextureEffect) getObject()).init(texture);
    }
}
