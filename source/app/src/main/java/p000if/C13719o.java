package p000if;

import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

public final class C13719o {

    public static final Logger f92139a = Logger.getLogger(C13719o.class.getName());

    public static final boolean f92140b = false;

    public static void a(Spatial spatial) {
        LightList localLightList = spatial.getLocalLightList();
        int size = localLightList.size();
        if (size > 0) {
            Light[] lightArr = new Light[size];
            for (int i10 = 0; i10 < size; i10++) {
                lightArr[i10] = localLightList.get(i10);
            }
            for (int i11 = 0; i11 < size; i11++) {
                spatial.removeLight(lightArr[i11]);
            }
        }
    }

    public static <T extends Light> int b(Spatial spatial, Class<T> cls) {
        int i10 = 0;
        if (spatial != null) {
            LightList localLightList = spatial.getLocalLightList();
            int size = localLightList.size();
            int i11 = 0;
            while (i10 < size) {
                if (cls.isAssignableFrom(localLightList.get(i10).getClass())) {
                    i11++;
                }
                i10++;
            }
            i10 = i11;
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                i10 += b(it.next(), cls);
            }
        }
        return i10;
    }

    public static String c(Light light) {
        String simpleName = light.getClass().getSimpleName();
        if (simpleName.startsWith("Light")) {
            simpleName = C13724t.v(simpleName, "Light");
        }
        if (simpleName.endsWith("Light")) {
            simpleName = C13724t.w(simpleName, "Light");
        }
        return simpleName.length() > 5 ? simpleName.substring(0, 3) : simpleName;
    }

    public static int d(Light light, Spatial spatial) {
        C13702E.t(light, "light");
        LightList localLightList = spatial.getLocalLightList();
        int size = localLightList.size();
        int i10 = -1;
        for (int i11 = 0; i11 < size; i11++) {
            if (localLightList.get(i11) == light) {
                i10 = i11;
            }
        }
        return i10;
    }

    public static Light e(String str, Spatial spatial) {
        C13702E.t(str, "light name");
        Light p10 = C13723s.p(spatial, str);
        if (p10 != null) {
            return p10;
        }
        if (!(spatial instanceof Node)) {
            return null;
        }
        Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
        while (it.hasNext()) {
            Light e10 = e(str, it.next());
            if (e10 != null) {
                return e10;
            }
        }
        return null;
    }

    public static Spatial f(Light light, Spatial spatial) {
        C13702E.t(light, "light");
        C13702E.t(spatial, "subtree");
        if (d(light, spatial) != -1) {
            return spatial;
        }
        Spatial spatial2 = null;
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext() && (spatial2 = f(light, it.next())) == null) {
            }
        }
        return spatial2;
    }

    public static <T extends Light> List<T> g(Spatial spatial, Class<T> cls, List<T> list) {
        C13702E.t(spatial, "subtree");
        List list2 = list;
        if (list == null) {
            list2 = new ArrayList(4);
        }
        LightList localLightList = spatial.getLocalLightList();
        int size = localLightList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Light light = localLightList.get(i10);
            if (cls.isAssignableFrom(light.getClass()) && !list2.contains(light)) {
                list2.add(light);
            }
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                g(it.next(), cls, list2);
            }
        }
        return (List<T>) list2;
    }
}
