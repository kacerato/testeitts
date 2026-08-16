package P8;

import android.content.Context;
import com.itsmagic.engine.Engines.Utils.Variable;

public interface m {
    Class getCls();

    String getFullName();

    C5.b getInspector(Context context, k constructor, String tittle, q userPointer);

    boolean isRestorable();

    Object newInstance(q userPointer);

    Object restore(Variable variable, q userPointer);

    Variable save(String fieldName, Object value, q userPointer);
}
