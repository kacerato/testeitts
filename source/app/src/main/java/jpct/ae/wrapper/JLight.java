package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Light;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.World;

@BA.ShortName("JpcLight")
public class JLight extends AbsObjectWrapper<Light> {
    public static final boolean LIGHT_INVISIBLE() {
        return false;
    }

    public static final boolean LIGHT_VISIBLE() {
        return true;
    }

    public void Initialize(World world) {
        setObject(new Light(world));
    }

    public void disable() {
        ((Light) getObject()).disable();
    }

    public void enable() {
        ((Light) getObject()).enable();
    }

    public float getAttenuation() {
        return ((Light) getObject()).getAttenuation();
    }

    public float getDiscardDistance() {
        return ((Light) getObject()).getDiscardDistance();
    }

    public float getDistanceOverride() {
        return ((Light) getObject()).getDistanceOverride();
    }

    public SimpleVector getIntensity() {
        return ((Light) getObject()).getIntensity();
    }

    public SimpleVector getPosition() {
        return ((Light) getObject()).getPosition();
    }

    public SimpleVector getPosition2(SimpleVector simpleVector) {
        return ((Light) getObject()).getPosition(simpleVector);
    }

    public boolean isEnabled() {
        return ((Light) getObject()).isEnabled();
    }

    public void rotate(SimpleVector simpleVector, SimpleVector simpleVector2) {
        ((Light) getObject()).rotate(simpleVector, simpleVector2);
    }

    public void setAttenuation(float f10) {
        ((Light) getObject()).setAttenuation(f10);
    }

    public void setDiscardDistance(float f10) {
        ((Light) getObject()).setDiscardDistance(f10);
    }

    public void setDistanceOverride(float f10) {
        ((Light) getObject()).setDistanceOverride(f10);
    }

    public void setIntensity(SimpleVector simpleVector) {
        ((Light) getObject()).setIntensity(simpleVector);
    }

    public void setIntensity2(float f10, float f11, float f12) {
        ((Light) getObject()).setIntensity(f10, f11, f12);
    }

    public void setPosition(SimpleVector simpleVector) {
        ((Light) getObject()).setPosition(simpleVector);
    }
}
