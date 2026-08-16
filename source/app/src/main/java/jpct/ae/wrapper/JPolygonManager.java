package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Object3D;
import com.threed.jpct.PolygonManager;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.TextureInfo;

@BA.ShortName("JpctPolygonManager")
public class JPolygonManager extends AbsObjectWrapper<PolygonManager> {
    public void Initialize(Object3D object3D) {
        setObject(object3D.getPolygonManager());
    }

    public void addTexture(int i10, int i11, int i12) {
        ((PolygonManager) getObject()).addTexture(i10, i11, i12);
    }

    public int getMaxPolygonID() {
        return ((PolygonManager) getObject()).getMaxPolygonID();
    }

    public int getPolygonTexture(int i10) {
        return ((PolygonManager) getObject()).getPolygonTexture(i10);
    }

    public int[] getPolygonTextures2(int i10) {
        return ((PolygonManager) getObject()).getPolygonTextures(i10);
    }

    public SimpleVector getTextureUV(int i10, int i11) {
        return ((PolygonManager) getObject()).getTextureUV(i10, i11);
    }

    public SimpleVector getTransformedNormal(int i10) {
        return ((PolygonManager) getObject()).getTransformedNormal(i10);
    }

    public SimpleVector getTransformedVertex(int i10, int i11) {
        return ((PolygonManager) getObject()).getTransformedVertex(i10, i11);
    }

    public void setPolygonTexture(int i10, int i11) {
        ((PolygonManager) getObject()).setPolygonTexture(i10, i11);
    }

    public void setVertexAlpha(int i10, int i11, float f10) {
        ((PolygonManager) getObject()).setVertexAlpha(i10, i11, f10);
    }

    public void setPolygonTexture(int i10, TextureInfo textureInfo) {
        ((PolygonManager) getObject()).setPolygonTexture(i10, textureInfo);
    }
}
