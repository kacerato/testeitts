package W0;

import T0.A;
import W0.d;
import android.os.IBinder;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;

@C0.a
@A
public final class f<T> extends d.a {

    public final Object f27205e;

    public f(Object obj) {
        this.f27205e = obj;
    }

    @NonNull
    @C0.a
    public static <T> d l0(@NonNull T t10) {
        return new f(t10);
    }

    @NonNull
    @C0.a
    public static <T> T t(@NonNull d dVar) {
        if (dVar instanceof f) {
            return (T) ((f) dVar).f27205e;
        }
        IBinder asBinder = dVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i10 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i10++;
                field = field2;
            }
        }
        if (i10 != 1) {
            throw new IllegalArgumentException("Unexpected number of IObjectWrapper declared fields: " + declaredFields.length);
        }
        G0.A.r(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return (T) field.get(asBinder);
        } catch (IllegalAccessException e10) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e10);
        } catch (NullPointerException e11) {
            throw new IllegalArgumentException("Binder object is null.", e11);
        }
    }
}
