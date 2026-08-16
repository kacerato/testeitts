package JAVARuntime;

import android.graphics.Bitmap;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import d8.m;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FrameBuffer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FrameBuffer.class
  classes.dex
 */
@ClassCategory(cat = {"Shaders"})
public final class FrameBuffer {

    public class AnonymousClass1 implements a.b {
        final ExtractCallback val$callback;

        public AnonymousClass1(final ExtractCallback val$callback) {
            this.val$callback = val$callback;
        }

        @Override
        public void on(final Bitmap bitmap) {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass1.this.val$callback.on(bitmap);
                }
            });
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FrameBuffer$ExtractCallback.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FrameBuffer$ExtractCallback.class
  classes.dex
 */
    public interface ExtractCallback {
        void on(Bitmap bitmap);
    }

    public FrameBuffer(int i10, int i11) {
    }

    public FrameBuffer(int i10, int i11, int i12) {
    }

    public FrameBuffer(int i10, int i11, int i12, int i13) {
    }

    public FrameBuffer(int i10, int i11, int i12, int i13, Texture texture) {
    }

    public void resize(int i10, int i11) {
    }

    public void resize(int i10, int i11, int i12) {
    }

    @HideGetSet
    public int getWidth() {
        return 0;
    }

    @HideGetSet
    public int getHeight() {
        return 0;
    }

    @HideGetSet
    public int getMaxWidth() {
        return 0;
    }

    @HideGetSet
    public int getMaxHeight() {
        return 0;
    }

    @HideGetSet
    public int getRenderPercentage() {
        return 0;
    }

    @HideGetSet
    public void setRenderPercentage(int i10) {
    }

    @HideGetSet
    public int getColorTexturesCount() {
        return 0;
    }

    @HideGetSet
    public Texture getColorTexture() {
        return null;
    }

    public Texture getColorTexture(int i10) {
        return null;
    }

    public Texture[] getColorTextureArray() {
        return null;
    }

    @HideGetSet
    public Texture getDepthTexture() {
        return null;
    }

    public void extractGPUImageToBtm(ExtractCallback extractCallback) {
    }

    public void saveGPUImageToFile(File file) {
    }

    public void saveGPUImageToFile(File file, Runnable runnable) {
    }

    public void destroy() {
    }
}
