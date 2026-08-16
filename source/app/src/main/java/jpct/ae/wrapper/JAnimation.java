package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Animation;
import com.threed.jpct.Mesh;

@BA.ShortName("JpctAnimation")
public class JAnimation extends AbsObjectWrapper<Animation> {
    public void Initialize(int i10) {
        setObject(new Animation(i10));
    }

    public int KEYFRAMESONLY() {
        return 4;
    }

    public int LINEAR() {
        return 0;
    }

    public int USE_CLAMPING() {
        return 1;
    }

    public int USE_WRAPPING() {
        return 0;
    }

    public void addKeyFrame(Mesh mesh) {
        ((Animation) getObject()).addKeyFrame(mesh);
    }

    public int createSubSequence(String str) {
        return ((Animation) getObject()).createSubSequence(str);
    }

    public Mesh[] getKeyFrames() {
        return ((Animation) getObject()).getKeyFrames();
    }

    public String getName(int i10) {
        return ((Animation) getObject()).getName(i10);
    }

    public int getSequence(String str) {
        return ((Animation) getObject()).getSequence(str);
    }

    public int[] getSequenceBorders(int i10) {
        return ((Animation) getObject()).getSequenceBorders(i10);
    }

    public int getSequenceCount() {
        return ((Animation) getObject()).getSequenceCount();
    }

    public void remove(int i10) {
        ((Animation) getObject()).remove(i10);
    }

    public void setCaching(boolean z10) {
        ((Animation) getObject()).setCaching(z10);
    }

    public void setClampingMode(int i10) {
        ((Animation) getObject()).setClampingMode(i10);
    }

    public void setInterpolationMethod(int i10) {
        ((Animation) getObject()).setInterpolationMethod(i10);
    }

    public void strip() {
        ((Animation) getObject()).strip();
    }
}
