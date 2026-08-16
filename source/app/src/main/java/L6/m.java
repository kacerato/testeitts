package L6;

import JAVARuntime.SpatialObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;

public final class m {

    public volatile List<K6.f> f11624a;

    public class a implements Comparator<K6.f> {
        public a() {
        }

        @Override
        public int compare(K6.f left, K6.f right) {
            int compare = Integer.compare(left.f10888c.length(), right.f10888c.length());
            if (compare != 0) {
                return compare;
            }
            String str = left.f10886a;
            if (str == null) {
                str = "";
            }
            String str2 = right.f10886a;
            return str.compareToIgnoreCase(str2 != null ? str2 : "");
        }
    }

    public final List<K6.f> a() {
        if (SpatialObject.class.getAnnotation(H6.g.class) != null) {
            return new SteppedArrayList();
        }
        SteppedArrayList<K6.f> steppedArrayList = new SteppedArrayList();
        for (Method method : SpatialObject.class.getDeclaredMethods()) {
            if (!method.isSynthetic() && !method.isBridge() && Modifier.isPublic(method.getModifiers()) && !Modifier.isStatic(method.getModifiers()) && method.getAnnotation(H6.g.class) == null) {
                SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                Class<?>[] parameterTypes = method.getParameterTypes();
                String str = "";
                int i10 = 0;
                boolean z10 = false;
                while (i10 < parameterTypes.length) {
                    Class<?> cls = parameterTypes[i10];
                    if (i10 > 0) {
                        str = str + ", ";
                    }
                    str = str + cls.getSimpleName();
                    steppedArrayList2.add(cls.getName());
                    i10++;
                    z10 = true;
                }
                String simpleName = method.getReturnType().getSimpleName();
                if (method.getReturnType() == Void.TYPE) {
                    simpleName = "void";
                }
                K6.f fVar = new K6.f(method.getName() + "(" + str + ") -> " + simpleName, method.getName());
                fVar.f10887b = method.getReturnType().getName();
                fVar.f10891f = "method";
                fVar.f10889d = "(" + str + ") -> " + simpleName;
                fVar.f10890e = "instance";
                fVar.f10896k = true;
                fVar.f10897l = z10;
                fVar.f10892g.addAll(steppedArrayList2);
                steppedArrayList.add(fVar);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (K6.f fVar2 : steppedArrayList) {
            String str2 = d(fVar2.f10886a) + "|" + d(fVar2.f10889d) + "|" + d(fVar2.f10890e);
            if (!linkedHashMap.containsKey(str2)) {
                linkedHashMap.put(str2, fVar2);
            }
        }
        return new SteppedArrayList(linkedHashMap.values());
    }

    public List<K6.f> b(String prefix) {
        String str;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (prefix != null && !prefix.isEmpty()) {
            for (K6.f fVar : c()) {
                if (fVar != null && (str = fVar.f10888c) != null && !str.isEmpty() && fVar.f10888c.regionMatches(true, 0, prefix, 0, prefix.length())) {
                    steppedArrayList.add(fVar);
                }
            }
            steppedArrayList.sort(new a());
        }
        return steppedArrayList;
    }

    public List<K6.f> c() {
        List<K6.f> list;
        List<K6.f> list2 = this.f11624a;
        if (list2 != null) {
            return list2;
        }
        synchronized (this) {
            try {
                if (this.f11624a == null) {
                    this.f11624a = a();
                }
                list = this.f11624a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return list;
    }

    public final String d(String value) {
        return value == null ? "" : value;
    }
}
