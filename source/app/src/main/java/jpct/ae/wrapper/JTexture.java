package jpct.ae.wrapper;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.DepthBuffer;
import com.threed.jpct.ITextureEffect;
import com.threed.jpct.RGBColor;
import com.threed.jpct.Texture;
import java.io.InputStream;

@BA.ShortName("JpctTexture")
public class JTexture extends AbsObjectWrapper<Texture> {
    public static final int DEFAULT_HEIGHT() {
        return 16;
    }

    public static final int DEFAULT_WIDTH() {
        return 16;
    }

    public void Initialize(InputStream inputStream) {
        setObject(new Texture(inputStream));
    }

    public void Initialize2(InputStream inputStream, boolean z10) {
        setObject(new Texture(inputStream, z10));
    }

    public void Initialize3(Bitmap bitmap) {
        setObject(new Texture(bitmap));
    }

    public void Initialize4(Bitmap bitmap, boolean z10) {
        setObject(new Texture(bitmap, z10));
    }

    public void Initialize5(Drawable drawable) {
        setObject(new Texture(drawable));
    }

    public void Initialize6(Drawable drawable, boolean z10) {
        setObject(new Texture(drawable, z10));
    }

    public void Initialize7(int i10, int i11) {
        setObject(new Texture(i10, i11));
    }

    public void Initialize8(int i10, int i11, int i12) {
        setObject(new Texture(i10, i11, i12));
    }

    public void Initialize9(int i10, int i11, RGBColor rGBColor) {
        setObject(new Texture(i10, i11, rGBColor));
    }

    public void add(Texture texture, float f10) {
        ((Texture) getObject()).add(texture, f10);
    }

    public void applyEffect() {
        ((Texture) getObject()).applyEffect();
    }

    public void compress() {
        ((Texture) getObject()).compress();
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
        ((Texture) getObject()).enable4bpp(z10);
    }

    public int getArraySize() {
        return ((Texture) getObject()).getArraySize();
    }

    public DepthBuffer getDepthBuffer() {
        return ((Texture) getObject()).getDepthBuffer();
    }

    public int getHeight() {
        return ((Texture) getObject()).getHeight();
    }

    public int getWidth() {
        return ((Texture) getObject()).getWidth();
    }

    public boolean isEnabled() {
        return ((Texture) getObject()).isEnabled();
    }

    public void keepPixelData(boolean z10) {
        ((Texture) getObject()).keepPixelData(z10);
    }

    public void removeAlpha() {
        ((Texture) getObject()).removeAlpha();
    }

    public void removeEffect() {
        ((Texture) getObject()).removeEffect();
    }

    public void setAsShadowMap(boolean z10) {
        ((Texture) getObject()).setAsShadowMap(z10);
    }

    public void setClamping(boolean z10) {
        ((Texture) getObject()).setClamping(z10);
    }

    public void setDepthBuffer(DepthBuffer depthBuffer) {
        ((Texture) getObject()).setDepthBuffer(depthBuffer);
    }

    public void setEffect(ITextureEffect iTextureEffect) {
        ((Texture) getObject()).setEffect(iTextureEffect);
    }

    public void setEnabled(boolean z10) {
        ((Texture) getObject()).setEnabled(z10);
    }

    public void setFiltering(boolean z10) {
        ((Texture) getObject()).setFiltering(z10);
    }

    public void setMipmap(boolean z10) {
        ((Texture) getObject()).setMipmap(z10);
    }

    public void setTextureCompression(boolean z10) {
        ((Texture) getObject()).setTextureCompression(z10);
    }
}
