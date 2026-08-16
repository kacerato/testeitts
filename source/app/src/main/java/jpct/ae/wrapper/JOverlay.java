package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.Object3D;
import com.threed.jpct.RGBColor;
import com.threed.jpct.TextureInfo;
import com.threed.jpct.World;
import com.threed.jpct.util.Overlay;

@BA.ShortName("JpctOverlay")
public class JOverlay extends AbsObjectWrapper<Overlay> {
    public void Initialize(World world, FrameBuffer frameBuffer, String str) {
        setObject(new Overlay(world, frameBuffer, str));
    }

    public void Initialize2(World world, int i10, int i11, int i12, int i13, String str) {
        setObject(new Overlay(world, i10, i11, i12, i13, str));
    }

    public void Initialize3(World world, int i10, int i11, int i12, int i13, String str, boolean z10) {
        setObject(new Overlay(world, i10, i11, i12, i13, str, z10));
    }

    public void dispose() {
        ((Overlay) getObject()).dispose();
    }

    public Object3D getObject3D() {
        return ((Overlay) getObject()).getObject3D();
    }

    public void setColor(RGBColor rGBColor) {
        ((Overlay) getObject()).setColor(rGBColor);
    }

    public void setDepth(float f10) {
        ((Overlay) getObject()).setDepth(f10);
    }

    public void setNewCoordinates(int i10, int i11, int i12, int i13) {
        ((Overlay) getObject()).setNewCoordinates(i10, i11, i12, i13);
    }

    public void setRotation(float f10) {
        ((Overlay) getObject()).setRotation(f10);
    }

    public void setRotationPivot(int i10, int i11) {
        ((Overlay) getObject()).setRotationPivot(i10, i11);
    }

    public void setSourceCoordinates(int i10, int i11, int i12, int i13) {
        ((Overlay) getObject()).setSourceCoordinates(i10, i11, i12, i13);
    }

    public void setTexture(String str) {
        ((Overlay) getObject()).setTexture(str);
    }

    public void setTexture2(TextureInfo textureInfo) {
        ((Overlay) getObject()).setTexture(textureInfo);
    }

    public void setTransparency(int i10) {
        ((Overlay) getObject()).setTransparency(i10);
    }

    public void setTransparencyMode(int i10) {
        ((Overlay) getObject()).setTransparencyMode(i10);
    }

    public void setVisibility(boolean z10) {
        ((Overlay) getObject()).setVisibility(z10);
    }

    public void unlink() {
        ((Overlay) getObject()).unlink();
    }

    public void update(FrameBuffer frameBuffer) {
        ((Overlay) getObject()).update(frameBuffer);
    }
}
