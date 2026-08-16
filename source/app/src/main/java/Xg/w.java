package Xg;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class w {
    public static Map<String, o> a(A obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int e10 = obj.e();
        for (int i10 = 0; i10 < e10; i10++) {
            t i11 = obj.i(i10);
            if (i11.getNumFaces() > 0) {
                linkedHashMap.put(i11.getName(), x.g(obj, i11, null));
            }
        }
        return linkedHashMap;
    }

    public static Map<String, o> b(A obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int t10 = obj.t();
        for (int i10 = 0; i10 < t10; i10++) {
            t f10 = obj.f(i10);
            if (f10.getNumFaces() > 0) {
                linkedHashMap.put(f10.getName(), x.g(obj, f10, null));
            }
        }
        return linkedHashMap;
    }

    public static List<o> c(A obj, int maxNumVertices) {
        if (maxNumVertices >= 3) {
            return new v(maxNumVertices).g(obj);
        }
        throw new IllegalArgumentException("The given number of vertices must at least be 3");
    }
}
