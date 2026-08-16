package jpct.ae.wrapper;

import anywheresoftware.b4a.BA;
import com.threed.jpct.ITextureEffect;
import com.threed.jpct.Texture;

@BA.Hide
class TextureEffect implements ITextureEffect {

    private final BA f94404ba;
    private final boolean containsAlpha;
    private final String eventName;
    private final JTextureEffect sender;

    public TextureEffect(BA ba2, JTextureEffect jTextureEffect, String str, boolean z10) {
        this.eventName = str;
        this.f94404ba = ba2;
        this.containsAlpha = z10;
        this.sender = jTextureEffect;
    }

    @Override
    public void apply(int[] iArr, int[] iArr2) {
        this.f94404ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_TextureEffect").toLowerCase(BA.cul), new Object[]{iArr, iArr2});
    }

    @Override
    public boolean containsAlpha() {
        return this.containsAlpha;
    }

    @Override
    public void init(Texture texture) {
    }
}
