package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.RGBColor;

@BA.ShortName("JpctRGBColor")
public class JRGBColor extends AbsObjectWrapper<RGBColor> {
    public void Initialize() {
        setObject(new RGBColor());
    }

    public void Initialize2(int i10, int i11, int i12) {
        setObject(new RGBColor(i10, i11, i12));
    }

    public void Initialize3(int i10, int i11, int i12, int i13) {
        setObject(new RGBColor(i10, i11, i12, i13));
    }

    public int getARGB() {
        return ((RGBColor) getObject()).getARGB();
    }

    public int getAlpha() {
        return ((RGBColor) getObject()).getAlpha();
    }

    public int getBlue() {
        return ((RGBColor) getObject()).getBlue();
    }

    public int getGreen() {
        return ((RGBColor) getObject()).getGreen();
    }

    public float getNormalizedAlpha() {
        return ((RGBColor) getObject()).getNormalizedAlpha();
    }

    public float getNormalizedBlue() {
        return ((RGBColor) getObject()).getNormalizedBlue();
    }

    public float getNormalizedGreen() {
        return ((RGBColor) getObject()).getNormalizedGreen();
    }

    public float getNormalizedRed() {
        return ((RGBColor) getObject()).getNormalizedRed();
    }

    public int getRed() {
        return ((RGBColor) getObject()).getRed();
    }

    public void setTo(int i10, int i11, int i12, int i13) {
        ((RGBColor) getObject()).setTo(i10, i11, i12, i13);
    }
}
