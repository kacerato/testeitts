package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Mesh;
import com.threed.jpct.Object3D;
import com.threed.jpct.OcTree;
import java.util.ArrayList;

@BA.ShortName("JpctOcTree")
public class JOcTree extends AbsObjectWrapper<OcTree> {
    public static final boolean COLLISION_DONT_USE() {
        return false;
    }

    public static final boolean COLLISION_USE() {
        return true;
    }

    public static final int MODE_NORMAL() {
        return 0;
    }

    public static final int MODE_OPTIMIZED() {
        return 1;
    }

    public static final boolean RENDERING_DONT_USE() {
        return false;
    }

    public static final boolean RENDERING_USE() {
        return true;
    }

    public void Initialize() {
        setObject(new OcTree());
    }

    public void Initialize2(Mesh mesh, int i10, int i11) {
        setObject(new OcTree(mesh, i10, i11));
    }

    public void Initialize3(Mesh mesh, int i10, int i11, int i12) {
        setObject(new OcTree(mesh, i10, i11, i12));
    }

    public void Initialize4(Object3D object3D, int i10, int i11) {
        setObject(new OcTree(object3D, i10, i11));
    }

    public void Initialize5(Object3D object3D, int i10, int i11, int i12) {
        setObject(new OcTree(object3D, i10, i11, i12));
    }

    public boolean getCollisionUse() {
        return ((OcTree) getObject()).getCollisionUse();
    }

    public ArrayList<?> getFilledLeafs() {
        return ((OcTree) getObject()).getFilledLeafs();
    }

    public float getRadiusMultiplier() {
        return ((OcTree) getObject()).getRadiusMultiplier();
    }

    public boolean getRenderingUse() {
        return ((OcTree) getObject()).getRenderingUse();
    }

    public boolean isOfOrderZero() {
        return ((OcTree) getObject()).isOfOrderZero();
    }

    public void setCollisionUse(boolean z10) {
        ((OcTree) getObject()).setCollisionUse(z10);
    }

    public void setRadiusMultiplier(float f10) {
        ((OcTree) getObject()).setRadiusMultiplier(f10);
    }

    public void setRenderingUse(boolean z10) {
        ((OcTree) getObject()).setRenderingUse(z10);
    }
}
