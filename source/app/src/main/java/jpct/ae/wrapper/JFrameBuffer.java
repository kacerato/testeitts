package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.IPaintListener;
import com.threed.jpct.IPostProcessor;
import com.threed.jpct.RGBColor;
import com.threed.jpct.Texture;
import javax.microedition.khronos.opengles.GL10;

@BA.ShortName("JpctFrameBuffer")
public class JFrameBuffer extends AbsObjectWrapper<FrameBuffer> {
    public static final boolean OPAQUE_BLITTING() {
        return false;
    }

    public static final boolean TRANSPARENT_BLITTING() {
        return true;
    }

    public void Initialize1(GL10 gl10, int i10, int i11) {
        setObject(new FrameBuffer(gl10, i10, i11));
    }

    public void Initialize2(int i10, int i11) {
        setObject(new FrameBuffer(i10, i11));
    }

    public void addPostProcessor(IPostProcessor iPostProcessor) {
        ((FrameBuffer) getObject()).addPostProcessor(iPostProcessor);
    }

    public void blit(Texture texture, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10) {
        ((FrameBuffer) getObject()).blit(texture, i10, i11, i12, i13, i14, i15, z10);
    }

    public void blit2(Texture texture, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10, RGBColor rGBColor) {
        ((FrameBuffer) getObject()).blit(texture, i10, i11, i12, i13, i14, i15, i16, i17, i18, z10, rGBColor);
    }

    public void blit3(Texture texture, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10) {
        ((FrameBuffer) getObject()).blit(texture, i10, i11, i12, i13, i14, i15, i16, i17, i18, z10);
    }

    public void blit4(int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        ((FrameBuffer) getObject()).blit(iArr, i10, i11, i12, i13, i14, i15, i16, i17, z10);
    }

    public void clear() {
        ((FrameBuffer) getObject()).clear();
    }

    public void clear2(RGBColor rGBColor) {
        ((FrameBuffer) getObject()).clear(rGBColor);
    }

    public void clearColorBufferOnly(RGBColor rGBColor) {
        ((FrameBuffer) getObject()).clearColorBufferOnly(rGBColor);
    }

    public void clearZBufferOnly() {
        ((FrameBuffer) getObject()).clearZBufferOnly();
    }

    public void display() {
        ((FrameBuffer) getObject()).display();
    }

    public void dispose() {
        ((FrameBuffer) getObject()).dispose();
    }

    public void flush() {
        ((FrameBuffer) getObject()).flush();
    }

    public void freeMemory() {
        ((FrameBuffer) getObject()).freeMemory();
    }

    public float getCenterX() {
        return ((FrameBuffer) getObject()).getCenterX();
    }

    public float getCenterY() {
        return ((FrameBuffer) getObject()).getCenterY();
    }

    public int getHeight() {
        return ((FrameBuffer) getObject()).getHeight();
    }

    public Long getID() {
        return ((FrameBuffer) getObject()).getID();
    }

    public int getOpenGLMajorVersion() {
        return ((FrameBuffer) getObject()).getOpenGLMajorVersion();
    }

    public int[] getPixels() {
        return ((FrameBuffer) getObject()).getPixels();
    }

    public int[] getPixels2(int[] iArr) {
        return ((FrameBuffer) getObject()).getPixels(iArr);
    }

    public int getWidth() {
        return ((FrameBuffer) getObject()).getWidth();
    }

    public boolean isInit() {
        return ((FrameBuffer) getObject()).isInitialized();
    }

    public void removeAllPostProcessors() {
        ((FrameBuffer) getObject()).removeAllPostProcessors();
    }

    public void removePostProcessor(IPostProcessor iPostProcessor) {
        ((FrameBuffer) getObject()).removePostProcessor(iPostProcessor);
    }

    public void removeRenderTarget() {
        ((FrameBuffer) getObject()).removeRenderTarget();
    }

    public void runPostProcessors() {
        ((FrameBuffer) getObject()).runPostProcessors();
    }

    public void setPaintListener(IPaintListener iPaintListener) {
        ((FrameBuffer) getObject()).setPaintListener(iPaintListener);
    }

    public void setRenderTarget1(int i10) {
        ((FrameBuffer) getObject()).setRenderTarget(i10);
    }

    public void setRenderTarget2(int i10, int i11, int i12, int i13, int i14, boolean z10) {
        ((FrameBuffer) getObject()).setRenderTarget(i10, i11, i12, i13, i14, z10);
    }

    public void setRenderTarget3(Texture texture) {
        ((FrameBuffer) getObject()).setRenderTarget(texture);
    }

    public void setRenderTarget4(Texture texture, int i10, int i11, int i12, int i13, boolean z10) {
        ((FrameBuffer) getObject()).setRenderTarget(texture, i10, i11, i12, i13, z10);
    }

    public void setVirtualDimensions(int i10, int i11) {
        ((FrameBuffer) getObject()).setVirtualDimensions(i10, i11);
    }

    public void sync() {
        ((FrameBuffer) getObject()).sync();
    }
}
