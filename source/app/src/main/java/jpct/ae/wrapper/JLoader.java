package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import anywheresoftware.b4a.objects.collections.List;
import com.threed.jpct.Loader;
import com.threed.jpct.Object3D;
import java.io.InputStream;

@BA.ShortName("JpcLoader")
public class JLoader extends AbsObjectWrapper<Loader> {
    public static List arrayToList(Object3D[] object3DArr) {
        List list = new List();
        list.Initialize();
        for (Object3D object3D : object3DArr) {
            list.Add(object3D);
        }
        return list;
    }

    public static void clearCache() {
        Loader.clearCache();
    }

    public static Object3D[] load3DS(InputStream inputStream, float f10) {
        return Loader.load3DS(inputStream, f10);
    }

    public static Object3D load3DSMerged(InputStream inputStream, float f10) {
        return Object3D.mergeAll(Loader.load3DS(inputStream, f10));
    }

    public static Object3D loadASC(InputStream inputStream, float f10, boolean z10) {
        return Loader.loadASC(inputStream, f10, z10);
    }

    public static Object3D loadMD2(BA ba2, InputStream inputStream, float f10) {
        return Loader.loadMD2(inputStream, f10);
    }

    public static Object3D[] loadOBJ(InputStream inputStream, InputStream inputStream2, float f10) {
        return Loader.loadOBJ(inputStream, inputStream2, f10);
    }

    public static Object3D loadOBJMerged(InputStream inputStream, InputStream inputStream2, float f10) {
        return Object3D.mergeAll(Loader.loadOBJ(inputStream, inputStream2, f10));
    }

    public static Object3D loadSerializedObject(InputStream inputStream) {
        return Loader.loadSerializedObject(inputStream);
    }

    public static Object3D[] loadSerializedObjectArray(InputStream inputStream) {
        return Loader.loadSerializedObjectArray(inputStream);
    }

    public static String loadTextFile(InputStream inputStream) {
        return Loader.loadTextFile(inputStream);
    }

    public static String[] readTextureNames3DS(InputStream inputStream) {
        return Loader.readTextureNames3DS(inputStream);
    }

    public static void setVertexOptimization(boolean z10) {
        Loader.setVertexOptimization(z10);
    }
}
