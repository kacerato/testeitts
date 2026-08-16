package P8;

import android.content.Context;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.lang.reflect.Field;

public interface i {
    C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer);

    C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer);

    C5.b getInspectorForList(Context context, d8.h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer);

    String getSimpleName(q userPointer);

    boolean isRestorable();

    boolean match(String className, q userPointer);

    Object newInstance(q userPointer);

    Object restore(Variable variable, q userPointer);

    Variable save(String fieldName, Object value, q userPointer);
}
