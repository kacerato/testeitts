package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.Texture;
import com.threed.jpct.TextureManager;
import com.threed.jpct.Virtualizer;
import java.util.HashSet;
import java.util.List;

@BA.ShortName("JpctTextureManager")
public class JTextureManager extends AbsObjectWrapper<TextureManager> {
    public static final int TEXTURE_NOTFOUND() {
        return -1;
    }

    public void Initialize() {
        setObject(TextureManager.getInstance());
    }

    public void addTexture(String str) {
        ((TextureManager) getObject()).addTexture(str);
    }

    public void addTexture2(String str, Texture texture) {
        ((TextureManager) getObject()).addTexture(str, texture);
    }

    public void compress() {
        ((TextureManager) getObject()).compress();
    }

    public boolean containsTexture(String str) {
        return ((TextureManager) getObject()).containsTexture(str);
    }

    public void flush() {
        ((TextureManager) getObject()).flush();
    }

    public Texture getDummyTexture() {
        return ((TextureManager) getObject()).getDummyTexture();
    }

    public long getMemoryUsage() {
        return ((TextureManager) getObject()).getMemoryUsage();
    }

    public String getNameByID(int i10) {
        return ((TextureManager) getObject()).getNameByID(i10);
    }

    public HashSet<String> getNames() {
        return ((TextureManager) getObject()).getNames();
    }

    public List<?> getState() {
        return ((TextureManager) getObject()).getState();
    }

    public Texture getTexture(String str) {
        return ((TextureManager) getObject()).getTexture(str);
    }

    public Texture getTextureByID(int i10) {
        return ((TextureManager) getObject()).getTextureByID(i10);
    }

    public int getTextureCount() {
        return ((TextureManager) getObject()).getTextureCount();
    }

    public int getTextureID(String str) {
        return ((TextureManager) getObject()).getTextureID(str);
    }

    public Virtualizer getVirtualizer() {
        return ((TextureManager) getObject()).getVirtualizer();
    }

    public void preWarm(FrameBuffer frameBuffer) {
        ((TextureManager) getObject()).preWarm(frameBuffer);
    }

    public void removeAndUnload(String str, FrameBuffer frameBuffer) {
        ((TextureManager) getObject()).removeAndUnload(str, frameBuffer);
    }

    public void removeTexture(String str) {
        ((TextureManager) getObject()).removeTexture(str);
    }

    public void replaceTexture(String str, Texture texture) {
        ((TextureManager) getObject()).replaceTexture(str, texture);
    }

    public void setDummyTexture(Texture texture) {
        ((TextureManager) getObject()).setDummyTexture(texture);
    }

    public void setState(List<?> list) {
        ((TextureManager) getObject()).setState(list);
    }

    public void setVirtualizer(Virtualizer virtualizer) {
        ((TextureManager) getObject()).setVirtualizer(virtualizer);
    }

    public void unloadTexture(FrameBuffer frameBuffer, Texture texture) {
        ((TextureManager) getObject()).unloadTexture(frameBuffer, texture);
    }

    public void virtualize(Texture texture) {
        ((TextureManager) getObject()).virtualize(texture);
    }
}
