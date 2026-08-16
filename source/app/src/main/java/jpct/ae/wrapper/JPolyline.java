package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Polyline;
import com.threed.jpct.RGBColor;
import com.threed.jpct.SimpleVector;

@BA.ShortName("JpctPolyline")
public class JPolyline extends AbsObjectWrapper<Polyline> {
    public void Initialize(SimpleVector[] simpleVectorArr, RGBColor rGBColor) {
        setObject(new Polyline(simpleVectorArr, rGBColor));
    }

    public RGBColor getColor() {
        return ((Polyline) getObject()).getColor();
    }

    public int getLength() {
        return ((Polyline) getObject()).getLength();
    }

    public float getPercentage() {
        return ((Polyline) getObject()).getPercentage();
    }

    public int getTransparencyMode() {
        return ((Polyline) getObject()).getTransparencyMode();
    }

    public float getWidth() {
        return ((Polyline) getObject()).getWidth();
    }

    public boolean isVisible() {
        return ((Polyline) getObject()).isVisible();
    }

    public void setColor(RGBColor rGBColor) {
        ((Polyline) getObject()).setColor(rGBColor);
    }

    public void setPercentage(float f10) {
        ((Polyline) getObject()).setPercentage(f10);
    }

    public void setTransparencyMode(int i10) {
        ((Polyline) getObject()).setTransparencyMode(i10);
    }

    public void setVisible(boolean z10) {
        ((Polyline) getObject()).setVisible(z10);
    }

    public void setWidth(float f10) {
        ((Polyline) getObject()).setWidth(f10);
    }

    public void update(SimpleVector[] simpleVectorArr) {
        ((Polyline) getObject()).update(simpleVectorArr);
    }
}
