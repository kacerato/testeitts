package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.IVertexController;
import com.threed.jpct.Mesh;
import com.threed.jpct.Object3D;

@BA.ShortName("JpctMesh")
public class JMesh extends AbsObjectWrapper<Mesh> {
    public static final boolean COMPRESS() {
        return true;
    }

    public static final boolean DONT_COMPRESS() {
        return false;
    }

    public static final int SERIALIZE_ALL() {
        return 0;
    }

    public static final int SERIALIZE_LOW_PRECISION() {
        return 2;
    }

    public static final int SERIALIZE_VERTICES_ONLY() {
        return 1;
    }

    public void Initialize(Object3D object3D) {
        setObject(object3D.getMesh());
    }

    public void Initialize2(Mesh mesh) {
        setObject(mesh);
    }

    public void applyVertexController() {
        ((Mesh) getObject()).applyVertexController();
    }

    public Mesh cloneMesh(boolean z10) {
        return ((Mesh) getObject()).cloneMesh(z10);
    }

    public void forceCompress() {
        ((Mesh) getObject()).compress();
    }

    public float[] getBoundingBox() {
        return ((Mesh) getObject()).getBoundingBox();
    }

    public int getTriangleCount() {
        return ((Mesh) getObject()).getTriangleCount();
    }

    public int getUniqueVertexCount() {
        return ((Mesh) getObject()).getUniqueVertexCount();
    }

    public int getVertexCount() {
        return ((Mesh) getObject()).getVertexCount();
    }

    public boolean isLocked() {
        return ((Mesh) getObject()).isLocked();
    }

    public void removeVertexController() {
        ((Mesh) getObject()).removeVertexController();
    }

    public void setLocked(boolean z10) {
        ((Mesh) getObject()).setLocked(z10);
    }

    public void setSerializeMethod(int i10) {
        ((Mesh) getObject()).setSerializeMethod(i10);
    }

    public void setVertexController(IVertexController iVertexController, boolean z10) {
        ((Mesh) getObject()).setVertexController(iVertexController, z10);
    }

    public void strip() {
        ((Mesh) getObject()).strip();
    }
}
