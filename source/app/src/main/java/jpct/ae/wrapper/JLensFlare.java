package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.World;
import com.threed.jpct.util.LensFlare;

@BA.ShortName("JpctLensFlare")
public class JLensFlare extends AbsObjectWrapper<LensFlare> {
    public void Initialize(SimpleVector simpleVector, String str, String str2, String str3, String str4) {
        setObject(new LensFlare(simpleVector, str, str2, str3, str4));
    }

    public void render(FrameBuffer frameBuffer) {
        ((LensFlare) getObject()).render(frameBuffer);
    }

    public void setDirection(boolean z10) {
        ((LensFlare) getObject()).setDirection(z10);
    }

    public void setGlobalScale(float f10) {
        ((LensFlare) getObject()).setGlobalScale(f10);
    }

    public void setHiding(boolean z10) {
        ((LensFlare) getObject()).setHiding(z10);
    }

    public void setLightPosition(SimpleVector simpleVector) {
        ((LensFlare) getObject()).setLightPosition(simpleVector);
    }

    public void setMaximumDistance(float f10) {
        ((LensFlare) getObject()).setMaximumDistance(f10);
    }

    public void setTransparency(int i10) {
        ((LensFlare) getObject()).setTransparency(i10);
    }

    public void update(FrameBuffer frameBuffer, World world) {
        ((LensFlare) getObject()).update(frameBuffer, world);
    }
}
