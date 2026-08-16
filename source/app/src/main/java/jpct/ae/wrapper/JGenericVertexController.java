package jpct.ae.wrapper;

import android.util.Log;
import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.SimpleVector;

@BA.ShortName("JpctVertexController")
public class JGenericVertexController extends AbsObjectWrapper<VertexController> {
    public static final boolean ALTER_SOURCE_MESH() {
        return true;
    }

    public static final int EVENT_APPLY() {
        return 1;
    }

    public static final int EVENT_CLEANUP() {
        return 3;
    }

    public static final int EVENT_SETUP() {
        return 2;
    }

    public static final boolean PRESERVE_SOURCE_MESH() {
        return false;
    }

    public void Initialize(BA ba2, String str) {
        if (ba2.subExists((String.valueOf(str) + "_VertexController").toLowerCase(BA.cul))) {
            setObject(new VertexController(ba2, this, str));
            return;
        }
        Log.e("JPCT", "Sub " + str + "_VertexController - Doesn't exist!");
    }

    @BA.Hide
    public void apply() {
        ((VertexController) getObject()).apply();
    }

    @BA.Hide
    public void cleanup() {
        ((VertexController) getObject()).cleanup();
    }

    public final SimpleVector[] getDestinationMesh() {
        return ((VertexController) getObject()).getDestinationMesh();
    }

    public final SimpleVector[] getDestinationNormals() {
        return ((VertexController) getObject()).getDestinationNormals();
    }

    public final int getMeshSize() {
        return ((VertexController) getObject()).getMeshSize();
    }

    public int[] getPolygonIDs(int i10, int i11) {
        return ((VertexController) getObject()).getPolygonIDs(i10, i11);
    }

    public final SimpleVector[] getSourceMesh() {
        return ((VertexController) getObject()).getSourceMesh();
    }

    public final SimpleVector[] getSourceNormals() {
        return ((VertexController) getObject()).getSourceNormals();
    }

    public void refreshMeshData() {
        ((VertexController) getObject()).refreshMeshData();
    }

    @BA.Hide
    public boolean setup() {
        return ((VertexController) getObject()).setup();
    }
}
