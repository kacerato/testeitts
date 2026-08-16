package Y8;

import JAVARuntime.SpatialObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
public class a {

    public static final Map<Field, C0800a> f29879a = new HashMap();

    public static final List<C0800a> f29880b = new SteppedArrayList();

    public static class C0800a {

        public Object f29881a;

        public Field f29882b;

        public C0800a(Object instance, Field field) {
            this.f29881a = instance;
            this.f29882b = field;
        }
    }

    public static void a(Object instance, List<Field> fields) {
        for (int i10 = 0; i10 < fields.size(); i10++) {
            Field field = fields.get(i10);
            C0800a c0800a = new C0800a(instance, field);
            f29880b.add(c0800a);
            f29879a.put(field, c0800a);
        }
    }

    public static void b(SpatialObject gameObject) {
        int i10 = 0;
        while (true) {
            List<C0800a> list = f29880b;
            if (i10 >= list.size()) {
                return;
            }
            C0800a c0800a = list.get(i10);
            Field field = c0800a.f29882b;
            Object obj = !Modifier.isStatic(field.getModifiers()) ? c0800a.f29881a : null;
            try {
                SpatialObject spatialObject = (SpatialObject) field.get(obj);
                if (spatialObject != null && spatialObject == gameObject) {
                    field.set(obj, null);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            i10++;
        }
    }

    public static void c(List<Field> fields) {
        for (int i10 = 0; i10 < fields.size(); i10++) {
            f29880b.remove(f29879a.remove(fields.get(i10)));
        }
    }
}
