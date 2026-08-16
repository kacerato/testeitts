package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.DepthBuffer;
import com.threed.jpct.ITextureEffect;
import com.threed.jpct.NPOTTexture;
import com.threed.jpct.RGBColor;
import com.threed.jpct.Texture;

@BA.ShortName("JpctNPOTTexture")
public class JNPOTTexture extends AbsObjectWrapper<NPOTTexture> {
    public void Initialize(int i10, int i11, RGBColor rGBColor) {
        setObject(new NPOTTexture(i10, i11, rGBColor));
    }

    public void add(Texture texture, float f10) {
        ((NPOTTexture) getObject()).add(texture, f10);
    }

    public void applyEffect() {
        ((NPOTTexture) getObject()).applyEffect();
    }

    public void compress() {
        ((NPOTTexture) getObject()).compress();
    }

    public void defaultTo4bpp(boolean z10) {
        Texture.defaultTo4bpp(z10);
    }

    public void defaultToKeepPixels(boolean z10) {
        Texture.defaultToKeepPixels(z10);
    }

    public void defaultToMipmapping(boolean z10) {
        Texture.defaultToMipmapping(z10);
    }

    public void enable4bpp(boolean z10) {
        ((NPOTTexture) getObject()).enable4bpp(z10);
    }

    public int getArraySize() {
        return ((NPOTTexture) getObject()).getArraySize();
    }

    public DepthBuffer getDepthBuffer() {
        return ((NPOTTexture) getObject()).getDepthBuffer();
    }

    public int getHeight() {
        return ((NPOTTexture) getObject()).getHeight();
    }

    public int getWidth() {
        return ((NPOTTexture) getObject()).getWidth();
    }

    public boolean isEnabled() {
        return ((NPOTTexture) getObject()).isEnabled();
    }

    public void keepPixelData(boolean z10) {
        ((NPOTTexture) getObject()).keepPixelData(z10);
    }

    public void removeAlpha() {
        ((NPOTTexture) getObject()).removeAlpha();
    }

    public void removeEffect() {
        ((NPOTTexture) getObject()).removeEffect();
    }

    public void setAsShadowMap(boolean z10) {
        ((NPOTTexture) getObject()).setAsShadowMap(z10);
    }

    public void setClamping(boolean z10) {
        ((NPOTTexture) getObject()).setClamping(z10);
    }

    public void setDepthBuffer(DepthBuffer depthBuffer) {
        ((NPOTTexture) getObject()).setDepthBuffer(depthBuffer);
    }

    public void setEffect(ITextureEffect iTextureEffect) {
        ((NPOTTexture) getObject()).setEffect(iTextureEffect);
    }

    public void setEnabled(boolean z10) {
        ((NPOTTexture) getObject()).setEnabled(z10);
    }

    public void setFiltering(boolean z10) {
        ((NPOTTexture) getObject()).setFiltering(z10);
    }

    public void setMipmap(boolean z10) {
        ((NPOTTexture) getObject()).setMipmap(z10);
    }

    public void setTextureCompression(boolean z10) {
        ((NPOTTexture) getObject()).setTextureCompression(z10);
    }
}
