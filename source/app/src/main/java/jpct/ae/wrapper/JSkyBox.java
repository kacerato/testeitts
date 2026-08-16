package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.World;
import com.threed.jpct.util.SkyBox;

@BA.ShortName("jpctSkyBox")
public class JSkyBox extends AbsObjectWrapper<SkyBox> {
    public void Initialize(float f10) {
        setObject(new SkyBox(f10));
    }

    public void Initialize2(String str, String str2, String str3, String str4, String str5, String str6, float f10) {
        setObject(new SkyBox(str, str2, str3, str4, str5, str6, f10));
    }

    public void compile() {
        ((SkyBox) getObject()).compile();
    }

    public void dispose() {
        ((SkyBox) getObject()).dispose();
    }

    public World getWorld() {
        return ((SkyBox) getObject()).getWorld();
    }

    public void render(World world, FrameBuffer frameBuffer) {
        ((SkyBox) getObject()).render(world, frameBuffer);
    }

    public void setCenter(SimpleVector simpleVector) {
        ((SkyBox) getObject()).setCenter(simpleVector);
    }
}
